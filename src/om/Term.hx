package om;

#if (sys||nodejs)

import om.term.ANSI;
import om.term.ANSI.BELL;
import om.term.ANSI.CSI;
import om.term.ANSI.ESCAPE;
import om.term.ANSI.SUFFIX;

class Term {

	//var _color : Color;
	//var _background : BackgroundColor;

	public function new() {
	}

	public inline function csi( str : String ) : Term {
		print( CSI + str );
		return this;
	}

	/*
	public inline function set( code : Int ) {
		print( CSI + code );
		return this;
    }
	*/

	public inline function beep() : Term {
        return print( '\x07' );
    }

	public inline function title( str : String ) : Term {
		return print( ESCAPE + ']0;' + str + BELL );
	}

	/// --- Cursor Position

	public inline function up( n = 0 ) : Term {
		return csi( Std.string(n) + Control.up );
	}

	public inline function down( n = 0 ) : Term {
		return csi( Std.string(n) + Control.down );
	}

	public inline function back( n = 0 ) : Term {
		return csi( Std.string(n) + Control.back );
	}

	public inline function forward( n = 0 ) : Term {
		return csi( Std.string(n) + Control.forward );
	}

	public inline function nextLine() : Term {
		return csi( Control.nextLine );
	}

	public inline function previousLine() : Term {
		return csi( Control.previousLine );
	}

	/// ---

	/*
	public inline function eraseChar() : Term {
        return csi( '0K' );
		return this;
    }
	*/

	public inline function clear() : Term {
		return print( '\033c' );
	}

	/// --- Colors

	/*
	public inline function rgb( r : Int, g : Int, b : Int ) {
		print( CSI + '38;2;'+'$r;$g;$b'+'m' );
		return this;
	}
	*/

	public function setColor( code : Int ) : Term {
		return csi( code + 'm' );
	}

	public inline function fg( color : Int = null ) : Term {
		//print( CSI + '38;5;' + color + 'm' );
		return setColor( color );
    }

	public inline function bg( color : Int = null ) : Term {
		return setColor( color );
    }

	/*
	public inline function resetColor() {
		return setColor( 39 );
	}
	*/

	/// --- Style

	public inline function bold() : Term {
		print( CSI+''+1+'m' );
		return this;
	}

	public inline function faint() : Term {
		print( CSI+''+Style.faint+'m' );
		return this;
	}

	public inline function italic() : Term {
		print( CSI+''+Style.italic+'m' );
		return this;
	}

	public inline function underline() : Term {
		print( CSI+''+Style.underline+'m' );
		return this;
	}

	public inline function reverse() : Term {
		print( CSI+''+Style.reverse+'m' );
		return this;
	}

	public inline function conceal() : Term {
		print( CSI+''+Style.conceal+'m' );
		return this;
	}

	public inline function crossed() : Term {
		return print( CSI+''+Style.crossed_out+'m' );
	}

	/// ---

	public inline function reset() {
		return print( CSI + '0' + SUFFIX );
	}

	/// ---

	public inline function println( str = '' ) : Term {
		return print( str + '\n');
	}

	public inline function print( str : String ) : Term {
		#if nodejs
		js.Node.process.stdout.write( str );
		#elseif sys
		Sys.print( str );
		#end
		return this;
	}

	// ---

	public static function columns() : Int {
	    var n = Sys.getEnv( 'COLUMNS' );
	    if( n == null )
	        return null;
	    return Std.parseInt(n);
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

}

#end
