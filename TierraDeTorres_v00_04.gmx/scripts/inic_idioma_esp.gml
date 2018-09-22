/// inic_idioma_esp()
var idx = 0;
var mensajes;
mensajes[idx++] = "nada;{0}";
mensajes[idx++] = "idioma;esp";
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

var idioma = file_text_open_write(working_directory+"\esp.lang");
for (var i = 0; i < array_length_1d(mensajes); i++) {
    file_text_write_string(idioma, mensajes[i]);
    file_text_writeln(idioma);
}
file_text_close(idioma);
