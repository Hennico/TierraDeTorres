/// cargar_progreso()
with (obj_personaje) {
    var savemap = ds_map_secure_load("personaje.save");
    if (!ds_exists(savemap, ds_type_map))
        exit;
    x = savemap[? "x"];
    y = savemap[? "y"];
    image_angle = savemap[? "image_angle"];
    image_index = savemap[? "image_index"];
    
    salud = savemap[? "salud"];
    orbes = savemap[? "orbes"];
    vision = savemap[? "vision"];
    salud_max = savemap[? "salud_max"];
    
    global.pisoActual = savemap[? "piso actual"];
    global.maximoPiso = savemap[? "maximo piso"];
    
    ds_map_destroy(savemap);
}
cargar_niebla();
