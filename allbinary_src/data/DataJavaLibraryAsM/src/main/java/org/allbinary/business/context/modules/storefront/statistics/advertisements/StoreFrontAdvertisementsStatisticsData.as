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
package org.allbinary.business.context.modules.storefront.statistics.advertisements {

    public class StoreFrontAdvertisementsStatisticsData {
    private static var instance_value:StoreFrontAdvertisementsStatisticsData;
    private static var instance_set:Boolean = false;
    private static function get instance():StoreFrontAdvertisementsStatisticsData {
        if (!StoreFrontAdvertisementsStatisticsData.instance_set) {
            StoreFrontAdvertisementsStatisticsData.instance_set = true;
            StoreFrontAdvertisementsStatisticsData.instance_value = new StoreFrontAdvertisementsStatisticsData();
        }
        return StoreFrontAdvertisementsStatisticsData.instance_value;
    }
        public var NAME:String = null;

        // Java field initializers run after the base constructor
        private function initFieldsStoreFrontAdvertisementsStatisticsData():void {
    this.NAME = "STOREFRONT_ADVERTISEMENTS_STATISTICS_NAME";
        }
    

    public static function getInstance():StoreFrontAdvertisementsStatisticsData {
        return StoreFrontAdvertisementsStatisticsData.instance;
    }
    

    public function StoreFrontAdvertisementsStatisticsData() {
        super();
        this.initFieldsStoreFrontAdvertisementsStatisticsData();
    }
    }
}

