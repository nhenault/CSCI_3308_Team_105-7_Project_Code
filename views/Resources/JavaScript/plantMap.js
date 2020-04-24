var countries = {
    'gl':{'name':'Greenland', 'route':'../Resources/Images/_.jpg', 'plant':'Dwarf fireweed (Chamerion latifolium)', 'info':'_'},
    'cu':{'name':'Cuba', 'route':'../Resources/Images/_.jpg', 'plant':'White Ginger (Hedychium coronarium)', 'info':'_'},
    'uy':{'name':'Uruguay', 'route':'../Resources/Images/___.jpg', 'plant':'Ceibo (Erythrina crista-galli)', 'info':'_'},
    'mg':{'name':'Madagascar', 'route':'../Resources/Images/___.jpg', 'plant':'Poinciana (Delonix regia)', 'info':'_'},
    'au':{'name':'Australia', 'route':'../Resources/Images/___.jpg', 'plant':'Golden Wattle (Acacia pycnantha)', 'info':'_'},
    'dz':{'name':'Algeria', 'route':'../Resources/Images/___.jpg', 'plant':'Iris Tectorum', 'info':'_'},
    'tr':{'name':'Turkey', 'route':'../Resources/Images/___.jpg', 'plant':'Tulipa', 'info':'_'},
    'mn':{'name':'Mongolia', 'route':'../Resources/Images/___.jpg', 'plant':'Scabiosa Butterfly Blue', 'info':'_'}
}

$(document).ready(function() {
    //prepare map svg attributes

    for(id in countries){
        if(countries.hasOwnProperty(id)){
            //fills each country with color to indicate there is plant info there
            $('#'+id).css('fill', "#4FE6E8");
            let aText = "The national flower of "+ countries[id].name + " is the " + countries[id].plant + '.';
            $('#'+id).click(function(){
                //after several failed attempts at getting modals to work, I'm sufficing with a simple alert to show proof of concept
                alert(aText);
                // $('#modal' + id).modal('show');
            });
        }
    }
});
