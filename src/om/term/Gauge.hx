package om.term;

typedef Theme = {
    @:optional var startgroup : String;
    @:optional var endgroup : String;
    var complete : String;
    var incomplete : String;
    //var spinner : String;
    //var subsection : String;
}


/**
    Terminal gauge / progress bar.
*/
class Gauge {

    public var size : Int;
    public var theme : Theme;
    //public var enabled : Bool;

    public function new( size : Int, theme : Theme ) {
        this.size = size;
        this.theme = theme;
    }

    public function update( percent : Int ) : String {
        var pos = Std.int( size/100*percent);
        var str = '';
        if( theme.startgroup != null ) str += theme.startgroup;
        for( i in 0...pos ) str += theme.complete;
        for( i in 0...(size-pos) ) str += theme.incomplete;
        if( theme.endgroup != null ) str += theme.endgroup;
        return str;
    }

}
