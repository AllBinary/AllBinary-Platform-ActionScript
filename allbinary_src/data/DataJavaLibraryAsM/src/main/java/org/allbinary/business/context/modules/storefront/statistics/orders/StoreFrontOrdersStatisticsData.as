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
package org.allbinary.business.context.modules.storefront.statistics.orders {

    public class StoreFrontOrdersStatisticsData {
    private static var instance_value:StoreFrontOrdersStatisticsData;
    private static var instance_set:Boolean = false;
    private static function get instance():StoreFrontOrdersStatisticsData {
        if (!StoreFrontOrdersStatisticsData.instance_set) {
            StoreFrontOrdersStatisticsData.instance_set = true;
            StoreFrontOrdersStatisticsData.instance_value = new StoreFrontOrdersStatisticsData();
        }
        return StoreFrontOrdersStatisticsData.instance_value;
    }
        public var NAME:String = null;

        // Java field initializers run after the base constructor
        private function initFieldsStoreFrontOrdersStatisticsData():void {
    this.NAME = "STOREFRONT_ORDERS_STATISTICS_NAME";
        }
    

    public static function getInstance():StoreFrontOrdersStatisticsData {
        return StoreFrontOrdersStatisticsData.instance;
    }
    

    public function StoreFrontOrdersStatisticsData() {
        super();
        this.initFieldsStoreFrontOrdersStatisticsData();
    }
    }
}

