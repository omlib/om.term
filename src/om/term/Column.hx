package om.term;

class Column {

    public static function create( data : Array<Dynamic>, filters : Array<String>, indent : Null<Int> = 1, ?minWidth : Int, ?maxWidth : Int ) : String {

        var rows = new Array<Array<String>>();
        var widths = [for(i in 0...filters.length) 0]; // column widths

        for( obj in data ) {
            var values = new Array<String>();
            for( i in 0...filters.length ) {
                var f = filters[i];
                var v = Reflect.field( obj, f );
                if( v != null ) {
                    values.push( v );
                    if( v.length > widths[i] ) widths[i] = v.length;
                } else {
                    values.push( '' );
                }
            }
            rows.push( values );
        }

        var lines = new Array<String>();
        var line : String = null;
        var row : Array<String> = null;
        for( i in 0...rows.length ) {
            row = rows[i];
            line = '';
            for( j in 0...row.length ) {
                var v = row[j];
                if( v == null ) v = '';
                //line += v;
                if( j != row.length-1 ) {
                    var d = widths[j] - v.length;
                    if( minWidth != null ) {
                        var len = (v.length + d);
                        var d2 = minWidth - len;
                        if( d2 > 0 ) d += d2;
                    } else {
                    }
                    for( i in 0...d ) v += ' ';
                    if( maxWidth != null && v.length > maxWidth ) v = v.substr( 0, maxWidth-1 );
                    if( indent != null ) for( i in 0...indent ) v += ' ';
                }
                line += v;
            }
            lines.push( line );
        }

        return lines.join('\n');
    }

}
