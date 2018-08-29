/// limpiar_saves
var numero = 0;
var clave = "esenario"+string(numero++)+".save";
do {
    file_delete(clave);
    clave = "esenario"+string(numero++)+".save";
} until(!file_exists(clave))

numero = 0;
clave = "niebla"+string(numero++)+".save";
do {
    file_delete(clave);
    clave = "niebla"+string(numero++)+".save";
} until(!file_exists(clave))

file_delete("inventario.save");
file_delete("personaje.save");

global.partidaIniciada = false;
global.pisoActual = 0;
grabar_configuracion();
