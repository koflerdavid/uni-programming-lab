if ( ! Detector.webgl ) Detector.addGetWebGLMessage();
THREE.ImageUtils.crossOrigin = '';

var container, stats;

var camera, controls, scene, renderer;

var mouseX = 0, mouseY = 0;

var windowHalfX = window.innerWidth / 2;
var windowHalfY = window.innerHeight / 2;

var globalScale = 50;

init();
animate();

function generateSphere(){
    var geometry = new THREE.SphereGeometry( globalScale-0.2, 32, 32 );
    var material = new THREE.MeshBasicMaterial();
    //material.map = THREE.ImageUtils.loadTexture('img/earth.jpg');
    material.map = THREE.ImageUtils.loadTexture('img/earth.png');
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

function generateBorders() {
    var material = new THREE.LineBasicMaterial({color: 0xffffff});

    var geometry = new THREE.Geometry();
    var verts = geometry.vertices;
    var ctrs = GLOBALDATA.countries;

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
    return  new THREE.Line( geometry, material, THREE.LinePieces );
}

function generateCenters() {
    var material = new THREE.PointCloudMaterial({color: 0xffffff});
    var geometry = new THREE.Geometry();
    var verts = geometry.vertices;
    var ctrs = GLOBALDATA.countries;
    for(var i=0;i<ctrs.length;i++){
        var vec = latlongToXYZ(ctrs[i].center);
        verts.push(vec);
    }
    return  new THREE.PointCloud( geometry, material);
}

function midPoint(from,to){
    return [(from[0]+to[0])/2,(from[1]+to[1])/2];
}

function generateTransfers(scene) {
    var transfers = GLOBALDATA.transfers;
    for(var i=0;i<transfers.length;i++){
        var transfer = transfers[i];
        var from = latlongToXYZ(transfer[0]);
        var mid  = latlongToXYZ(midPoint(transfer[0],transfer[1]),globalScale*2);
        var to = latlongToXYZ(transfer[1]);
        var curve = new THREE.QuadraticBezierCurve3(from,mid,to);
        var geometry = new THREE.Geometry();
        geometry.vertices = curve.getPoints( 50 );
        var material = new THREE.LineBasicMaterial( { color : 0xff0000 , linewidth:5});
        var curveObject = new THREE.Line( geometry, material);
        scene.add(curveObject);
    }
}

function addToScene(scene) {
    scene.add(generateBorders());
    scene.add(generateSphere());
    scene.add(generateCenters());
    generateTransfers(scene);
}

function init() {
    container = document.getElementById( 'container' );

    camera = new THREE.PerspectiveCamera( 60, window.innerWidth / window.innerHeight, 1, 1000 );
    camera.position.z = 100;
    controls = new THREE.OrbitControls(camera);
    controls.rotateSpeed = 0.3;
    controls.noPan = true;

    scene = new THREE.Scene();

    addToScene(scene);

    renderer = new THREE.WebGLRenderer( { antialias: true } );
    renderer.setClearColor( 0xffffff );
    renderer.setPixelRatio( window.devicePixelRatio );
    renderer.setSize( window.innerWidth, window.innerHeight );
    container.appendChild( renderer.domElement );

    stats = new Stats();
    stats.domElement.style.position = 'absolute';
    stats.domElement.style.top = '0px';
    container.appendChild( stats.domElement );

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

    controls.update();
    renderer.render( scene, camera );
    stats.update();
}

