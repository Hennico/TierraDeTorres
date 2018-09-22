/// scr_mensaje(codigo,parms[])
var codigo = argument[0];

var args;
if (argument_count > 1) {
    for(var i = 0; i < argument_count-1; i++)
        args[i] = argument[i+1];
}

var xx = global.menu_xoffset + global.mensajes_xoffset;
var yy = global.menu_yoffset + global.mensajes_yoffset;
with (instance_create(xx, yy, obj_mensaje)) {
    texto = global.idioma[? codigo];
    
    if (argument_count > 1) {
        for (var i = 0; i < array_length_1d(args); i++)
            texto = string_replace(texto, "{"+string(i)+"}", args[i]);
    }
        
    texto = "Piso "+string(global.pisoActual)+": "+texto;
    event_user(EsenarioAtrib.ev_inicializar);
}
