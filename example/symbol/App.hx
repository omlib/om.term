
import om.Term;

class App {

    static function main() {
		var map = om.AbstractEnumTools.toMap( om.term.Symbol );
		for( n in map.keys() ) {
			Term.println( map.get( n )+' : '+n );
		}
    }
}
