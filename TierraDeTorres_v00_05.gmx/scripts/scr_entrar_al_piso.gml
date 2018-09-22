/// scr_entrar_al_piso(nuevoPiso)
var nuevoPiso = argument[0];
if (nuevoPiso >= 0)  {
    grabar_esenario();
    grabar_niebla();
    global.sigTurno = true;
    obj_control.actuar = false;
    with (obj_esenario) { if(object_index != obj_mensaje) instance_destroy(); }
    
    global.pisoActual = nuevoPiso;
    if (!cargar_esenario()) {
        global.entradaX = global.salidaX;
        global.entradaY = global.salidaY;
        generar_nuevo_piso();
    }
    with (obj_oscuridad) { event_user(0); }
    scr_agregarEfectoParedes(background3,-1);
    grabar_progreso();
}
