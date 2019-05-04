/// ds_list_write_destroy(map)
var list = ds_list_write(argument[0]);
ds_list_destroy(argument[0]);
return list;
