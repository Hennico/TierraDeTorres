/// ds_grid_layout_normal(planos, pasos, startX, startY)
var plano  = argument[0];
var pasos  = argument[1];
var startX = argument[2];
var startY = argument[3];

var xx = startX;
var yy = startY;
var ancho = ds_grid_width (plano);
var alto  = ds_grid_height(plano);

var avanceDireccion = 90*irandom(3);

var movX;
var movY;

ds_grid_clear(plano, CeldaValor.vacio);
while(pasos > 0) {
    if ((random(1)<.80))
        avanceDireccion += 90*(irandom(2)-1);
    
    movX = dcos(avanceDireccion);
    movY =-dsin(avanceDireccion);
    
    repeat(2) {
        if (plano[# xx,yy] != CeldaValor.piso) {
            pasos--;
            plano[# xx,yy]  = CeldaValor.piso;
        }
        for (var relX = xx-1; relX < xx+2; relX++) {
        for (var relY = yy-1; relY < yy+2; relY++) {
            if (plano[# relX, relY] == CeldaValor.vacio)
                plano[# relX, relY] = CeldaValor.pared;
        }
        }
        
        if (!between(xx + movX,1,ancho-2))
            movX = -movX;
        
        if (!between(yy + movY,1,alto -2))
            movY = -movY;
            
        xx += movX;
        yy += movY;
    }
}
