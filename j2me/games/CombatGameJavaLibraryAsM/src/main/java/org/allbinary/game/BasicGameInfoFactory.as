// Generated Code Do Not Modify
package org.allbinary.game {

    public class BasicGameInfoFactory {
    private static var SINGLETON_value:BasicGameInfoFactory;
    private static var SINGLETON_set:Boolean = false;
    private static function get SINGLETON():BasicGameInfoFactory {
        if (!BasicGameInfoFactory.SINGLETON_set) {
            BasicGameInfoFactory.SINGLETON_set = true;
            BasicGameInfoFactory.SINGLETON_value = new BasicGameInfoFactory();
        }
        return BasicGameInfoFactory.SINGLETON_value;
    }
        public var currentReleaseIndex:int = 0;
        public var currentDestroyIndex:int = 0;
        public var total:int = 0;

        // Java field initializers run after the base constructor
        private function initFieldsBasicGameInfoFactory():void {
    this.currentReleaseIndex = 0;
    this.currentDestroyIndex = 0;
    this.total = 0;
        }
    

    public static function getInstance():BasicGameInfoFactory {
        return BasicGameInfoFactory.SINGLETON;
    }
    

    public function BasicGameInfoFactory() {
        super();
        this.initFieldsBasicGameInfoFactory();
    }
    

    public function init(total:int):void {
        this.currentReleaseIndex = 0;
        this.currentDestroyIndex = 0;
        this.total = total;
    }
    

    public function isPeaked():Boolean {
        if (this.currentDestroyIndex >= this.total) {
            return true;
        } else {
            return false;
        }
    }
    

    public function howManyLeft():int {
        return int(this.total - this.currentDestroyIndex);
    }
    }
}

