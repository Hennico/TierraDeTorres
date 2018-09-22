/// limpiar_saves
var numero = 0;
var clave = working_directory+"\esenario"+string(numero++)+".save";
do {
    file_delete(clave);
    clave = working_directory+"\esenario"+string(numero++)+".save";
} until(!file_exists(clave))

numero = 0;
clave = working_directory+"\niebla"+string(numero++)+".save";
do {
    file_delete(clave);
    clave = working_directory+"\niebla"+string(numero++)+".save";
} until(!file_exists(clave))

file_delete(working_directory+"\inventario.save");
file_delete(working_directory+"\personaje.save");

global.partidaIniciada = false;
global.pisoActual = 1;
grabar_configuracion();
