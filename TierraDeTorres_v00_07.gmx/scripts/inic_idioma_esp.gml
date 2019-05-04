/// inic_idioma_esp()
var idx = 0;
var mensajes;
mensajes[idx++] = "nada;{0}";
mensajes[idx++] = "idioma;esp";
mensajes[idx++] = "nuevo juego;Nuevo juego";
mensajes[idx++] = "continuar;Continuar";
mensajes[idx++] = "zurdo;Zurdo";
mensajes[idx++] = "diestro;Diestro";
mensajes[idx++] = "inventario completo;tu inventario esta completo";
mensajes[idx++] = "mal uso circulo magico;el sacrificio no vale la pena";
mensajes[idx++] = "nuevo piso;entraste al piso {0}";
mensajes[idx++] = "curarse;has recuperado {0} puntos de salud";
mensajes[idx++] = "trampa pared;pisas un cable y un dardo te golpea restandote {0} de salud";
mensajes[idx++] = "perder max salud;tu salud maxima bajo en {0} puntos";
mensajes[idx++] = "uso circulo magico;clavas una daga en tu pecho y la herida magicamente cierra";
mensajes[idx++] = "activar espinas piso;click...";
mensajes[idx++] = "atravezar gas;cof... cof...";
mensajes[idx++] = "usar pergamino;al cortar la hoja a la mitad la magia de {0} se libera"
mensajes[idx++] = "pan;pan";
mensajes[idx++] = "desconocido;desconocido";
mensajes[idx++] = "falta oro;no tenes oro suficiente";
mensajes[idx++] = "scroll ya revelado;ya conoces la identidad de este pergamino";
mensajes[idx++] = "desactivar;con el golpe preciso activas la trampa";
mensajes[idx++] = "falla desactivar;golpeas el activador pero nada pasa";
mensajes[idx++] = "ya desactivada;la trampa ya fue activada y es de un solo uso";
mensajes[idx++] = "npc comprador;yo comprare tu tesoro";
mensajes[idx++] = "npc curador;yo curare tus heridas";
mensajes[idx++] = "npc revelador;yo revelare tus pergaminos";
mensajes[idx++] = "npc aumentar vida;yo incrementare tu energia";
mensajes[idx++] = "npc vende orbes;yo te vendere orbes";
mensajes[idx++] = "npc aumentar vision;yo aumentare tu vision";
mensajes[idx++] = "victoria;El cristal explota y la magia que azotaba la tierra desaparece, lenta pero seguramente desciendes la torre para encontrarte con tus seres amados quienes te reciben como a un héroe.##      El Fin.";
mensajes[idx++] = "muerte;Felicidades!. Llegaste al piso ";

var idioma = file_text_open_write(working_directory+"\esp.lang");
for (var i = 0; i < array_length_1d(mensajes); i++) {
    file_text_write_string(idioma, mensajes[i]);
    file_text_writeln(idioma);
}
file_text_close(idioma);
