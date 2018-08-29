/// cargar_niebla()
if (global.esTutorial)
    return false;

ini_open("niebla"+string(global.pisoActual)+".save");
if (!ini_key_exists("def","def")) {
    ini_close();
    return false;
}
var niebla = ini_read_string("def","def","");
ini_close();

var nieblaGrid = ds_grid_create(0,0);
ds_grid_read(nieblaGrid, niebla);

if (ds_exists(obj_oscuridad.grilla_niebla, ds_type_grid))
    ds_grid_destroy(obj_oscuridad.grilla_niebla);
obj_oscuridad.grilla_niebla = nieblaGrid;

return true;
