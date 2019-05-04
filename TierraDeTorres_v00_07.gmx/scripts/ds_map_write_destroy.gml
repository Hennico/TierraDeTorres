/// ds_map_write_destroy(map)
var map = ds_map_write(argument[0]);
ds_map_destroy(argument[0]);
return map;
