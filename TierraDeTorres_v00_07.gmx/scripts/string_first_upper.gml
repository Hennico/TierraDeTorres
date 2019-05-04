/// string_first_upper(string)
var text = argument[0];
var first = string_upper(string_char_at(text,1));

return first + string_copy(text, 2, string_length(text)-1)

