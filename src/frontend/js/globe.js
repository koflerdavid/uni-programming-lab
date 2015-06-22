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
        this.clear = function(){
            overlayrenderer.reset();
            glrenderer.updateTransfers(null,[],handleUpdate);
        }
        this.updateTransfers = function(overlays,transfers){
            overlayrenderer.reset();
            glrenderer.updateTransfers(overlays,transfers,handleUpdate);
        }
        this.showTwitterRumours = function(rumours){
            overlayrenderer.reset();
            glrenderer.showTwitterRumours(rumours,handleUpdate);
        }
        this.showTransferRumours = function(rumours){
            overlayrenderer.reset();
            glrenderer.showTransferRumours(rumours,handleUpdate);
        }
        this.setOnSelect = function(onSelect){
            overlayrenderer.setOnSelect(onSelect);
        }
        this.setCountries = function(countries){
            glrenderer.setCountries(countries);
        }
    }

})();
