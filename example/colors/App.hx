
import Sys.println;
import om.term.ColorTool;

using om.term.ColorTool;

class App {

    static function main() {

        if( !ColorTool.isSupported() ) {
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
        //println( 'grey_light'.grey_light() );
        //println( 'grey_dark'.grey_dark() );
        println( 'white'.white() );

        println( '---' );

        println( 'bright_red'.bright_red() );
        println( 'bright_green'.bright_green() );
        println( 'bright_yellow'.bright_yellow() );

        println( '----------------' );

        println( 'black'.bg_black() );
        println( 'red'.bg_red() );
        println( 'green'.bg_green() );
        println( 'yellow'.bg_yellow() );
        println( 'blue'.bg_blue() );
        println( 'magenta'.bg_magenta() );
        println( 'cyan'.bg_cyan() );
        println( 'white'.bg_white() );

        println( '---' );

        println( 'bright_black'.bg_bright_black() );
        println( 'bright_red'.bg_bright_red() );
        println( 'bright_green'.bg_bright_green() );

        println( '----------------' );

        println( 'red-white'.red().bg_white() );
        println( 'red-white'.bg_white().red() );
    }
}
