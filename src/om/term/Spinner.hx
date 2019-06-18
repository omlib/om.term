package om.term;

class Spinner {

    public var theme : Array<String>;
    //public var speed : Float;
    public var reverse : Bool;
    public var index : Int;

    public function new( theme : Array<String>, reverse = false ) {
        this.theme = theme;
        //this.speed = speed;
        this.reverse = reverse;
        index = 0;
    }

    public function step() : String {
        if( reverse ) {
            index = (index == 0) ? theme.length-1 : index-1;
        } else {
            if( ++index == theme.length ) index = 0;
        }
        var str = theme[index];
        return str;
    }

}
