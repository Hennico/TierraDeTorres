/// grabar_niebla();
with (obj_oscuridad) {
    if (!ds_exists(grilla_niebla, ds_type_grid))
        event_user(0);
    
    var niebla = ds_grid_write(grilla_niebla);
    
    ini_open("niebla"+string(global.pisoActual)+".save");
    ini_write_string("def","def",niebla);
    ini_close();
}
