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
package org.allbinary.business.context.modules.storefront.statistics {

    public class StoreFrontStatisticsData {
    private static var instance_value:StoreFrontStatisticsData;
    private static var instance_set:Boolean = false;
    private static function get instance():StoreFrontStatisticsData {
        if (!StoreFrontStatisticsData.instance_set) {
            StoreFrontStatisticsData.instance_set = true;
            StoreFrontStatisticsData.instance_value = new StoreFrontStatisticsData();
        }
        return StoreFrontStatisticsData.instance_value;
    }
        public var NAME:String = null;

        // Java field initializers run after the base constructor
        private function initFieldsStoreFrontStatisticsData():void {
    this.NAME = "STOREFRONT_STATISTICS_NAME";
        }
    

    public static function getInstance():StoreFrontStatisticsData {
        return StoreFrontStatisticsData.instance;
    }
    

    public function StoreFrontStatisticsData() {
        super();
        this.initFieldsStoreFrontStatisticsData();
    }
    }
}

