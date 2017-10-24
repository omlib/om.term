package om;

import om.term.ANSI;
import om.term.ANSI.BELL;
import om.term.ANSI.CSI;
import om.term.ANSI.ESCAPE;
import om.term.ANSI.SUFFIX;

typedef BackgroundColor = om.term.ANSI.BackgroundColor;
typedef Color = om.term.ANSI.Color;
typedef Control = om.term.ANSI.Control;
typedef Style = om.term.ANSI.Style;

class Term {

	// ---

	public static inline function print( str : String ) {
		#if nodejs
		js.Node.process.stdout.write( str );
		#elseif sys
		Sys.print( str );
		#end
	}

	public static inline function println( str = '' ) {
		print( '$str\n');
	}

	public static inline function printCSI( str : String ) {
		print( csi( str ) );
	}

	// ---

	public static inline function beep() {
		print( ANSI.BELL );
	}

	public static inline function clear() {
		print( '\033c' );
	}

	public static inline function reset() {
		print( CSI + '0' + SUFFIX );
	}

	public static inline function title( str : String ) {
		print( ESCAPE + ']0;' + str + BELL );
	}

	// --- Colors

	public static inline function resetColor() {
		setColor( 39 );
	}

	public static inline function setColor( code : Int ) {
		//print( CSI + '38;5;' + color + 'm' );
		printCSI( code + 'm' );
	}

	public static inline function setBackgroundColor( color : om.term.ANSI.BackgroundColor = null ) {
		setColor( color );
	}

	public static inline function setColorRGB( r : Int, g : Int, b : Int ) {
		printCSI( '38;2;${r};${g};${b}m' );
	}

	// --- Style

	public static inline function bold() {
		printCSI( '' + 1 + 'm' );
	}

	public static inline function conceal() {
		printCSI( ''+Style.conceal+'m' );
	}

	public static inline function crossed() {
		printCSI( ''+Style.crossed_out+'m' );
	}

	public static inline function faint() {
		printCSI( ''+Style.faint+'m' );
	}

	public static inline function italic() {
		printCSI( ''+Style.italic+'m' );
	}

	public static inline function reverse() {
		printCSI( ''+Style.reverse+'m' );
	}

	public static inline function underline() {
		printCSI( ''+Style.underline+'m' );
	}

	// --- Cursor Position

	public static inline function up( n = 0 ) {
		printCSI( Std.string(n) + Control.up );
	}

	public static inline function down( n = 0 ) {
		printCSI( Std.string(n) + Control.down );
	}

	public static inline function back( n = 0 ) {
		printCSI( Std.string(n) + Control.back );
	}

	public static inline function forward( n = 0 ) {
		printCSI( Std.string(n) + Control.forward );
	}

	public static inline function nextLine() {
		printCSI( Control.nextLine );
	}

	public static inline function previousLine() {
		printCSI( Control.previousLine );
	}

	// ---

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

	/**
		Try to guess if your terminal supports unicode.
	*/
	public static function hasUnicode() : Bool {
		switch Sys.systemName() {
		case 'Windows_NT':
			return false;
		default:
			if( Sys.getEnv( 'LC_CTYPE' ) == 'UTF-8' )
				return true;
			var isUTF8 = ~/[.]UTF-8/;
			var LC_ALL = Sys.getEnv( 'LC_ALL' );
			if( LC_ALL != null && isUTF8.match( LC_ALL ) )
				return true;
			var LANG = Sys.getEnv( 'LANG' );
			if( LANG != null && isUTF8.match( LANG ) )
				return true;
		}
		return false;
	}

	// --- Layout TODO

	/*
	public static function columns() : Null<Int> {
	    var n = Sys.getEnv( 'COLUMNS' );
	    if( n == null )
	        return null;
	    return Std.parseInt(n);
    }
	*/

	// ----

	static inline function csi( str : String ) : String
		return ANSI.csi( str );

}
