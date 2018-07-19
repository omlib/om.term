package om;

#if macro
import haxe.macro.Context;
import haxe.macro.Expr;
using haxe.macro.ExprTools;
#end

import om.ansi.BackgroundColor;
import om.ansi.Code;
import om.ansi.Color;
import om.ansi.EscapeSequence;
import om.ansi.EscapeSequence.CSI;
import om.ansi.Style;

class Term {

	macro static function mkstr( rest : Array<ExprOf<String>> ) : ExprOf<String> {
		return macro $v{ rest.map( e -> return e.getValue() ).join('') };
	}

    public static inline function print( v : String ) {
		#if nodejs
		js.Node.process.stdout.write( v );
		#elseif sys
		std.Sys.print( v );
		#end
	}

    public static inline function println( v : String ) {
        #if nodejs
        js.Node.process.stdout.write( v+"\n" );
        #elseif sys
        std.Sys.println( v );
        #end
	}

	public static inline function prcsi( s : String )
		print( CSI + s );

    public static inline function prbr()
		print( '\n' );

	public static inline function beep()
		print( Code.BEL );

	public static inline function clear()
		print( '\033c' );

	public static inline function reset()
		print( mkstr( '\x1B[', '0m' ) );


    /// Style

	public static inline function color( color : Color = Color.default_ )
		prcsi( color + 'm' );

	public static inline function background( color : BackgroundColor = BackgroundColor.default_ )
		prcsi( color + 'm' );

	public static inline function rgb( r : Int, g : Int, b : Int )
		prcsi( '38;2;${r};${g};${b}m' );

	public static inline function style( attr : Array<Style> )
		prcsi( attr.join(';') + 'm' );

	/*
    public static inline function reverseVideo() {
        print( CSI + '7m' );
    }
	*/


	/// Display

	public static inline function eraseLineToEnd()
		prcsi( 'K' );

	public static inline function eraseLineToCursor()
		prcsi( '1K' );

	public static inline function eraseLine()
		prcsi( '2K' );

	public static inline function eraseDisplay()
		prcsi( '2J' );

	public static inline function eraseDisplaytoCursor()
		prcsi( '1J' );

	public static inline function eraseDisplayToEnd()
		prcsi( 'J' );


    /// Cursor

    public static inline function showCursor()
        prcsi( '?25h' );

    public static inline function hideCursor()
        prcsi( '?25l' );

    public static inline function cursorBackward( n = 1 )
        prcsi( n + 'D' );

    public static inline function cursorForward( n = 1 )
        prcsi( n + 'C' );

    public static inline function cursorUp( n = 1 )
        prcsi( n + 'A' );

    public static inline function cursorDown( n = 1 )
        prcsi( n + 'B' );

    public static inline function saveCursorPosition()
        prcsi( 's' );

    public static inline function restoreCursorPosition()
        prcsi( 'u' );

	//---

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
