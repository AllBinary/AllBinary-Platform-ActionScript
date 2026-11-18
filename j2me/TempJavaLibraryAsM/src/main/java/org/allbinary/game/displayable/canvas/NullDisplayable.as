// Generated Code Do Not Modify
package org.allbinary.game.displayable.canvas {

    //Temp should not be in any build
    public class NullDisplayable extends Canvas {
    private static var SINGLETON_value:NullDisplayable;
    private static var SINGLETON_set:Boolean = false;
    private static function get SINGLETON():NullDisplayable {
        if (!NullDisplayable.SINGLETON_set) {
            NullDisplayable.SINGLETON_set = true;
            NullDisplayable.SINGLETON_value = new NullDisplayable();
        }
        return NullDisplayable.SINGLETON_value;
    }
    

    public static function getInstance():NullDisplayable {
        return NullDisplayable.SINGLETON;
    }
    

    public function NullDisplayable() {
        super();
    }
    

    override public function paint(graphics:Graphics):void {
    }
    }
}

