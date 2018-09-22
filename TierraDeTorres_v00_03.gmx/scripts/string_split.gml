/// string_split(string, splitter, skip_empty)
var idx = 0;
var result;
var input = argument[0];
var splitter = argument[1];
var skip_empty = argument[2];

var current_section = "";
for (var i = 0; i < string_length(input); i++) {
    var char = string_char_at(input, i+1);
    if (char == splitter) {
        if (string_length(current_section) > 0 || !skip_empty) {
            result[idx++] = current_section;
            current_section = "";
        }
    } else {
        current_section += char;
    }
}
result[idx++] = current_section;

return result
