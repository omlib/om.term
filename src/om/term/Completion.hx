package om.term;

class Completion {

    public static inline function writeOpts( words : Array<String> ) {
		write( words.join( " " ) );
	}

    public static inline function write( s : String ) {
        #if nodejs
		js.Node.process.stdout.write( s );
        #elseif sys
        Sys.stdout().writeString( s );
        #end
	}

    /*
    #if macro

    static function install( ?template : String, ?installPath : String ) {
        if( Sys.systemName() != 'Linux' )
            throw 'linux only';
        if( installPath == null )
            installPath = '/etc/bash_completion.d';
        //sys.io.File.copy( 'res/haxelib-completion.sh', '$installPath/haxelib' );
    }

    #end
    */

}
