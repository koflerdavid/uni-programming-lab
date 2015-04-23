var Particles = function(scene,curves) { 
    var self = this;
    self.scene = scene;
    self.curves = curves;
    self.particles = [];
    self.init = function(){
        var material = new THREE.PointCloudMaterial({
            color: 0xff0000,
            size:4,
            blending: THREE.AdditiveBlending,
            transparent:true,
            depthWrite:false,
            map:THREE.ImageUtils.loadTexture('img/particle2.png')});
        var geometry = new THREE.Geometry();
        var verts = geometry.vertices;
        for(var i=0;i<self.curves.length;i++){
            var curve = self.curves[i];
            var length = curve.length;
            var offset = Math.random()*length;
            for(var j=0;j<curve.strength;j++){
                verts.push(curve.points[0]);
                self.particles.push({
                    curveIndex:i,
                    position:((j/curve.strength)*length+offset)%length
                });
            }
        }
        self.pointCloud = new THREE.PointCloud( geometry, material);
        self.scene.add(self.pointCloud);
    }
    self.update = function() {
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
    self.init();
};
