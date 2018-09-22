/// scr_generarConjuracionesParaHechizos()
var mapaHechizos = ds_map_create();
var conjuracion = ds_list_create();
var hechizos = ds_list_create();
var libroHechizos = ds_list_create();
ds_list_add(conjuracion, "6","1","2","3","4","5");
ds_list_add(hechizos, 
    efec_volar,
    efec_revelacion
);

for (var idx = 0; idx < ds_list_size(hechizos); idx++) {
    ds_list_shuffle(conjuracion);
    var clave = "";
    for (var i = 0; i < ds_list_size(conjuracion); i++)
        clave += conjuracion[| i];
    
    var claveInver = string_invert(clave);
    if (ds_map_exists(mapaHechizos, clave) || ds_map_exists(mapaHechizos, claveInver)) {
        idx--;
    } else { 
        mapaHechizos[? clave] = hechizos[| idx];
        mapaHechizos[? claveInver] = hechizos[| idx];
        ds_list_add(libroHechizos, clave);
    }
}

global.libroHechizos = ds_list_write(libroHechizos);
global.formasHechizos = ds_map_write_destroy(mapaHechizos);

ds_list_destroy(hechizos);
ds_list_destroy(conjuracion);
ds_list_destroy(libroHechizos);
