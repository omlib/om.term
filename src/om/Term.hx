package om;

class Term {

    /**
        Try to guess if your terminal supports unicode.
    */
    public static function hasUnicode() : Bool {
        switch Sys.systemName() {
        case 'Windows_NT':
            return false;
        default:
            if( Sys.getEnv( 'LC_CTYPE' ) == 'UTF-8' )
                return true;
            var isUTF8 = ~/[.]UTF-8/;
            var LC_ALL = Sys.getEnv( 'LC_ALL' );
            if( LC_ALL != null && isUTF8.match( LC_ALL ) )
                return true;
            var LANG = Sys.getEnv( 'LANG' );
            if( LANG != null && isUTF8.match( LANG ) )
                return true;
        }
        return false;
    }

}
