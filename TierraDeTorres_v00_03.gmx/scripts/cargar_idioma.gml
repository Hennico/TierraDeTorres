/// cargar_idioma(idioma)
var idioma = file_text_open_read(working_directory+"\"+argument[0]+".lang");

if (ds_exists(global.idioma, ds_type_map))
    ds_map_destroy(global.idioma);

global.idioma = ds_map_create();

while (!file_text_eof(idioma)) {
    var linea = file_text_readln(idioma);
    var split = string_split(linea, ";", false);
    var clave = split[0];
    var texto = split[1];
    
    global.idioma[? clave] = texto;
}
