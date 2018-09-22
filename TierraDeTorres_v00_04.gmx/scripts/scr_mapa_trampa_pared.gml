/// spr_mapa_trampa_pared(plano, grid_x, grid_y)
var plano  = argument[0];
var grid_x = argument[1];
var grid_y = argument[2];

instance_create(cellToX(grid_x), cellToY(grid_y), obj_pared);

with (instance_create(cellToX(grid_x+.5), cellToY(grid_y+.5), obj_trampa_pared)) {
    image_angle = irandom(3)*90;
}
