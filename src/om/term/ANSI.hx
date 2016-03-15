package om.term;

@:enum abstract Control(String) from String to String {
	var up = "A";
	var down = "B";
	var forward = "C";
	var back = "D";
	var nextLine = "E";
	var previousLine = "F";
	var horizontalAbsolute = "G";
	var eraseData = "J";
	var eraseLine = "L";
	var scrollUp = "S";
	var scrollDown = "T";
	var savePosition = "s";
	var restorePosition = "u";
	var queryPosition = "6n";
	//var hide = "?25l";
	//var show = "?25h";
}

@:enum abstract Color(Int) from Int to Int {

    var black = 30;
    var red = 31;
    var green = 32;
    var yellow = 33;
    var blue = 34;
    var magenta = 35;
    var cyan = 36;
    var white = 37;

    var bright_black = 90;
    var bright_red = 91;
    var bright_green = 92;
    var bright_yellow = 93;
    var bright_blue = 94;
    var bright_magenta = 95;
    var bright_cyan = 96;
    var bright_white = 97;
}

@:enum abstract BackgroundColor(Int) from Int to Int {

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

/**
	SGR (Select Graphic Rendition)
*/
@:enum abstract Style(Int) from Int to Int {
	var bold = 1;
	var faint = 2;
	var italic = 3;
	var underline = 4;
	var blink_slow = 5;
	var blink_rapid = 6;
	var reverse = 7;
	var conceal = 8;
	var crossed_out = 9;
	//...
}

/*
class Style {
    public static var reset = [0,22];
    public static var bright = [1,22];
    public static var dim = [2,22];
    public static var italic = [3,23];
    public static var underline = [4,24];
    public static var blink = [5,25];
    public static var inverse = [7,27];
}
*/

class ANSI {

	public static inline var ESCAPE = '\x1B';
    public static inline var CSI = ESCAPE + '[';
	public static inline var SUFFIX = 'm'; // Colors only

	public static inline var BELL = '\x07';

	public static function color( str : String, color : Color, resetColor = 39 ) : String {
		//return CSI + color + 'm' + str + CSI + resetColor + 'm';
		return CSI + color + 'm';
	}

    /*
    public static var REGEXP_ESCAPE_CODE(default,null) =
        #if js
        ~/[\u001b\u009b][[()#;?]*(?:[0-9]{1,4}(?:;[0-9]{0,4})*)?[0-9A-ORZcf-nqry=><]/g
        #else
        //TODO Regexp compilation error : PCRE does not support \L, \l, \N{name}, \U, or \u
        ~/[\u001b\u009b][[()#;?]*(?:[0-9]{1,4}(?:;[0-9]{0,4})*)?[0-9A-ORZcf-nqry=><]/g
        #end;
        */

	#if sys

	public static function isSupported() : Bool {
	    if( Sys.systemName() == 'Windows' )
	        return false;
	    if( Sys.getEnv( 'COLORTERM' ) != null )
	        return true;
	    var term = Sys.getEnv( 'TERM' );
	    if( term == 'dumb' )
	        return false;
	    return ~/^screen|^xterm|^vt100|color|ansi|cygwin|linux/i.match( term );
	}

	#end
}
