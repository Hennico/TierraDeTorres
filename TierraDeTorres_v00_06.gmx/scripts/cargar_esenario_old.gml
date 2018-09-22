/// cargar_esenario_old()
ini_open("esenario"+string(global.pisoActual)+".save");
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
    var loadData = esenarioGrid[# idx, EsenarioAtrib.loadData];
    
    with (instance_create_ext(xx,yy,obj,loadData)) {
        image_index = esenarioGrid[# idx, EsenarioAtrib.image_index];
        image_angle = esenarioGrid[# idx, EsenarioAtrib.image_angle];
    }
}
ds_grid_destroy(esenarioGrid);

with (obj_oscuridad) { event_user(0); }
scr_agregarEfectoParedes(background3,-1);
return true;
