package om;

import om.ANSI;
import om.ANSI.CSI;

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

    public static inline function printbr()
        print( '\n' );

	public static inline function beep()
        print( ANSI.BELL );

	public static inline function clear()
		print( '\033c' );

	public static inline function reset()
		print( CSI +'0m' );

    /// Style

	public static inline function background( color : BackgroundColor ) {
		print( CSI + color + 'm' );
	}

    public static inline function color( color : Color = Color.default_ ) {
        print( CSI + color + 'm' );
    }

	public static inline function rgb( r : Int, g : Int, b : Int ) {
		//print( CSI + '38;5;${r};${g};${b}m' );
		print( CSI + '38;2;${r};${g};${b}m' );
	}

    public static inline function reverseVideo() {
        print( CSI + '7m' );
    }

    public static inline function style( attr : Array<Style> ) {
        print( CSI + attr.join(';') + 'm' );
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

	/////

	public static function supportsColors() : Bool {
        if( Sys.systemName() == 'Windows' )
            return false;
        if( Sys.getEnv( 'COLORTERM' ) != null )
            return true;
        var term = Sys.getEnv( 'TERM' );
        if( term == 'dumb' )
            return false;
        return ~/^screen|^xterm|^vt100|color|ansi|cygwin|linux/i.match( term );
    }

}
