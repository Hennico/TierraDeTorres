/// posicion_ocupable(x,y)
var newX = argument[0];
var newY = argument[1];

var posicionValida = true;
posicionValida &= !place_meeting(newX, newY, obj_obstaculo);
posicionValida &= !place_meeting(newX, newY, obj_volable) || instance_exists(efec_volar);

return posicionValida;
