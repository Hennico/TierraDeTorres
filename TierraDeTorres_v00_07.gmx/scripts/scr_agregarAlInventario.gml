/// scr_agregarAlInventario()
with (obj_slotInventario) {
    if (!instance_exists(contenido)) {
        contenido = other.id;
        other.x = x;
        other.y = y;
        return true;
    }
}
scr_mensaje("inventario completo");
return false;
