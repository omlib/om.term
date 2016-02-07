package om.term;

/**
    http://www.termsys.demon.co.uk/vtansi.htm#colors

    * bright    - brightens the color (bold-blue is same as brigthtBlue)
    * dim       - nothing on Mac or Linux
    * italic    - nothing on Mac or Linux
    * underline - underlines string
    * blink     - nothing on Mac or linux
    * inverse   - background becomes foreground and vice versa

    In summary, the only styles that work are: bright, underline and inverse.
    The others are only included for completeness

*/
class StyleTool {

    public static function style( str : String, style : Array<Int> ) : String {
        var buf = new StringBuf();
        buf.add( '\u001b[' );
        buf.add( style[0] );
        buf.add( 'm' );
        buf.add( str );
        buf.add( '\u001b[' );
        buf.add( style[1] );
        buf.add( 'm' );
        return buf.toString();
    }

    public static inline function reset( str : String ) return style( str, Style.reset );
    public static inline function bright( str : String ) return style( str, Style.bright );
    public static inline function dim( str : String ) return style( str, Style.dim );
    public static inline function italic( str : String ) return style( str, Style.italic );
    public static inline function underline( str : String ) return style( str, Style.underline );
    public static inline function blink( str : String ) return style( str, Style.blink );
    public static inline function inverse( str : String ) return style( str, Style.inverse );

}
