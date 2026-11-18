// Generated Code Do Not Modify
package org.allbinary.game.displayable.canvas {
    import org.allbinary.canvas.BaseGameStatistics;
    import org.allbinary.canvas.GameStatisticsFactory;

    //J2SEForJ2ME
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
        private var baseGameStatistics:BaseGameStatistics = null;

        // Java field initializers run after the base constructor
        private function initFieldsNullDisplayable():void {
    this.baseGameStatistics = GameStatisticsFactory.getInstance();
        }
    

    public static function getInstance():NullDisplayable {
        return NullDisplayable.SINGLETON;
    }
    

    public function NullDisplayable() {
        super();
        this.initFieldsNullDisplayable();
    }
    

    override public function paint(graphics:Graphics):void {
        this.baseGameStatistics.nextRefresh();
    }
    }
}

