var Particles = function(scene) { 
    var self = this;
    self.scene = scene;
    self.curves = null;
    self.locs = null;
    self.particles = [];
    self.showCurves = function(curves){
        self.curves = curves;
        self.init();
    }
    self.showLocs = function(locs){
        self.locs = locs;
        self.init();
    }
    self.getMaterial = function(){
        var shader = Shaders.particles;
        var uniforms = {
            texture: {type:'t', value: THREE.ImageUtils.loadTexture('img/particle2.png')}
        };
        var attributes = {
            customColor: { type: 'c', value:[] }
        };
        var shmaterial = new THREE.ShaderMaterial({
            attributes: attributes,
            uniforms: uniforms,
            vertexShader:shader.vertexShader,
            fragmentShader:shader.fragmentShader,
            blending: THREE.AdditiveBlending,
            depthWrite:false,
            transparent:true,
        });
        return shmaterial;
    }
    self.getLocGeom = function(attributes){
        var geometry = new THREE.Geometry();
        var verts = geometry.vertices;
        for(var i=0;i<self.locs.length;i++){
            var loc = self.locs[i];
            var col = new THREE.Color(1,1,1);
            verts.push(loc);
            attributes.customColor.value.push(col);
        }
        return geometry;
    }
    self.getCurveGeom = function(attributes){
        var geometry = new THREE.Geometry();
        var verts = geometry.vertices;
        for(var i=0;i<self.curves.length;i++){
            var curve = self.curves[i];
            var length = curve.length;
            var offset = Math.random()*length;
            var col = new THREE.Color(curve.color);
            for(var j=0;j<curve.strength;j++){
                verts.push(curve.points[0]);
                attributes.customColor.value.push(col);
                self.particles.push({
                    curveIndex:i,
                    position:((j/curve.strength)*length+offset)%length
                });
            }
        }
        return geometry;
    }
    self.init = function(){
        var mat = self.getMaterial();
        var attributes = mat.attributes;
        var geom = self.curves?self.getCurveGeom(attributes):self.getLocGeom(attributes)
        self.pointCloud = new THREE.PointCloud(geom, mat);
        self.scene.add(self.pointCloud);
    }
    self.update = function() {
        if(!self.curves)
            return;
        var verts = self.pointCloud.geometry.vertices;
        for(var i=0;i<self.particles.length;i++){
            var p = self.particles[i];
            var curve = self.curves[p.curveIndex];
            var points = curve.points;
            p.position+=curve.length/500;
            var currentCurveLoc = 0;
            var distance =0;
            var lastDistance = 0;
            while(currentCurveLoc<points.length-1){
                lastDistance = points[currentCurveLoc].distanceTo(points[currentCurveLoc+1]);
                distance+=lastDistance;
                if(distance>=p.position)
                    break;
                currentCurveLoc+=1;
            }
            if(currentCurveLoc>=points.length-1){
                p.position = 0;
                continue;
            }
            var distRemaining = distance-p.position;
            var alpha = lastDistance==0?0:1-distRemaining/lastDistance;
            verts[i] = points[currentCurveLoc].clone().lerp(points[currentCurveLoc+1],alpha);
        }
        self.pointCloud.geometry.verticesNeedUpdate = true;
    }
};
