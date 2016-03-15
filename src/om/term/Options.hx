package om.term;

import haxe.ds.StringMap;

class Options {

	public static var REGEXP(default,null) =  ~/^-?-([a-zA-Z0-9][a-zA-Z0-9_-]*)(\s*=\s*([a-zA-Z0-9_-]+))?$/;

	public static inline function args( str : String ) : Array<String>
		return ~/ +/g.split( str );

	public static inline function fromString( str : String ) : StringMap<String>
		return fromArgs( args( str ) );

	public static function fromArgs( #if (sys||nodejs) ? #end args : Array<String> ) : StringMap<String> {

		#if (sys||nodejs)
		if( args == null ) args = Sys.args();
		#end

		var opts = new StringMap<String>();
		for( i in 0...args.length ) {
			var arg = args[i];
			if( REGEXP.match( arg ) ) {
				var name = REGEXP.matched( 1 );
				var value = REGEXP.matched(3);
				if( value == null ) {
					if( i < args.length-1 ) {
						var next = args[i+1];
						if( !REGEXP.match( next ) ) {
							value = next;
						}
					}
					/*
					var j = i;
					while( j < args.length ) {
						var next = args[j];
						if( REGEXP.match( next ) ) {
							break;
						} else {
						}
					}
					*/
				}
				opts.set( name, value );
			}
		}
		return opts;
	}

}
