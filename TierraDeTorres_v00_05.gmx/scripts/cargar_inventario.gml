/// cargar_inventario()
ini_open(working_directory+"\inventario.save");
if (!ini_key_exists("def","def")) {
    ini_close();
    return false;
}
var inventario = ini_read_string("def","def","");
ini_close();

var inventarioGrid = ds_grid_create(0,0);
ds_grid_read(inventarioGrid, inventario);

var inventario_count = ds_grid_width(inventarioGrid);

with (obj_slotInventario) {
    var idx = posicion;
    var xx  = inventarioGrid[# idx, EsenarioAtrib.x];
    var yy  = inventarioGrid[# idx, EsenarioAtrib.y];
    var obj = inventarioGrid[# idx, EsenarioAtrib.object_index];
    
    if (obj != noone) {
        contenido = instance_create_ext(xx,yy,obj);
        with (contenido) {
            loadData = inventarioGrid[# idx, EsenarioAtrib.loadData];
            image_index = inventarioGrid[# idx, EsenarioAtrib.image_index];
            image_angle = inventarioGrid[# idx, EsenarioAtrib.image_angle];
            event_user(1);
        }
    }    
}
ds_grid_destroy(inventarioGrid);
with(obj_menu) {
    event_user(0);
}

