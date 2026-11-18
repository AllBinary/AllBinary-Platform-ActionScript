// Generated Code Do Not Modify
package org.allbinary.graphics.form {

    public class ScreenInfo {
    private static var instance_value:ScreenInfo;
    private static var instance_set:Boolean = false;
    private static function get instance():ScreenInfo {
        if (!ScreenInfo.instance_set) {
            ScreenInfo.instance_set = true;
            ScreenInfo.instance_value = new ScreenInfo();
        }
        return ScreenInfo.instance_value;
    }
        public var SMALL_WIDTH:int = 0;
        public var SMALL_HEIGHT:int = 0;
        public var MEDIUM_WIDTH:int = 0;
        public var MEDIUM_HEIGHT:int = 0;

        // Java field initializers run after the base constructor
        private function initFieldsScreenInfo():void {
    this.SMALL_WIDTH = 320;
    this.SMALL_HEIGHT = 240;
    this.MEDIUM_WIDTH = 800;
    this.MEDIUM_HEIGHT = 600;
        }

        public function ScreenInfo() {
            super();
            this.initFieldsScreenInfo();
        }
    

    public static function getInstance():ScreenInfo {
        return ScreenInfo.instance;
    }
    }
}

