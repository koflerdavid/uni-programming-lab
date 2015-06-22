var Renderer = (function (THREE, Detector, Particles, Shaders, Stats, undefined) {
    if ( ! Detector.webgl ) Detector.addGetWebGLMessage();
    THREE.ImageUtils.crossOrigin = '';

    var container, stats;

    var camera, controls, scene, renderer;

    var mouseX = 0, mouseY = 0;

    var windowHalfX = window.innerWidth / 2;
    var windowHalfY = window.innerHeight / 2;

    var globalScale = 50;
    var particles = null;
    var transferGroup = null;
    var updateListener = null;
    var teamLocs = [];

    function generateSphere(){
        var geometry = new THREE.SphereGeometry( globalScale-0.2, 32, 32 );
        var material = new THREE.MeshBasicMaterial();
        material.map = THREE.ImageUtils.loadTexture('img/earth.jpg');
        material.map = THREE.ImageUtils.loadTexture('img/earth.png');
        material.map = THREE.ImageUtils.loadTexture('img/world.jpg');
        var sphere = new THREE.Mesh( geometry, material );
        return sphere;
    }

    function generateAtmosphere(){
        var geometry = new THREE.SphereGeometry( globalScale*1.01, 32, 32 );
        var shader = Shaders.atmosphere;
        var uniforms = THREE.UniformsUtils.clone(shader.uniforms);
        var material = new THREE.ShaderMaterial({
            uniforms:uniforms,
            vertexShader:shader.vertexShader,
            fragmentShader:shader.fragmentShader,
            depthWrite:false
        });
        material.transparent = true;
        var sphere = new THREE.Mesh( geometry, material );
        return sphere;
    }

    function latlongToXYZ(latlong, scale){
        scale = scale || globalScale;
        var longitude = -latlong[0] * Math.PI/180 + Math.PI;
        var latitude = latlong[1] * Math.PI/180 + Math.PI;
        var x = Math.cos( longitude ) * Math.cos( latitude ) * scale;
        var y = Math.sin( latitude ) * -scale;
        var z = Math.sin( longitude ) * Math.cos( latitude ) * scale;
        return new THREE.Vector3(x,y,z);
    }

    function generateBorders(countries) {
        var material = new THREE.LineBasicMaterial({color: 0xffffff});

        var geometry = new THREE.Geometry();
        var verts = geometry.vertices;
        var ctrs = countries;

        for(var i=0;i<ctrs.length;i++){
            var ctr = ctrs[i];
            var polys = ctr.polys;
            for(var k=0;k<polys.length;k++){
                var latlongs = polys[k];
                var last = latlongToXYZ(latlongs[latlongs.length-1]);
                for(var j=0;j<latlongs.length;j++){
                    var vec = latlongToXYZ(latlongs[j]);
                    verts.push(last);
                    verts.push(vec);
                    last = vec;
                }
            }
        }
        return new THREE.Line( geometry, material, THREE.LinePieces );
    }

    function midPoint(from,to){
        return [(from[0]+to[0])/2,(from[1]+to[1])/2];
    }

    function slerp(from,to,fac){
        var northpole = new THREE.Vector3(0,1,0);
        from = from.clone();
        from.normalize();
        to = to.clone();
        to = to.normalize();
        var quatFrom = new THREE.Quaternion();
        quatFrom.setFromUnitVectors(northpole,from);
        var quatTo = new THREE.Quaternion();
        quatTo.setFromUnitVectors(northpole,to);
        var slerpedQuat = quatFrom;
        slerpedQuat.slerp(quatTo,fac);
        northpole.applyQuaternion(slerpedQuat);
        return northpole;
    }

    function merge(p1,p2){
        var all = [];
        for(var i=0;i<p1.length;i++)
            all.push(p1[i]);
        for(var i=0;i<p2.length;i++)
            all.push(p2[i]);
        return all;
    }

    function generateTransfers(scene,transfers) {
        var curves = [];
        for(var i=0;i<transfers.length;i++){
            var transfer = transfers[i];
            var from = latlongToXYZ(transfer.from.pos);
            var to = latlongToXYZ(transfer.to.pos);
            var normal = from.clone();
            var col = transfer.isIngoing?0x0000ff:0xff0000;
            normal.sub(to);
            var mid = slerp(from,to,0.5);
            mid.multiplyScalar(globalScale*(1.0+(normal.length()/globalScale)/5));
            var anch1 = mid.clone();
            anch1.add(normal.clone().multiplyScalar(0.5));
            var anch2 = mid.clone();
            anch2.add(normal.clone().multiplyScalar(-0.5));

            var curve = new THREE.CubicBezierCurve3(from,from,anch1,mid);
            var curve2 = new THREE.CubicBezierCurve3(mid,anch2,to,to);
            var geometry = new THREE.Geometry();
            geometry.vertices = merge(curve.getPoints( 20 ),curve2.getPoints(20));
            curves.push({
                points:geometry.vertices,
                strength:Math.max(1,transfer.strength*curve.getLength()/10),
                length:curve.getLength()*2,
                color:col
            });
            var material = new THREE.LineBasicMaterial( {
                color : col,
                opacity:0.5,
                transparent:true,
                //linewidth: Math.random()*5,
                depthWrite:true });
            //material.color.setRGB(Math.random(),Math.random(),Math.random());
            var curveObject = new THREE.Line( geometry, material );
            scene.add(curveObject);
        }
        return curves;
    }

    function init(container) {

        camera = new THREE.PerspectiveCamera( 40, window.innerWidth / window.innerHeight, 1, 1000 );
        camera.position.z = globalScale*4;
        controls = new THREE.OrbitControls(camera,container);
        controls.rotateSpeed = 0.5;
        controls.noPan = true;
        controls.minDistance = globalScale*1.1;
        controls.maxDistance = globalScale*4;
        controls.zoomInfluencesRotateSpeed = true;

        scene = new THREE.Scene();
        scene.add(generateSphere());
        scene.add(generateAtmosphere());

        renderer = new THREE.WebGLRenderer( { antialias: true } );
        renderer.setClearColor( 0x111111 );
        renderer.setPixelRatio( window.devicePixelRatio );
        renderer.setSize( window.innerWidth, window.innerHeight );
        container.appendChild( renderer.domElement );

        stats = new Stats();
        stats.domElement.style.position = 'absolute';
        stats.domElement.style.top = '0px';
        //container.appendChild( stats.domElement );

        window.addEventListener( 'resize', onWindowResize, false );
    }

    function onWindowResize() {
        windowHalfX = window.innerWidth / 2;
        windowHalfY = window.innerHeight / 2;

        camera.aspect = window.innerWidth / window.innerHeight;
        camera.updateProjectionMatrix();

        renderer.setSize( window.innerWidth, window.innerHeight );
    }

    function animate() {
        requestAnimationFrame( animate );
        if(particles!=null)
            particles.update();
        controls.update();
        renderer.render( scene, camera );
        updateTeamLocations();
        stats.update();
    }

    function setTeamLocs(teams){
        teamLocs = [];
        Object.keys(teams).forEach(function(t){
            teamLocs.push({
                name:t,
                uid:teams[t].uid,
                pos:[0,0],
                realpos:latlongToXYZ(teams[t].pos),
                visible:true
            });
        });
    }

    function initRumours(rumours){
        var teams = {};
        rumours.forEach(function(rumour){
            rumour.teams.forEach(function(team){
                teams[team.name] = team;
            });
        });
        setTeamLocs(teams);
    }
    function initTeamLocations(overlays,transfers){
        var teams = {};
        if(overlays)
            overlays.forEach(function(t){
                teams[t.name] = t;
            });
        transfers.forEach(function(t){
            teams[t.from.name] = t.from;
            teams[t.to.name] = t.to;
        });
        setTeamLocs(teams);
    }
    function updateTeamLocations(){
        var tmp = new THREE.Vector3();
        var camloc = new THREE.Vector3();
        camloc.copy(camera.position).normalize();
        teamLocs.forEach(function(t){
            tmp.copy(t.realpos).normalize();
            if(tmp.dot(camloc)<0.5){
                t.visible = false;
                return;
            }
            t.visible = true;
            tmp.copy(t.realpos);
            tmp.project(camera);
            tmp.x = (tmp.x*windowHalfX)+windowHalfX;
            tmp.y = -(tmp.y*windowHalfY)+windowHalfY;
            t.pos[0]=tmp.x;
            t.pos[1]=tmp.y;
        });
        if(updateListener!=null)
            updateListener();
    }

    return function(domElement){
        var self = this;
        self.updateAll = function(updListener){
            if(transferGroup!=null)
                scene.remove(transferGroup);
            transferGroup = new THREE.Group();
            scene.add(transferGroup);
            updateListener = updListener;
            return transferGroup;
        };
        self.updateTransfers = function(overlays,transfers,updListener){
            var newgroup = self.updateAll(updListener);
            var curves = generateTransfers(newgroup,transfers);
            particles = new Particles(newgroup);
            particles.showCurves(curves);
            initTeamLocations(overlays,transfers);
        };
        self.showRumours = function(rumours,updListener){
            var newgroup = self.updateAll(updListener);
            var locs = [];
            rumours.forEach(function(rumour){
                rumour.teams.forEach(function(team){
                    locs.push(latlongToXYZ(team.pos));
                });
            });
            particles = new Particles(newgroup);
            particles.showLocs(locs);
            initRumours(rumours);
        }
        self.getTeamLocations = function(){
            return teamLocs;
        };
        self.setCountries = function(countries){
            scene.add(generateBorders(countries));
        };
        init(domElement);
        animate();
    };
})(THREE, Detector, Particles, Shaders, Stats);
