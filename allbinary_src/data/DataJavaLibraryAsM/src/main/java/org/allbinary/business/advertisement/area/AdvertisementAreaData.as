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
package org.allbinary.business.advertisement.area {

    public class AdvertisementAreaData {
    private static var instance_value:AdvertisementAreaData;
    private static var instance_set:Boolean = false;
    private static function get instance():AdvertisementAreaData {
        if (!AdvertisementAreaData.instance_set) {
            AdvertisementAreaData.instance_set = true;
            AdvertisementAreaData.instance_value = new AdvertisementAreaData();
        }
        return AdvertisementAreaData.instance_value;
    }
        public var NAME:String = null;
        public var DESCRIPTION:String = null;
        public var CONSTRAINTS:String = null;

        // Java field initializers run after the base constructor
        private function initFieldsAdvertisementAreaData():void {
    this.NAME = "ADVERTISEMENT_NAME";
    this.DESCRIPTION = "ADVERTISEMENT_DESCRIPTION";
    this.CONSTRAINTS = "ADVERTISEMENT_CONSTRAINTS";
        }
    

    public static function getInstance():AdvertisementAreaData {
        return AdvertisementAreaData.instance;
    }
    

    public function AdvertisementAreaData() {
        super();
        this.initFieldsAdvertisementAreaData();
    }
    }
}

