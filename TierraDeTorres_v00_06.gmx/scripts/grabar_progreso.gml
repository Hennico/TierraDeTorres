/// grabar_progreso()
with (obj_personaje) {
    var savemap = ds_map_secure_load(working_directory+"\personaje.save");
    if (!ds_exists(savemap, ds_type_map))
        savemap = ds_map_create();
    savemap[? "x"] = x;
    savemap[? "y"] = y;
    savemap[? "image_angle"] = image_angle;
    savemap[? "image_index"] = image_index;
    
    savemap[? "oro"] = oro;
    savemap[? "salud"] = salud;
    savemap[? "orbes"] = orbes;
    savemap[? "vision"] = vision;
    savemap[? "salud_max"] = salud_max;
    
    savemap[? "piso actual"] = global.pisoActual;
    savemap[? "piso maximo"] = global.pisoMaximo;
    
    ds_map_secure_save(savemap, working_directory+"\personaje.save");
    ds_map_destroy(savemap);
}
grabar_niebla();
