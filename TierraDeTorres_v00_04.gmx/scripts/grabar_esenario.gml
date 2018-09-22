/// grabar_esenario();
var esenarioGrid = ds_grid_create(instance_number(obj_esenario),EsenarioAtrib.cantidadAtributos);
var idx = 0;
with (obj_esenario) {
    esenarioGrid[# idx, EsenarioAtrib.x           ] = x           ;
    esenarioGrid[# idx, EsenarioAtrib.y           ] = y           ;
    esenarioGrid[# idx, EsenarioAtrib.loadData    ] = loadData    ;
    esenarioGrid[# idx, EsenarioAtrib.image_index ] = image_index ;
    esenarioGrid[# idx, EsenarioAtrib.image_angle ] = image_angle ;
    esenarioGrid[# idx, EsenarioAtrib.object_index] = object_index;
    
    idx++;
}
var esenario = ds_grid_write(esenarioGrid);
ds_grid_destroy(esenarioGrid);

ini_open("esenario"+string(global.pisoActual)+".save");
ini_write_string("def","def",esenario);
ini_close();
