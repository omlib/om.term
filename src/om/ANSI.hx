package om;

#if macro
import haxe.macro.Context;
import haxe.macro.Expr;
using haxe.macro.ExprTools;
using haxe.macro.Tools;
#end

@:keep
@:enum abstract Color(Int) to Int {

    var black = 30;
    var red = 31;
    var green = 32;
    var yellow = 33;
    var blue = 34;
    var magenta = 35;
    var cyan = 36;
    var white = 37;

    var default_ = 39;

    var bright_black = 90;
    var bright_red = 91;
    var bright_green = 92;
    var bright_yellow = 93;
    var bright_blue = 94;
    var bright_magenta = 95;
    var bright_cyan = 96;
    var bright_white = 97;
}

@:enum abstract BackgroundColor(Int) to Int {

    var black = 40;
    var red = 41;
    var green = 42;
    var yellow = 43;
    var blue = 44;
    var magenta = 45;
    var cyan = 46;
    var white = 47;

    var default_ = 49;

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
@:enum abstract Style(Int) to Int {
	var bright = 1;
	var dim = 2;
	var italic = 3;
	var underline = 4;
	var blink = 5;
	var blink_rapid = 6;
	var inverse = 7;
	var conceal = 8;
	var crossed_out = 9;
	var font_default = 10;
	//var font_alternative = 10; //TODO
	//...
	var blink_off = 25;
	var inverse_off = 27;
}

@:enum abstract Control(String) to String {
	var cursorUp = "A";
	var cursorDown = "B";
	var cursorForward = "C";
	var cursorBack = "D";
	var cursorNextLine = "E";
	var cursorPreviousLine = "F";
	var cursorHorizontalAbsolute = "G";
	var cursorPosition = "H";
	var eraseInDisplay = "J";
	//var eraseInLine = "L";
	var eraseInLine = "K";
	var scrollUp = "S";
	var scrollDown = "T";
	var saveCursorPosition = "s";
	var restoreCursorPosition = "u";
	var queryCursorPosition = "6n";
	//var hide = "?25l";
	//var show = "?25h";
}

/**
	ANSI escape sequences for in-band signaling to control the cursor location, color, and other options on video text terminals.
*/
class ANSI {

    public static final ESCAPE = '\x1B';
	public static final BELL = '\x07';

	/**
		0x9b - Control Sequence Introducer
	*/
    public static final CSI = '\x1B[';

    //public static var eraseDisplayToEnd = str(CSI,'J');

    /*
    macro public static inline function str( a : Expr, b : Expr ) {
        var s = a.getValue() + b.getValue();
        return macro $v{s};
    }
    */

}
