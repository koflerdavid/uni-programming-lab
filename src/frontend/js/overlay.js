var Overlay = function(dom){
    var self = this;
    self.onSelect = null;
    self.dom = dom;
    this.createFunction = function(loc){
        return function(){
            self.onSelect({type:'Teams',name:loc.name});
        }
    }
    this.updateTeamLocations = function(locs){
        while(dom.children().length<locs.length){
            self.dom.append('<div class="marker"><div class="markerchild">asd</div></div>');
        }
        while(self.dom.children().length>locs.length){
            self.dom.children()[0].remove();
        }
        var domChildren = self.dom.children();
        for(var i=0;i<locs.length;i++){
            var child = domChildren[i];
            var loc = locs[i];

            child.children[0].innerHTML = loc.name;
            child.onclick = self.createFunction(loc);
            child.style.left = loc.pos[0]+"px";
            child.style.top = loc.pos[1]+"px";
            child.style.display = loc.visible?"inline":"none";
        };
    }
    this.setOnSelect = function(onSelect){
        self.onSelect = onSelect;
    }
}
