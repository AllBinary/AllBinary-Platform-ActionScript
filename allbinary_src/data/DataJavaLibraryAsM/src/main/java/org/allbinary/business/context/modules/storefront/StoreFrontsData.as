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
package org.allbinary.business.context.modules.storefront {

    public class StoreFrontsData {
    private static var instance_value:StoreFrontsData;
    private static var instance_set:Boolean = false;
    private static function get instance():StoreFrontsData {
        if (!StoreFrontsData.instance_set) {
            StoreFrontsData.instance_set = true;
            StoreFrontsData.instance_value = new StoreFrontsData();
        }
        return StoreFrontsData.instance_value;
    }
        public var TYPE:String = null;
        public var RETAIL:String = null;
        public var SUBSCRIPTION:String = null;
        public var AUCTION:String = null;
        public var NEWS:String = null;
        public var BLOG:String = null;
        public var FORUM:String = null;

        // Java field initializers run after the base constructor
        private function initFieldsStoreFrontsData():void {
    this.TYPE = "STOREFRONTS_TYPE";
    this.RETAIL = "STOREFRONTS_RETAIL";
    this.SUBSCRIPTION = "STOREFRONTS_SUBSCRIPTION";
    this.AUCTION = "STOREFRONTS_AUCTION";
    this.NEWS = "STOREFRONTS_NEWS";
    this.BLOG = "STOREFRONTS_BLOG";
    this.FORUM = "STOREFRONTS_FORUM";
        }

        public function StoreFrontsData() {
            super();
            this.initFieldsStoreFrontsData();
        }
    

    public static function getInstance():StoreFrontsData {
        return StoreFrontsData.instance;
    }
    }
}

