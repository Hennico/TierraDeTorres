/// cargar_esenario()
ini_open(working_directory+"esenario"+string(global.pisoActual)+".save");
if (!ini_key_exists("def","def")) {
    ini_close();
    return false;
}
var esenario = ini_read_string("def","def","");
ini_close();

var esenarioGrid = ds_grid_create(0,0);
ds_grid_read(esenarioGrid,esenario);

var esenario_count = ds_grid_width(esenarioGrid);

for (var idx = 0; idx < esenario_count; idx++) {
    var xx  = esenarioGrid[# idx, EsenarioAtrib.x];
    var yy  = esenarioGrid[# idx, EsenarioAtrib.y];
    var obj = esenarioGrid[# idx, EsenarioAtrib.object_index];
    
    with (instance_create(xx,yy,obj)) {
        image_index = esenarioGrid[# idx, EsenarioAtrib.image_index];
        image_angle = esenarioGrid[# idx, EsenarioAtrib.image_angle];
        loadData    = esenarioGrid[# idx, EsenarioAtrib.loadData];
        event_user(EsenarioAtrib.ev_cargarLoadData);
    }
}
ds_grid_destroy(esenarioGrid);

return true;
