package om.term;

/**
    Terminal output colorizing.
    Surrounds strings with ansicolor codes.

    Usage:
        Sys.println( TermColorTool.red('abc') );
        Sys.println( 'abc'.red() );
*/
class ColorTool {

    /**
        Wraps given string with color definitions.
    */
    public static function color( str : String, color : Color ) : String {
        var buf = new StringBuf();
        buf.add( '\u001b[' );
        buf.add( color );
        buf.add( 'm' );
        buf.add( str );
        buf.add( '\u001b[39m' );
        return buf.toString();
    }

    /**
        Wraps given string with background color definitions.
    */
    public static function backgroundColor( str : String, color : BackgroundColor ) : String {
        var buf = new StringBuf();
        buf.add( '\u001b[' );
        buf.add( color );
        buf.add( 'm' );
        buf.add( str );
        buf.add( '\u001b[49m' );
        return buf.toString();
    }

    public static inline function def( str : String ) return color( str, Color.def );
    public static inline function black( str : String ) return color( str, Color.black );
    public static inline function red( str : String ) return color( str, Color.red );
    public static inline function green( str : String ) return color( str, Color.green );
    public static inline function yellow( str : String ) return color( str, Color.yellow );
    public static inline function blue( str : String ) return color( str, Color.blue );
    public static inline function magenta( str : String ) return color( str, Color.magenta );
    public static inline function cyan( str : String ) return color( str, Color.cyan );
    public static inline function white( str : String ) return color( str, Color.white );

    public static inline function bright_black( str : String ) return color( str, Color.bright_black );
    public static inline function bright_red( str : String ) return color( str, Color.bright_red );
    public static inline function bright_green( str : String ) return color( str, Color.bright_green );
    public static inline function bright_yellow( str : String ) return color( str, Color.bright_yellow );
    public static inline function bright_blue( str : String ) return color( str, Color.bright_blue );
    public static inline function bright_magenta( str : String ) return color( str, Color.bright_magenta );
    public static inline function bright_cyan( str : String ) return color( str, Color.bright_cyan );
    public static inline function bright_white( str : String ) return color( str, Color.bright_white );

    public static inline function bg_black( str : String ) return backgroundColor( str, BackgroundColor.black );
    public static inline function bg_red( str : String ) return backgroundColor( str, BackgroundColor.red );
    public static inline function bg_green( str : String ) return backgroundColor( str, BackgroundColor.green );
    public static inline function bg_yellow( str : String ) return backgroundColor( str, BackgroundColor.yellow );
    public static inline function bg_blue( str : String ) return backgroundColor( str, BackgroundColor.blue );
    public static inline function bg_magenta( str : String ) return backgroundColor( str, BackgroundColor.magenta );
    public static inline function bg_cyan( str : String ) return backgroundColor( str, BackgroundColor.cyan );
    public static inline function bg_white( str : String ) return backgroundColor( str, BackgroundColor.white );

    public static inline function bg_bright_black( str : String ) return backgroundColor( str, BackgroundColor.bright_black );
    public static inline function bg_bright_red( str : String ) return backgroundColor( str, BackgroundColor.bright_red );
    public static inline function bg_bright_green( str : String ) return backgroundColor( str, BackgroundColor.bright_green );
    public static inline function bg_bright_yellow( str : String ) return backgroundColor( str, BackgroundColor.bright_yellow );
    public static inline function bg_bright_blue( str : String ) return backgroundColor( str, BackgroundColor.bright_blue );
    public static inline function bg_bright_magenta( str : String ) return backgroundColor( str, BackgroundColor.bright_magenta );
    public static inline function bg_bright_cyan( str : String ) return backgroundColor( str, BackgroundColor.bright_cyan );
    public static inline function bg_bright_white( str : String ) return backgroundColor( str, BackgroundColor.bright_white );

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

}
