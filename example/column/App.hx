
import om.term.Column;

class App {

    static function main() {

		var s = om.term.Column.create(
			[
				{ name: 'some', description: 'Some description', version: '0.1.0' },
				{ name: 'another', description: 'Another description', version: '3.7.0' },
				{ name: 'more', description: 'Some description', version: '666' },
			],
			[ 'name', 'description', 'version' ],
			3, 4, 50
		);

		Sys.println( s );

		/*
        var fields = ['name','description','version'];
        var str = om.term.Layout.column([
            {
                name: 'some',
                description: 'Some description',
                version: '0.1.0'
            },
            {
                name: 'another',
                description: 'Another description',
                version: '3.4.0'
            },
            {
                name: 'more',
                version: '1.2.0'
            }
        ], fields, 3, 4, 50 );

        Sys.println( str );
		*/

    }
}
