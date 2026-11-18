// Generated Code Do Not Modify
package org.allbinary.logic.util.cache {
    import org.allbinary.logic.string.StringUtil;

    public class CacheTypeFactory {
    private static var instance_value:CacheTypeFactory;
    private static var instance_set:Boolean = false;
    private static function get instance():CacheTypeFactory {
        if (!CacheTypeFactory.instance_set) {
            CacheTypeFactory.instance_set = true;
            CacheTypeFactory.instance_value = new CacheTypeFactory();
        }
        return CacheTypeFactory.instance_value;
    }
        public var NO_CACHE:CacheType = null;
        public var CACHE:CacheType = null;
        public var SET:CacheType = null;
        public var CACHE_VECTOR:CacheType = null;

        // Java field initializers run after the base constructor
        private function initFieldsCacheTypeFactory():void {
    this.NO_CACHE = new CacheType(StringUtil.getInstance().EMPTY_STRING, StringUtil.getInstance().EMPTY_STRING);
    this.CACHE = new CacheType(StringUtil.getInstance().EMPTY_STRING, StringUtil.getInstance().EMPTY_STRING);
    this.SET = new CacheType(StringUtil.getInstance().EMPTY_STRING, "Set");
    this.CACHE_VECTOR = new CacheType(StringUtil.getInstance().EMPTY_STRING, StringUtil.getInstance().EMPTY_STRING);
        }

        public function CacheTypeFactory() {
            super();
            this.initFieldsCacheTypeFactory();
        }
    

    public static function getInstance():CacheTypeFactory {
        return CacheTypeFactory.instance;
    }
    }
}

