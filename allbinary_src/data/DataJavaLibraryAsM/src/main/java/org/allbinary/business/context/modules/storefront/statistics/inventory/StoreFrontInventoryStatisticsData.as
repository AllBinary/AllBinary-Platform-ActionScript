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
package org.allbinary.business.context.modules.storefront.statistics.inventory {

    public class StoreFrontInventoryStatisticsData {
    private static var instance_value:StoreFrontInventoryStatisticsData;
    private static var instance_set:Boolean = false;
    private static function get instance():StoreFrontInventoryStatisticsData {
        if (!StoreFrontInventoryStatisticsData.instance_set) {
            StoreFrontInventoryStatisticsData.instance_set = true;
            StoreFrontInventoryStatisticsData.instance_value = new StoreFrontInventoryStatisticsData();
        }
        return StoreFrontInventoryStatisticsData.instance_value;
    }
        public var NAME:String = null;
        public var NUMBEROFITEMS:String = null;
        public var TOTALVALUE:String = null;

        // Java field initializers run after the base constructor
        private function initFieldsStoreFrontInventoryStatisticsData():void {
    this.NAME = "STOREFRONT_INVENTORY_STATISTICS_NAME";
    this.NUMBEROFITEMS = "STOREFRONT_INVENTORY_STATISTICS_NUMBER_OF_ITEMS";
    this.TOTALVALUE = "STOREFRONT_INVENTORY_STATISTICS_TOTAL_VALUE";
        }
    

    public static function getInstance():StoreFrontInventoryStatisticsData {
        return StoreFrontInventoryStatisticsData.instance;
    }
    

    public function StoreFrontInventoryStatisticsData() {
        super();
        this.initFieldsStoreFrontInventoryStatisticsData();
    }
    }
}

