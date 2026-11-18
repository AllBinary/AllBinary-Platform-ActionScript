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
package org.allbinary.business.advertisement.search {

    public class AdvertisementSearchData {
    private static var instance_value:AdvertisementSearchData;
    private static var instance_set:Boolean = false;
    private static function get instance():AdvertisementSearchData {
        if (!AdvertisementSearchData.instance_set) {
            AdvertisementSearchData.instance_set = true;
            AdvertisementSearchData.instance_value = new AdvertisementSearchData();
        }
        return AdvertisementSearchData.instance_value;
    }
        public var TITLE:String = null;
        public var PRICE:String = null;
        public var RELEVANCY:String = null;
        public var POPULARITY:String = null;

        // Java field initializers run after the base constructor
        private function initFieldsAdvertisementSearchData():void {
    this.TITLE = "AFFILIATE_TITLE";
    this.PRICE = "AFFILIATE_PRICE";
    this.RELEVANCY = "AFFILIATE_RELEVANCY";
    this.POPULARITY = "AFFILIATE_POPULARITY";
        }
    

    public static function getInstance():AdvertisementSearchData {
        return AdvertisementSearchData.instance;
    }
    

    public function AdvertisementSearchData() {
        super();
        this.initFieldsAdvertisementSearchData();
    }
    }
}

