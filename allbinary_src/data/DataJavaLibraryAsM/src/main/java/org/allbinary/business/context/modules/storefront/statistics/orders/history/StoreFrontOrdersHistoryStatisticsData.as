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
package org.allbinary.business.context.modules.storefront.statistics.orders.history {

    public class StoreFrontOrdersHistoryStatisticsData {
    private static var instance_value:StoreFrontOrdersHistoryStatisticsData;
    private static var instance_set:Boolean = false;
    private static function get instance():StoreFrontOrdersHistoryStatisticsData {
        if (!StoreFrontOrdersHistoryStatisticsData.instance_set) {
            StoreFrontOrdersHistoryStatisticsData.instance_set = true;
            StoreFrontOrdersHistoryStatisticsData.instance_value = new StoreFrontOrdersHistoryStatisticsData();
        }
        return StoreFrontOrdersHistoryStatisticsData.instance_value;
    }
        public var NAME:String = null;
        public var NUMBEROFORDERS:String = null;
        public var SUBTOTAL:String = null;
        public var SHIPPINGCOST:String = null;
        public var TAXES:String = null;
        public var TOTAL:String = null;

        // Java field initializers run after the base constructor
        private function initFieldsStoreFrontOrdersHistoryStatisticsData():void {
    this.NAME = "STOREFRONT_ORDERS_HISTORY_STATISTICS_NAME";
    this.NUMBEROFORDERS = "STOREFRONT_ORDERS_HISTORY_STATISTICS_NUMBER_OF_ORDERS";
    this.SUBTOTAL = "STOREFRONT_ORDERS_HISTORY_STATISTICS_SUBTOTAL";
    this.SHIPPINGCOST = "STOREFRONT_ORDERS_HISTORY_STATISTICS_SHIPPINGCOST";
    this.TAXES = "STOREFRONT_ORDERS_HISTORY_STATISTICS_TAXES";
    this.TOTAL = "STOREFRONT_ORDERS_HISTORY_STATISTICS_TOTAL";
        }
    

    public static function getInstance():StoreFrontOrdersHistoryStatisticsData {
        return StoreFrontOrdersHistoryStatisticsData.instance;
    }
    

    public function StoreFrontOrdersHistoryStatisticsData() {
        super();
        this.initFieldsStoreFrontOrdersHistoryStatisticsData();
    }
    }
}

