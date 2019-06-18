
import om.Term;
import om.term.Box;

class App {

    static function main() {

        var THEME_SINGLE = {
            t : '\u2500',
            b : '\u2500',
            r : '\u2502',
            l : '\u2502',
            tl : '\u250c',
            tr : '\u2510',
            bl : '\u2514',
            br : '\u2518'
        };

        var THEME_DOUBLE = {
            t : '═',
            b : '═',
            r : '║',
            l : '║',
            tl : '╔',
            tr : '╗',
            bl : '╚',
            br : '╝'
        };

        var THEME_ROUND = {
            t : '─',
            b : '─',
            r : '│',
            l : '│',
            tl : '╭',
            tr : '╮',
            bl : '╰',
            br : '╯'
        };

        var THEME_SINGLE_DOUBLE = {
            t : '─',
            b : '─',
            r : '║',
            l : '║',
            tl : '╓',
            tr : '╖',
            bl : '╙',
            br : '╜'
        };

        var THEME_DOUBLE_SINGLE = {
            t : '═',
            b : '═',
            r : '│',
            l : '│',
            tl : '╒',
            tr : '╕',
            bl : '╘',
            br : '╛'
        };

        var THEME_CLASSIC = {
            t : '─',
            b : '─',
            r : '│',
            l : '│',
            tl : '+',
            tr : '+',
            bl : '+',
            br : '+'
        };

        var THEME_ANTS = {
            t : '-',
            b : '-',
            r : '┊',
            l : '┊',
            tl : '+',
            tr : '+',
            bl : '+',
            br : '+'
        };

        function merge( boxes : Array<String>, indent = ' ', padding = ' ' ) {
            var boxLines = [];
            var maxLines = 0;
            for( box in boxes ) {
                var lines = box.split( '\n' );
                if( lines.length > maxLines ) maxLines = lines.length;
                boxLines.push( lines );
            }
            var a = [];
            for( i in 0...maxLines ) {
                if( a[i] == null ) a[i] = '';
                for( j in 0...boxes.length ) {
                    var l = boxLines[j][i];
                    if( l != null ) {
                        a[i] += l + indent;
                        if( j < boxes.length-1 ) a[i] += indent;
                    }
                }
            }
            for( i in 0...padding.length ) a.unshift( '\n' );
            for( i in 0...a.length ) a[i] = padding + a[i] + padding;
            for( i in 0...padding.length ) a.push( '\n' );
            return a.join( '\n' );
        }

        Sys.println( merge([
            Box.create( 4, 1, THEME_SINGLE ),
            Box.create( 4, 1, THEME_DOUBLE ),
            Box.create( 4, 1, THEME_ROUND ),
            Box.create( 4, 1, THEME_SINGLE_DOUBLE ),
            Box.create( 4, 1, THEME_DOUBLE_SINGLE ),
            Box.create( 4, 1, THEME_CLASSIC ),
            Box.create( 4, 1, THEME_ANTS ),
        ]) );
    }
    
}
