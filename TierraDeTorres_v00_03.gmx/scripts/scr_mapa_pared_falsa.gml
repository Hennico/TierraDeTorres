/// scr_mapa_pared_falsa(plano, grid_x, grid_y)
var plano  = argument[0];
var grid_x = argument[1];
var grid_y = argument[2];

var esVertical = plano[# grid_x+1, grid_y] == CeldaValor.pared && plano[# grid_x-1, grid_y] == CeldaValor.pared;

with (instance_create(cellToX(argument[1]), cellToY(argument[2]), obj_pared_falsa)) {
    image_index = esVertical;
}
