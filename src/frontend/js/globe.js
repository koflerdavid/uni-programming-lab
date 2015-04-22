var Globe = (function(){
    var glrenderer = null;
    var overlayrenderer = null;
    function init(countries,glDom,overlayDom){
        overlayrenderer = new Overlay(overlayDom);
        glrenderer = new Renderer(countries,glDom);
    }
    function handleUpdate(){
        var locations = glrenderer.getTeamLocations();
        overlayrenderer.updateTeamLocations(locations);
    }

    return function(countries, glDom, overlayDom){
        init(countries,glDom,overlayDom);
        this.updateTransfers = function(transfers){
            glrenderer.updateTransfers(transfers,handleUpdate);
        }
        this.setOnSelect = function(onSelect){
            overlayrenderer.setOnSelect(onSelect);
        }
    }

})();
