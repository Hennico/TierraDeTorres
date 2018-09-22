/// grabar_inventario();
var inventarioGrid = ds_grid_create(instance_number(obj_slotInventario),EsenarioAtrib.cantidadAtributos);
with (obj_slotInventario) {
    var idx = posicion;
    inventarioGrid[# idx, EsenarioAtrib.x           ] = noone;
    inventarioGrid[# idx, EsenarioAtrib.y           ] = noone;
    inventarioGrid[# idx, EsenarioAtrib.image_index ] = noone;
    inventarioGrid[# idx, EsenarioAtrib.image_angle ] = noone;
    inventarioGrid[# idx, EsenarioAtrib.object_index] = noone;
    inventarioGrid[# idx, EsenarioAtrib.loadData    ] = noone;
    
    with (contenido) {
        inventarioGrid[# idx, EsenarioAtrib.x           ] = x           ;
        inventarioGrid[# idx, EsenarioAtrib.y           ] = y           ;
        inventarioGrid[# idx, EsenarioAtrib.image_index ] = image_index ;
        inventarioGrid[# idx, EsenarioAtrib.image_angle ] = image_angle ;
        inventarioGrid[# idx, EsenarioAtrib.object_index] = object_index;
        inventarioGrid[# idx, EsenarioAtrib.loadData    ] = loadData    ;
    }
}
var inventario = ds_grid_write(inventarioGrid);
ds_grid_destroy(inventarioGrid);

ini_open("inventario.save");
ini_write_string("def","def",inventario);
ini_close();
