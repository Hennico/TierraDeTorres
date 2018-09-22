/// scr_historia_generar()
var hechizos = ds_list_create();
ds_list_read(hechizos, global.libroHechizos);
ds_list_shuffle(hechizos);
var hechizo = hechizos[| 0];
ds_list_destroy(hechizos);
return hechizo;
/*
var contexto = choose(
    "el gobernante {nombre} finalmente volvio de{expedicion}%%"+
    " y para su sorpresa encontro {hallazgo}%%"+
    "dutante el camino",
    "un simple aldeano psao a la historia como {nombre} el%%"+
    "{titulo_epico} luego de desenterrar {hallazgo}",
    
    "el herrero {nombre} mejor conocido como {titulo_epico}%%"+
    "el constructor de {hallazgo}"
);

var nombre = choose("A"  ,"Be"  ,"De"  ,"El" ,"Fa"  ,"Jo" ,"Ki" ,"La" ,"Ma"  ,"Re"  ) + 
             choose("bar","ched","dell","far","gran","hal","jen","kel","quil","sark", "") + 
             choose("ea" ,"ess" ,"ic"  ,"id" ,"ar"  ,"il" ,"us" ,"ai" ,"or"  ,"ok"  , "")

var expedicion = choose(
    " caza",
    "l campo de batalla",
    " la biblioteca",
    " expedicion",
    " las montanias",
    "l pantano venenoso"
);
var hallazgo = choose(
    "la ciudad perdida",
    "el espejo encantado",
    "la mitica scalibour",
    "el cadaber de un dragon"
);
var titulo_epico = choose(
    "explorador",
    "ingeniero",
    "destructor",
    "gigante",
    "barbudo",
    "fornido"
);

var texto = string_replace(contexto,"{nombre}", nombre);
texto = string_replace(texto,"{expedicion}", expedicion);
texto = string_replace(texto,"{hallazgo}", hallazgo);
texto = string_replace(texto,"{titulo_epico}", titulo_epico);

return texto;
*/
