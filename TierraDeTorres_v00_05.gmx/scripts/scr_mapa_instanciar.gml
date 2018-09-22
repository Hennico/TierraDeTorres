/// scr_mapa_instanciar(grilla)
var plano = argument[0];
var plano_ancho = ds_grid_width (plano);
var plano_alto  = ds_grid_height(plano);

for(var xx = 0; xx < plano_ancho; xx++) {
for(var yy = 0; yy < plano_alto ; yy++) {
    var valor = plano[# xx,yy];
    if(valor > 0) {
        global.esenario_plano = plano;
        global.esenario_plano_x = xx;
        global.esenario_plano_y = yy;
        
        with (instance_create(cellToX(xx),cellToY(yy), valor)) {
            event_user(EsenarioAtrib.ev_inicializar);
        }
    }
    //script_execute(plano[# xx,yy], plano, xx, yy);
}}
