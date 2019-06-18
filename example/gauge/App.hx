
import om.term.Gauge;

class App {

    static function main() {

        var THEMES : Array<om.term.Gauge.Theme> = [
            {
                //startgroup: "╢",
                //endgroup:   "╟",
                complete:   "▓",
                incomplete: "░",
                //spinner:    "▀▐▄▌",
                //subsection: "→",
            },
            {
                startgroup: "|",
                endgroup:   "|",
                complete:   "#",
                incomplete: "-",
                //spinner:    "-\\|/",
                //subsection: "->",
            },
            {
                complete:   "▉",
                incomplete: "≡",
            }
        ];

        var gauges = new Array<Gauge>();
        for( theme in THEMES ) {
            gauges.push( new Gauge(32,theme) );
        }

        Sys.println('');

        var percent = 0;

        function update(){

            if( ++percent >= 100 ) percent = 0;

            var str = '';
            for( gauge in gauges ) str += ' '+gauge.update( percent );

            Sys.print( str+'\r' );

            #if sys
            Sys.sleep( 100/1000 );
            update();
            #end
        }

        #if nodejs
        var timer = new haxe.Timer( Std.int(100) );
        timer.run = update;
        #elseif sys
        update();
        #end
    }

}
