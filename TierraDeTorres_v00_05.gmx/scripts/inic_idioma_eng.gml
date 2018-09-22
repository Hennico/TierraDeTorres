/// inic_idioma_eng()
var idx = 0;
var mensajes;
mensajes[idx++] = "nada;{0}";
mensajes[idx++] = "idioma;eng";
mensajes[idx++] = "inventario completo;your inventory is full";
mensajes[idx++] = "mal uso circulo magico;the sacrifice isn't worth";
mensajes[idx++] = "nuevo piso;you enter the floor {0}";
mensajes[idx++] = "curarse;you recover {0} health points";
mensajes[idx++] = "trampa pared;you step on a wire and a dart hits you by {0} health points";
mensajes[idx++] = "perder max salud;your max health decreased {0} points";
mensajes[idx++] = "uso circulo magico;you stab yourself with a dagger and the wound magically closes";
mensajes[idx++] = "activar espinas piso;click...";
mensajes[idx++] = "atravezar gas;cof... cof...";
mensajes[idx++] = "usar pergamino;you rip the sheet in half and the magic of {0} was released"
mensajes[idx++] = "pan;bread";
mensajes[idx++] = "desconocido;unknown";
mensajes[idx++] = "falta oro;you have not enough gold";
mensajes[idx++] = "scroll ya revelado;you do not need to reveal this scroll";

var idioma = file_text_open_write(working_directory+"\eng.lang");
for (var i = 0; i < array_length_1d(mensajes); i++) {
    file_text_write_string(idioma, mensajes[i]);
    file_text_writeln(idioma);
}
file_text_close(idioma);
