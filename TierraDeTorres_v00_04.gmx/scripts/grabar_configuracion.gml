/// grabar_configuracion()
var savemap = ds_map_create();

// out game
savemap[? "version"] = SAVE_VERTION;
savemap[? "mano diestra"] = global.manoDiestra;
savemap[? "partida iniciada"] = global.partidaIniciada;

// in game
savemap[? "esta en ciudad"] = global.estaEnCiudad;
savemap[? "libro hechizos"] = global.libroHechizos;
savemap[? "formas hechizos"] = global.formasHechizos;
savemap[? "scrolls imagenes"] = global.scrollsImagenes;
savemap[? "idioma"] = global.idioma_nombre;

ds_map_secure_save(savemap, "game.config");
ds_map_destroy(savemap);
