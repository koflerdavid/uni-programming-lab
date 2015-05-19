var Overlay = function(dom){
    var self = this;
    self.onSelect = null;
    self.dom = dom;
    this.overlays = {};
    this.createFunction = function(loc){
        return function(){
            self.onSelect({type:'Teams',uid:loc.uid});
        }
    }
    this.reset = function(){
        this.overlays = {};
        self.dom.empty();
    }
    this.updateTeamLocations = function(locs){
        var domChildren = self.dom.children();
        var occ = {};
        var occdistx = 100;
        var occdisty = 50;
        for(var i=0;i<locs.length;i++){
            var loc = locs[i];
            if(this.overlays[loc.name]===undefined){
                var el = $('<div class="marker"><div class="markerchild">asd</div></div>');
                self.dom.append(el);
                var child = el.get()[0];
                this.overlays[loc.name] = child;
                child.style.zIndex = 1000-i;
                child.children[0].innerHTML = loc.name;
                child.onclick = self.createFunction(loc);
            }
            var child = this.overlays[loc.name];
            if(loc.visible){
                var x = loc.pos[0];
                var y = loc.pos[1];
                var occpos = ((x/occdistx)|0)+((y/occdisty)|0)*1000;
                if(x>0 && y>0 && occ[occpos]===undefined){
                    occ[occpos] = true;
                    occ[occpos-1] = true;
                    occ[occpos+1] = true;
                    occ[occpos+1000] = true;
                    occ[occpos-1000] = true;
                    child.style.left = x+"px";
                    child.style.top = y+"px";
                    child.style.display = "inline";
                }else
                    child.style.display = "none";
            }else
                child.style.display = "none";
        };
    }
    this.setOnSelect = function(onSelect){
        self.onSelect = onSelect;
    }
}
