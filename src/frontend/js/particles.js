var Particles = function(scene,curves) { 
    var self = this;
    self.scene = scene;
    self.curves = curves;
    self.init = function(){
        var material = new THREE.PointCloudMaterial({
            color: 0xff0000,
            size:5,
            transparent:true,
            alphaTest:0.01,
            depthWrite:false,
            map:THREE.ImageUtils.loadTexture('img/particle.png')});
        var geometry = new THREE.Geometry();
        var verts = geometry.vertices;
        self.vertLocs = [];
        self.curveLengths = [];
        for(var i=0;i<self.curves.length;i++){
            verts.push(self.curves[i][0]);
            var length = 0;
            for(var j=0;j<self.curves[i].length-1;j++)
                length+=self.curves[i][j].distanceTo(self.curves[i][j+1]);
            self.curveLengths.push(length);
            self.vertLocs.push(Math.random()*length);
        }
        self.pointCloud = new THREE.PointCloud( geometry, material);
        self.scene.add(self.pointCloud);
    }
    self.update = function() {
        var verts = self.pointCloud.geometry.vertices;
        for(var i=0;i<self.curves.length;i++){
            self.vertLocs[i]+=self.curveLengths[i]/500;
            var currentCurveLoc = 0;
            var distance =0;
            var lastDistance = 0;
            while(currentCurveLoc<self.curves[i].length-1){
                lastDistance = self.curves[i][currentCurveLoc].distanceTo(self.curves[i][currentCurveLoc+1]);
                distance+=lastDistance;
                if(distance>=self.vertLocs[i])
                    break;
                currentCurveLoc+=1;
            }
            if(currentCurveLoc>=self.curves[i].length-1){
                self.vertLocs[i] = 0;
                continue;
            }
            var distRemaining = distance-self.vertLocs[i];
            var alpha = lastDistance==0?0:1-distRemaining/lastDistance;
            verts[i] = self.curves[i][currentCurveLoc].clone().lerp(self.curves[i][currentCurveLoc+1],alpha);
        }
        self.pointCloud.geometry.verticesNeedUpdate = true;
    }
    self.init();
};
