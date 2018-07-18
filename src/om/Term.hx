package om;

import om.ANSI;
import om.ANSI.CSI;

//typedef BackgroundColor = om.ANSI.BackgroundColor;
//typedef Color = om.ANSI.Color;
//typedef Control = om.ANSI.Control;
//typedef Style = om.ANSI.Style;

@:require(sys)
class Term {

    public static inline function print( v : Dynamic ) {
		#if nodejs
		js.Node.process.stdout.write( v );
		#elseif sys
		std.Sys.print( v );
		#end
	}

    public static inline function println( v : Dynamic ) {
        #if nodejs
        js.Node.process.stdout.write( v+'\n' );
        #elseif sys
        std.Sys.println( v );
        #end
	}

    public static inline function printbr() {
        print( '\n' );
	}

    /// Display

    public static inline function eraseLineToEnd() {
        print( CSI + 'K' );
    }

    public static inline function eraseLineToCursor() {
        print( CSI + '1K' );
    }

    public static inline function eraseLine() {
        print( CSI + '2K' );
    }

    public static inline function eraseDisplay() {
        print( CSI + '2J' );
    }

    public static inline function eraseDisplaytoCursor() {
        print( CSI + '1J' );
    }

    public static inline function eraseDisplayToEnd() {
        print( CSI + 'J' );
    }

    /// Style

    public static inline function color( color : Color = Color.default_ ) {
        print( CSI + color + 'm' );
    }

    public static inline function background( color : BackgroundColor ) {
        print( CSI + color + 'm' );
    }

    public static inline function reverseVideo() {
        print( CSI + '7m' );
    }

    public static inline function style( attr : Array<Style> ) {
        print( CSI + attr.join(';') + 'm' );
    }

    public static inline function setColorRGB( r : Int, g : Int, b : Int ) {
        //print( CSI + '38;5;${r};${g};${b}m' );
        print( CSI + '38;2;${r};${g};${b}m' );
    }

    public static inline function reset() {
        //print( string( ['\x1B[','0m'] ) );
        print( CSI +'0m' );
    }

    /*
    macro static function string( a : Array<String> ) : ExprOf<String> {
        var s = '';
        for( v in a) s += v;
        return macro $v{s};
    }
    */

    /// Cursor

    public static inline function showCursor() {
        print( CSI + '?25h' );
    }

    public static inline function hideCursor() {
        print( CSI + '?25l' );
    }

    public static inline function cursorBackward( n = 1 ) {
        print( CSI + n + 'D' );
    }

    public static inline function cursorForward( n = 1 ) {
        print( CSI + n + 'C' );
    }

    public static inline function cursorUp( n = 1 ) {
        print( CSI + n + 'A' );
    }

    public static inline function cursorDown( n = 1 ) {
        print( CSI + n + 'B' );
    }

    public static inline function saveCursorPosition() {
        print( CSI + 's' );
    }

    public static inline function restoreCursorPosition() {
        print( CSI + 'u' );
    }

    /*
    public static function style( ?color : Color, ?background : BackgroundColor, ?attributes : Array<TextAttribute> ) {
        var a = new Array<Int>();
        if( color != null ) a.push( color );
        if( background != null ) a.push( background );
        if( attributes != null ) for(v in attributes) a.push( v );
        print( CSI + a.join(';') + 'm' );
    }
    */

}
