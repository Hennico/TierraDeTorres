/// scr_inicializarJuego()
global.salidaX = 1;
global.salidaY = 1;
global.entradaX = 1+irandom(5)*2;
global.entradaY = 1+irandom(5)*2;
global.sigTurno = false;
global.surfaceSombra = noone;

if(!instance_exists(obj_menu)) {
    instance_create(0,0,obj_menu);
    instance_create(0,0,obj_personaje);
    instance_create(0,0,obj_accionActiva);
}
with(obj_menu) event_user(0);

randomize();
if (global.partidaIniciada) {
    cargar_configuracion();
    cargar_progreso();
    cargar_inventario();
} else {
    global.pisoMaximo = 100;
    global.estaEnCiudad = true;
    scr_generarImagenesPergaminos();
    scr_generarConjuracionesParaHechizos();
}
limpiar_saves();
global.partidaIniciada = true;

grabar_configuracion();
grabar_progreso();
grabar_inventario();
with(obj_menu) event_user(0);
