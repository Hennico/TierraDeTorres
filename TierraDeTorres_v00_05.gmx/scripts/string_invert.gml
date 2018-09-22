/// string_invert(string)
var str = argument[0];
var resu = "";
var size = string_length(str);
for (var i = 0; i < size; i++)
    resu += string_char_at(str, size-i);

return resu;
