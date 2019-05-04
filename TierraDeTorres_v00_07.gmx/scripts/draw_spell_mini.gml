/// draw_spell_mini(x,y,spell,diameter,width)
var xx = argument[0];
var yy = argument[1];
var spell = argument[2];
var diam = argument[3];
var width = argument[4];
var rot = -90;

var gap = 360/6;

for (var i = 1; i < string_length(spell); i++) {
    var ini = real(string_char_at(spell, i))-1;
    var fin = real(string_char_at(spell, i+1))-1;
    
    draw_line_width(
        xx+dcos(gap*ini+rot)*diam,
        yy+dsin(gap*ini+rot)*diam,
        xx+dcos(gap*fin+rot)*diam,
        yy+dsin(gap*fin+rot)*diam,
        width
    );
}
