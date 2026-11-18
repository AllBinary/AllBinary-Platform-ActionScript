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
package org.allbinary.business.advertisement.campaign {

    public class AdvertisementCampaignData {
    private static var instance_value:AdvertisementCampaignData;
    private static var instance_set:Boolean = false;
    private static function get instance():AdvertisementCampaignData {
        if (!AdvertisementCampaignData.instance_set) {
            AdvertisementCampaignData.instance_set = true;
            AdvertisementCampaignData.instance_value = new AdvertisementCampaignData();
        }
        return AdvertisementCampaignData.instance_value;
    }
        public var NAME:String = null;
        public var DESCRIPTION:String = null;
        public var CONFIG:String = null;

        // Java field initializers run after the base constructor
        private function initFieldsAdvertisementCampaignData():void {
    this.NAME = "ADVERTISEMENTCAMPAIGN_NAME";
    this.DESCRIPTION = "ADVERTISEMENTCAMPAIGN_DESCRIPTION";
    this.CONFIG = "ADVERTISEMENTCAMPAIGN_CONFIG";
        }
    

    public static function getInstance():AdvertisementCampaignData {
        return AdvertisementCampaignData.instance;
    }
    

    public function AdvertisementCampaignData() {
        super();
        this.initFieldsAdvertisementCampaignData();
    }
    }
}

