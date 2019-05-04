/// inic_idioma_eng()
var idx = 0;
var mensajes;
mensajes[idx++] = "nada;{0}";
mensajes[idx++] = "idioma;eng";
mensajes[idx++] = "nuevo juego;New game";
mensajes[idx++] = "continuar;Continue";
mensajes[idx++] = "zurdo;Left hand";
mensajes[idx++] = "diestro;Right hand";
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
mensajes[idx++] = "desactivar;with the perfect hit you trigger the trap";
mensajes[idx++] = "falla desactivar;you hit the trap but it doesn't trigget";
mensajes[idx++] = "ya desactivada;the trap is triggered, and it's a one use trap";
mensajes[idx++] = "npc comprador;i'll buy your treassure";
mensajes[idx++] = "npc curador;i'll heal your whounds";
mensajes[idx++] = "npc revelador;i'll reveal your scrolls";
mensajes[idx++] = "npc aumentar vida;i'll increase your energy";
mensajes[idx++] = "npc vende orbes;i'll sell you orbs";
mensajes[idx++] = "npc aumentar vision;i'll increase your vision";
mensajes[idx++] = "victoria;The crystal explodes and the magic that haunted the land disappears, slowly but surely you come back down from the tower to meet your loved ones who greets you like a hero.##      El Fin.";
mensajes[idx++] = "muerte;Congratulations!. You reach the floor ";

var idioma = file_text_open_write(working_directory+"\eng.lang");
for (var i = 0; i < array_length_1d(mensajes); i++) {
    file_text_write_string(idioma, mensajes[i]);
    file_text_writeln(idioma);
}
file_text_close(idioma);
