/// mapa_agregar_extras(planos)
var planos = argument[0];
var plano_ancho = ds_grid_width(planos);
var plano_alto  = ds_grid_width(planos);

with (obj_constructor) {
    
    
    
    
    
    
    repeat(pared_secreta_aparicion_intentos) {
        if (chances(pared_secreta_aparicion_chances)) {
            var xx = irandom(plano_ancho-1);
            var yy = irandom(plano_alto -1);
            if (planos[# xx,yy] == CeldaValor.piso) {
                if (planos[# xx+1,yy] == planos[# xx-1,yy] && planos[# xx,yy+1] == planos[# xx,yy-1]) {
                    if (planos[# xx+1,yy] == CeldaValor.pared && planos[# xx,yy+1] == CeldaValor.piso)
                        planos[# xx,yy] = CeldaValor.pared_falsa;
                    
                    if (planos[# xx+1,yy] == CeldaValor.piso && planos[# xx,yy+1] == CeldaValor.pared)
                        planos[# xx,yy] = CeldaValor.pared_falsa;
                }
            }
        }
    }
    
    repeat(pan_aparicion_intentos) {
        if (chances(pan_aparicion_chances)) {
            var xx = irandom(plano_ancho-1);
            var yy = irandom(plano_alto -1);
            if (planos[# xx,yy] == CeldaValor.piso) {
                planos[# xx,yy] = CeldaValor.pan;
            }
        }
    }
    
    /*
    repeat(cartel_historia_aparicion_intentos) {
        if (chances(cartel_historia_aparicion_chances)) {
            var xx = 1+irandom(plano_ancho-3);
            var yy = 1+irandom(plano_alto -3);
            if (planos[# xx,yy] == CeldaValor.piso){
                if (planos[# xx+1,yy] == CeldaValor.pared ||
                    planos[# xx-1,yy] == CeldaValor.pared ||
                    planos[# xx,yy+1] == CeldaValor.pared ||
                    planos[# xx,yy-1] == CeldaValor.pared) 
                    planos[# xx,yy] =  CeldaValor.cartel_historia;
            }
        }
    }
    */
    
    repeat(espinas_piso_aparicion_intentos) {
        if (chances(espinas_piso_aparicion_chances)) {
            var xx_ini = 1+irandom(plano_ancho-3);
            var yy_ini = 1+irandom(plano_alto -3);
            var delta = espinas_piso_nivel;
            
            
            if (planos[# xx_ini,yy_ini] == CeldaValor.piso) {
                for (var deltaX = -delta+1; deltaX < delta; deltaX++) {
                for (var deltaY = -delta+1; deltaY < delta; deltaY++) {
                    if (abs(deltaX) + abs(deltaY) < delta) {
                        var xx = xx_ini + deltaX;
                        var yy = yy_ini + deltaY;
                        if (planos[# xx,yy] == CeldaValor.piso)
                            planos[# xx,yy] = CeldaValor.espinas_piso;
                    }
                }}
            }
        }
    }
}































