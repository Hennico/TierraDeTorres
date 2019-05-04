/// grabar_niebla();
with (obj_oscuridad) {
    if (!ds_exists(grilla_niebla, ds_type_grid))
        event_user(0);
    
    var niebla = ds_grid_write(grilla_niebla);
    
    var file_name = working_directory+"niebla"+string_format(global.pisoActual,3,0)+".save";
    ini_open(file_name);
    ini_write_string("def","def",niebla);
    ini_close();
}
