/// choose_index(args[])
var total = 0;

for(var i = 0; i < argument_count; i++) {
    total += argument[i];
}

var valor = random(total);

for(var i = 0; i < argument_count; i++) {
    valor -= argument[i];
    if (valor <= 0)
        return i;
}

return argument_count;
