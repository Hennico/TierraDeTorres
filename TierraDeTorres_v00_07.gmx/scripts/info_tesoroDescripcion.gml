/// info_tesoroDescripcion()
return "un tesoro";

var tesoro = choose(
    "{contenedor} contiene {objeto}.",
    "dentro de {contenedor} se encuentra {objeto}.",
    "dentro de {contenedor} hay {objeto}.",
    "contenido en {contenedor} se encuentra {objeto}.",
    "contenido en {contenedor} hay {objeto}."
);

/// info_tesoroObjeto()
var objeto = choose (
    "una piedra",
    "una runa",
    "una hoja",
    "un totem",
    "un triangulo",
    "un mortero",
    "una medalla",
    "una esfera",
    "un colmillo",
    "un craneo",
);

if (success(.5)) {
    objeto += choose (
        " de jade",
        " de oro",
        " de roca",
        " de madera",
        " de bronze",
        " de plata",
        " de mitrilo",
        " de estambre",
        " de hueso"
    )
}

if (success(.2)) {
    objeto += choose (
        " con simbolos que asemejan al sol",
        " con simbolos que no reconoces",
        " con franjas de diamante",
        " dentro de ambar",
        " grabada en otro idioma",
        " que se abre revelando la imagen de " + choose("una mujer", "un hombre"),
        " en la punta de un baston",
        " como decorecion en unos gemelos",
        " en un broche"
    )
}

/// info_tesoroContenedor()
var contenedor = choose(
    "la {caract}caja",
    "el {caract}cofre",
    "la {caract}bolsa de seda",
    "el {caract}sobre de papiro",
    "el {caract}alajero",
    "la {caract}funda",
    "el {caract}criptex"
);

var caract = "";
if success(.7) {
    var caract = choose(
        "oscur* ",
        "brillante ",
        "trasparente ",
        "humed* ",
        "sec* ",
        "calid* ",
        "fri* ",
        "raforzad* ",
        "desgastad* ",
        "suave ",
        "asper* ",
        "refinad* ",
        "mundan* ",
        "grotesc* "
    );
    
    if (success(.1)) {
        var caract2 = choose(
            "oscur* ",
            "brillante ",
            "trasparente ",
            "humed* ",
            "sec* ",
            "calid* ",
            "fri* ",
            "raforzad* ",
            "desgastad* ",
            "suave ",
            "asper* ",
            "refinad* ",
            "mundan* ",
            "grotesc* "
        );
        
        if (caract != caract2)
            caract += "y " + caract2;
    }
    
    var sexo = "";
    if (string_pos("el",contenedor) != 0)
        sexo = "o";
    else if (string_pos("la",contenedor) != 0)
        sexo = "a";
    
    caract = string_replace_all(caract, "*", sexo);
}
contenedor = string_replace_all(contenedor, "{caract}", caract);

if (success(.1)) {
    contenedor = choose(
        "una camara secreta en ",
        "una cavidad en ",
        ""
    ) + contenedor;
}

if success(.3) {
    contenedor += choose (
        " de forma cilindrica",
        " con detalles en oro",
        " con detalles en plata",
        " de diseño irregular",
        " con un sello de papel roto sobre la abertura",
        " que pesa mas de lo que parece",
        ""
    );
}

tesoro = string_replace_all(tesoro, "{contenedor}", contenedor);
tesoro = string_replace_all(tesoro, "{objeto}", objeto);

return tesoro;
