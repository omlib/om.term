package om.term;

import sys.FileSystem;

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

    public static function writeFileSystemOpts( ?path : String ) : Array<String> {
        if( path == null ) path = Sys.getCwd();
        var opts = createFileSystemOpts( path );
        writeOpts( opts );
        return opts;
    }

    public static function createFileSystemOpts( path : String ) : Array<String> {
        var opts = new Array<String>();
        for( f in FileSystem.readDirectory( path ) )
            opts.push(  FileSystem.isDirectory( '$path/$f' ) ? '$f/' : f );
        return opts;
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
