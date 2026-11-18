/*
 *
 * AllBinary Open License Version 1
 * Copyright (c) 2011 AllBinary
 * 
 * By agreeing to this license you and any business entity you represent are
 * legally bound to the AllBinary Open License Version 1 legal agreement.
 * 
 * You may obtain the AllBinary Open License Version 1 legal agreement from
 * AllBinary or the root directory of AllBinary's AllBinary Platform repository.
 * 
 * Created By: Travis Berthelot
 *  
 */
// Generated Code Do Not Modify
package org.allbinary.logic.util.cache {
    import java.lang.JLong;

    public class CachePolicyFactory {
    private static var instance_value:CachePolicyFactory;
    private static var instance_set:Boolean = false;
    private static function get instance():CachePolicyFactory {
        if (!CachePolicyFactory.instance_set) {
            CachePolicyFactory.instance_set = true;
            CachePolicyFactory.instance_value = new CachePolicyFactory();
        }
        return CachePolicyFactory.instance_value;
    }
        public var NAME:String = null;
        public var MAX_TIME_THOUSAND_MAX:CachePolicy = null;
        public var THIRTY_MINUTES_TEN_THOUSAND_MAX:CachePolicy = null;
        public var THIRTY_MINUTES_FIFTY_THOUSAND_MAX:CachePolicy = null;
        public var ONE_MINUTE_FIVE_MAX:CachePolicy = null;
        public var ONE_MINUTE_TEN_MAX:CachePolicy = null;
        public var ONE_MINUTE_ONE_HUNDRED_MAX:CachePolicy = null;

        // Java field initializers run after the base constructor
        private function initFieldsCachePolicyFactory():void {
    this.NAME = "lru";
    this.MAX_TIME_THOUSAND_MAX = new CachePolicy(this.NAME, JLong.MAX_VALUE, 1000);
    this.THIRTY_MINUTES_TEN_THOUSAND_MAX = new CachePolicy(this.NAME, int(int(1000 * 60) * 30), 10000);
    this.THIRTY_MINUTES_FIFTY_THOUSAND_MAX = new CachePolicy(this.NAME, int(int(1000 * 60) * 30), 100000);
    this.ONE_MINUTE_FIVE_MAX = new CachePolicy(this.NAME, int(int(1000 * 60) * 1), 5);
    this.ONE_MINUTE_TEN_MAX = new CachePolicy(this.NAME, int(int(1000 * 60) * 1), 10);
    this.ONE_MINUTE_ONE_HUNDRED_MAX = new CachePolicy(this.NAME, int(int(1000 * 60) * 1), 100);
        }

        public function CachePolicyFactory() {
            super();
            this.initFieldsCachePolicyFactory();
        }
    

    public static function getInstance():CachePolicyFactory {
        return CachePolicyFactory.instance;
    }
    }
}

