package om.term;

@:enum
abstract BackgroundColor(Int) from Int to Int {

    var black = 40;
    var red = 41;
    var green = 42;
    var yellow = 43;
    var blue = 44;
    var magenta = 45;
    var cyan = 46;
    var white = 47;

    var bright_black = 100;
    var bright_red = 101;
    var bright_green = 102;
    var bright_yellow = 103;
    var bright_blue = 104;
    var bright_magenta = 105;
    var bright_cyan = 106;
    var bright_white = 107;
}
