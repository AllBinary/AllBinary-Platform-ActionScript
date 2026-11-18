// Generated Code Do Not Modify
package org.allbinary.logic.util.cache {

    public class PoolTypeFactory {
    private static var instance_value:PoolTypeFactory;
    private static var instance_set:Boolean = false;
    private static function get instance():PoolTypeFactory {
        if (!PoolTypeFactory.instance_set) {
            PoolTypeFactory.instance_set = true;
            PoolTypeFactory.instance_value = new PoolTypeFactory();
        }
        return PoolTypeFactory.instance_value;
    }
        public var VECTOR_POOL:PoolType = null;

        // Java field initializers run after the base constructor
        private function initFieldsPoolTypeFactory():void {
    this.VECTOR_POOL = new PoolType(CacheTypeFactory.getInstance().NO_CACHE);
        }

        public function PoolTypeFactory() {
            super();
            this.initFieldsPoolTypeFactory();
        }
    

    public static function getInstance():PoolTypeFactory {
        return PoolTypeFactory.instance;
    }
    }
}

