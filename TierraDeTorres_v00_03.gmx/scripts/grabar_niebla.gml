/// grabar_niebla();
var nieblaGrid = obj_oscuridad.grilla_niebla;
if (!ds_exists(nieblaGrid, ds_type_grid)) {
    with (obj_oscuridad) { event_user(0); }
    nieblaGrid = obj_oscuridad.grilla_niebla;
}
var niebla = ds_grid_write(nieblaGrid);

ini_open("niebla"+string(global.pisoActual)+".save");
ini_write_string("def","def",niebla);
ini_close();
