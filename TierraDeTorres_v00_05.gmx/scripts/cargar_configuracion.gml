/// cargar_configuracion()

var savemap = ds_map_secure_load(working_directory+"\game.config");
if (ds_exists(savemap, ds_type_map)) {
    if (savemap[? "version"] != SAVE_VERTION || !savemap[? "partida iniciada"])
        ds_map_destroy(savemap);
}

if (!ds_exists(savemap, ds_type_map)) {
    savemap = ds_map_create();
    savemap[? "version"] = SAVE_VERTION;
    savemap[? "mano diestra"] = OrientacionPad.diestro;
    savemap[? "partida iniciada"] = false;
    savemap[? "scrolls imagenes"] = "";
    savemap[? "formas hechizos"] = "";
    savemap[? "libro hechizos"] = "";
    savemap[? "idioma"] = "esp";
    savemap[? "esta en ciudad"] = true;
    savemap[? "scrolls nombres"] = "";
    ds_map_secure_save(savemap, working_directory+"\game.config");
}

// out game
global.manoDiestra = savemap[? "mano diestra"];
global.partidaIniciada = savemap[? "partida iniciada"];

// in game
global.scrollsImagenes = savemap[? "scrolls imagenes"];
global.scrollsNombres = savemap[? "scrolls nombres"];
global.formasHechizos = savemap[? "formas hechizos"];
global.libroHechizos = savemap[? "libro hechizos"];
global.idioma_nombre = savemap[? "idioma"];
global.estaEnCiudad = savemap[? "esta en ciudad"];
cargar_idioma(global.idioma_nombre);

ds_map_destroy(savemap);
