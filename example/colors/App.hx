
import Sys.println;
import om.term.TermColorTool;

using om.term.TermColorTool;

class App {

    static function main() {

        if( !TermColorTool.isSupported() ) {
            println( 'Your operating system does not support terminal colors' );
            Sys.exit(1);
        }

        println( 'def'.def() );
        println( 'black'.black() );
        println( 'red'.red() );
        println( 'green'.green() );
        println( 'yellow'.yellow() );
        println( 'blue'.blue() );
        println( 'magenta'.magenta() );
        println( 'cyan'.cyan() );
        println( 'grey_light'.grey_light() );
        println( 'grey_dark'.grey_dark() );
        println( 'white'.white() );
    }
}
