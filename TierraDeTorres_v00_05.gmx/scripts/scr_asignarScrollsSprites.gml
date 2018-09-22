/// scr_asignarScrollsSprites();
var imagens = ds_list_create();
ds_list_read(imagens, global.scrollsImagenes);

object_set_sprite(obj_inventario_heal   , imagens[| 0]);
object_set_sprite(obj_inventario_vision , imagens[| 1]);
object_set_sprite(obj_inventario_entrada, imagens[| 2]);
object_set_sprite(obj_inventario_salida , imagens[| 3]);
object_set_sprite(obj_inventario_revelar, imagens[| 4]);

ds_list_destroy(imagens);

