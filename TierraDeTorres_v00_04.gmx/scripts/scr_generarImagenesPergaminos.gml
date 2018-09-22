/// scr_generarImagenesPergaminos()
var mapaImagenes = ds_map_create();
var imagenes = ds_list_create();
var pergaminos = ds_list_create();
ds_list_add(imagenes,
    spr_scroll_imagen_01,
    spr_scroll_imagen_02,
    spr_scroll_imagen_03,
    spr_scroll_imagen_04,
    spr_scroll_imagen_05,
);
ds_list_add(pergaminos,
    obj_inventario_heal   ,
    obj_inventario_vision ,
    obj_inventario_entrada,
    obj_inventario_salida ,
    obj_inventario_revelar
);

ds_list_shuffle(imagenes);
for (var idx = 0; idx < ds_list_size(pergaminos); idx++) {
    mapaImagenes[? pergaminos[| idx]] = imagenes[| idx];
}

ds_list_destroy(imagenes);
ds_list_destroy(pergaminos);
global.scrollsImagenes = ds_map_write_destroy(mapaImagenes);
