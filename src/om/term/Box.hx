package om.term;

private typedef Theme = {
    var t : String;
    var tl : String;
    var tr : String;
    var r : String;
    var l : String;
    var b : String;
    var bl : String;
    var br : String;
}

class Box {

    public static function create( width : Int, height : Int, theme : Theme ) : String {

        var buf = new StringBuf();

        function repeat( s : String, n : Int ) for( i in 0...n ) buf.add( s );
        //? why not StringTools.rpad

        buf.add( theme.tl );
        repeat( theme.t, width-2 );
        buf.add( theme.tr );
        for( j in 0...height ) {
            buf.add( '\n'+theme.l );
            repeat( ' ', width-2 );
            buf.add( theme.r );
        }
        buf.add( '\n'+theme.bl );
        repeat( theme.b, width-2 );
        buf.add( theme.br );
        return buf.toString();
    }

}
