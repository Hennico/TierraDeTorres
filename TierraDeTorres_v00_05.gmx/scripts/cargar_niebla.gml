/// cargar_niebla()
if (global.esTutorial)
    return false;

ini_open(working_directory+"\niebla"+string(global.pisoActual)+".save");
if (!ini_key_exists("def","def")) {
    ini_close();
    return false;
}
var niebla = ini_read_string("def","def","");
ini_close();

var nieblaGrid = ds_grid_create(0,0);
ds_grid_read(nieblaGrid, niebla);

with (obj_oscuridad) {
    if (ds_exists(grilla_niebla, ds_type_grid))
        ds_grid_destroy(grilla_niebla);
    grilla_niebla = nieblaGrid;
}

return true;
