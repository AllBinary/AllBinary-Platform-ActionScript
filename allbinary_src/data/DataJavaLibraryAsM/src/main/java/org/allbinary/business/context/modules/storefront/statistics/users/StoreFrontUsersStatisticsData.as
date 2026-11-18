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
package org.allbinary.business.context.modules.storefront.statistics.users {

    public class StoreFrontUsersStatisticsData {
    private static var instance_value:StoreFrontUsersStatisticsData;
    private static var instance_set:Boolean = false;
    private static function get instance():StoreFrontUsersStatisticsData {
        if (!StoreFrontUsersStatisticsData.instance_set) {
            StoreFrontUsersStatisticsData.instance_set = true;
            StoreFrontUsersStatisticsData.instance_value = new StoreFrontUsersStatisticsData();
        }
        return StoreFrontUsersStatisticsData.instance_value;
    }
        public var NAME:String = null;
        public var NUMBEROFUSERS:String = null;

        // Java field initializers run after the base constructor
        private function initFieldsStoreFrontUsersStatisticsData():void {
    this.NAME = "STOREFRONT_USERS_STATISTICS_NAME";
    this.NUMBEROFUSERS = "STOREFRONT_USERS_STATISTICS_NUMBER_OF_USERS";
        }
    

    public function StoreFrontUsersStatisticsData() {
        super();
        this.initFieldsStoreFrontUsersStatisticsData();
    }
    

    public static function getInstance():StoreFrontUsersStatisticsData {
        return StoreFrontUsersStatisticsData.instance;
    }
    }
}

