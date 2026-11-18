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
package org.allbinary.business.advertisement {

    public class AdvertisementData {
    private static var instance_value:AdvertisementData;
    private static var instance_set:Boolean = false;
    private static function get instance():AdvertisementData {
        if (!AdvertisementData.instance_set) {
            AdvertisementData.instance_set = true;
            AdvertisementData.instance_value = new AdvertisementData();
        }
        return AdvertisementData.instance_value;
    }
        public var NAME:String = null;
        public var DESCRIPTION:String = null;

        // Java field initializers run after the base constructor
        private function initFieldsAdvertisementData():void {
    this.NAME = "ADVERTISEMENT_NAME";
    this.DESCRIPTION = "ADVERTISEMENT_DESCRIPTION";
        }
    

    public static function getInstance():AdvertisementData {
        return AdvertisementData.instance;
    }
    

    public function AdvertisementData() {
        super();
        this.initFieldsAdvertisementData();
    }
    }
}

