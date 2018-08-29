/// scr_mensaje(codigo,parms[])
var codigo = argument[0];
var arg1;

if (argument_count > 1) arg1 = argument[1];

var xx = global.menu_xoffset + global.mensajes_xoffset;
var yy = global.menu_yoffset + global.mensajes_yoffset;

with (instance_create(xx, yy, obj_mensaje)) {
    switch(codigo) {
        case "error;inventario completo": texto = "tu inventario esta completo";  break;
        case "error; uso circulo magico": texto = "el sacrificio no vale la pena"; break;
        
        case "historia": texto = string_replace_all(arg1, "%%", "#"); 
            var renglones = string_count("%%",arg1);
            with(obj_mensaje) {
                relY -= renglones*separacion;
                if (relY < 0)
                    instance_destroy();
            }
            break;
        
        case "nuevo piso": texto = "entraste al piso " + string(global.pisoActual); break;
        case "curarse": texto = "has recuperado " + string(arg1) + " puntos de salud"; break;
        case "trampa pared": texto = "un dardo te golpea y resta " + string(arg1) + " de salud"; break;
        case "perder max salud": texto = "tu salud maxima bajo en " + string(arg1) + " puntos"; break;
        case "uso circulo magico": texto = "clavas una daga en tu pecho y la herida magicamente cierra"; break;
        case "activar espinas piso": texto = "click..."; break;
        case "atravezar gas": texto = "cof... cof..."; break;
    }
    
    texto = "Piso "+string(global.pisoActual)+": "+texto
    event_user(EsenarioAtrib.ev_inicializar);
}
grabar_esenario();
// crear mensaje y ponerlo donde corresponde
