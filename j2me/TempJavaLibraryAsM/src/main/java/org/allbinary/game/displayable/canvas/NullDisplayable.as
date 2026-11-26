// Generated Code Do Not Modify
package org.allbinary.game.displayable.canvas {
    import javax.microedition.lcdui.Canvas;
    import javax.microedition.lcdui.Graphics;

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
    

    override public function paint(...args):void {
        if (args.length == 1) {
            this.paint_jo1(args[0]);
            return;
        }
        super.paint.apply(this, args);
    }

    private function paint_jo1(graphics:Graphics):void {
    }
    }
}

