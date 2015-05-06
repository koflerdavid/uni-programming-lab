var Globe = (function(){
    var glrenderer = null;
    var overlayrenderer = null;
    function init(glDom,overlayDom){
        overlayrenderer = new Overlay(overlayDom);
        glrenderer = new Renderer(glDom);
    }
    function handleUpdate(){
        var locations = glrenderer.getTeamLocations();
        overlayrenderer.updateTeamLocations(locations);
    }

    return function(glDom, overlayDom){
        init(glDom,overlayDom);
        this.updateTransfers = function(overlays,transfers){
            glrenderer.updateTransfers(overlays,transfers,handleUpdate);
        }
        this.setOnSelect = function(onSelect){
            overlayrenderer.setOnSelect(onSelect);
        }
        this.setCountries = function(countries){
            glrenderer.setCountries(countries);
        }
    }

})();
