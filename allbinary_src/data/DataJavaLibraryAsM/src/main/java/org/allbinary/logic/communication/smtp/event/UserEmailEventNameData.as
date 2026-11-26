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
package org.allbinary.logic.communication.smtp.event {
    import java.util.JHashMap;
    import org.allbinary.business.user.commerce.inventory.order.OrderHistoryData;
    import org.allbinary.logic.StdUtil;

    public class UserEmailEventNameData {
    private static var userNameEvenNameHashMap_value:JHashMap;
    private static var userNameEvenNameHashMap_set:Boolean = false;
    private static function get userNameEvenNameHashMap():JHashMap {
        if (!UserEmailEventNameData.userNameEvenNameHashMap_set) {
            UserEmailEventNameData.userNameEvenNameHashMap_set = true;
            UserEmailEventNameData.userNameEvenNameHashMap_value = StdUtil.getInstance().createHashMap();
        }
        return UserEmailEventNameData.userNameEvenNameHashMap_value;
    }
    private static function set userNameEvenNameHashMap(value:JHashMap):void {
        UserEmailEventNameData.userNameEvenNameHashMap_set = true;
        UserEmailEventNameData.userNameEvenNameHashMap_value = value;
    }
    private static var nextId:int = 0;
    private static var INSTALLER_value:UserEmailEventNameData;
    private static var INSTALLER_set:Boolean = false;
    public static function get INSTALLER():UserEmailEventNameData {
        if (!UserEmailEventNameData.INSTALLER_set) {
            UserEmailEventNameData.INSTALLER_set = true;
            UserEmailEventNameData.INSTALLER_value = new UserEmailEventNameData("Installer");
        }
        return UserEmailEventNameData.INSTALLER_value;
    }
    private static var EXCEPTION_value:UserEmailEventNameData;
    private static var EXCEPTION_set:Boolean = false;
    public static function get EXCEPTION():UserEmailEventNameData {
        if (!UserEmailEventNameData.EXCEPTION_set) {
            UserEmailEventNameData.EXCEPTION_set = true;
            UserEmailEventNameData.EXCEPTION_value = new UserEmailEventNameData("Exception");
        }
        return UserEmailEventNameData.EXCEPTION_value;
    }
    private static var LOGGEDEXCEPTION_value:UserEmailEventNameData;
    private static var LOGGEDEXCEPTION_set:Boolean = false;
    public static function get LOGGEDEXCEPTION():UserEmailEventNameData {
        if (!UserEmailEventNameData.LOGGEDEXCEPTION_set) {
            UserEmailEventNameData.LOGGEDEXCEPTION_set = true;
            UserEmailEventNameData.LOGGEDEXCEPTION_value = new UserEmailEventNameData("Logged Exception");
        }
        return UserEmailEventNameData.LOGGEDEXCEPTION_value;
    }
    private static var ERROR_value:UserEmailEventNameData;
    private static var ERROR_set:Boolean = false;
    public static function get ERROR():UserEmailEventNameData {
        if (!UserEmailEventNameData.ERROR_set) {
            UserEmailEventNameData.ERROR_set = true;
            UserEmailEventNameData.ERROR_value = new UserEmailEventNameData("Error");
        }
        return UserEmailEventNameData.ERROR_value;
    }
    private static var OUTOFMEMORY_value:UserEmailEventNameData;
    private static var OUTOFMEMORY_set:Boolean = false;
    public static function get OUTOFMEMORY():UserEmailEventNameData {
        if (!UserEmailEventNameData.OUTOFMEMORY_set) {
            UserEmailEventNameData.OUTOFMEMORY_set = true;
            UserEmailEventNameData.OUTOFMEMORY_value = new UserEmailEventNameData("Out Of Memory Error");
        }
        return UserEmailEventNameData.OUTOFMEMORY_value;
    }
    private static var ADMINGENERATINGSTATICPAGES_value:UserEmailEventNameData;
    private static var ADMINGENERATINGSTATICPAGES_set:Boolean = false;
    public static function get ADMINGENERATINGSTATICPAGES():UserEmailEventNameData {
        if (!UserEmailEventNameData.ADMINGENERATINGSTATICPAGES_set) {
            UserEmailEventNameData.ADMINGENERATINGSTATICPAGES_set = true;
            UserEmailEventNameData.ADMINGENERATINGSTATICPAGES_value = new UserEmailEventNameData("Admin Generating Static Pages");
        }
        return UserEmailEventNameData.ADMINGENERATINGSTATICPAGES_value;
    }
    private static var STOREERROROCCURRED_value:UserEmailEventNameData;
    private static var STOREERROROCCURRED_set:Boolean = false;
    public static function get STOREERROROCCURRED():UserEmailEventNameData {
        if (!UserEmailEventNameData.STOREERROROCCURRED_set) {
            UserEmailEventNameData.STOREERROROCCURRED_set = true;
            UserEmailEventNameData.STOREERROROCCURRED_value = new UserEmailEventNameData("Store Error Occurred");
        }
        return UserEmailEventNameData.STOREERROROCCURRED_value;
    }
    private static var STOREOUTOFMEMORY_value:UserEmailEventNameData;
    private static var STOREOUTOFMEMORY_set:Boolean = false;
    public static function get STOREOUTOFMEMORY():UserEmailEventNameData {
        if (!UserEmailEventNameData.STOREOUTOFMEMORY_set) {
            UserEmailEventNameData.STOREOUTOFMEMORY_set = true;
            UserEmailEventNameData.STOREOUTOFMEMORY_value = new UserEmailEventNameData("Store Out Of Memory Error");
        }
        return UserEmailEventNameData.STOREOUTOFMEMORY_value;
    }
    private static var STORECREATED_value:UserEmailEventNameData;
    private static var STORECREATED_set:Boolean = false;
    public static function get STORECREATED():UserEmailEventNameData {
        if (!UserEmailEventNameData.STORECREATED_set) {
            UserEmailEventNameData.STORECREATED_set = true;
            UserEmailEventNameData.STORECREATED_value = new UserEmailEventNameData("Store Created");
        }
        return UserEmailEventNameData.STORECREATED_value;
    }
    private static var STOREOPENED_value:UserEmailEventNameData;
    private static var STOREOPENED_set:Boolean = false;
    public static function get STOREOPENED():UserEmailEventNameData {
        if (!UserEmailEventNameData.STOREOPENED_set) {
            UserEmailEventNameData.STOREOPENED_set = true;
            UserEmailEventNameData.STOREOPENED_value = new UserEmailEventNameData("Store Opened");
        }
        return UserEmailEventNameData.STOREOPENED_value;
    }
    private static var STORECLOSED_value:UserEmailEventNameData;
    private static var STORECLOSED_set:Boolean = false;
    public static function get STORECLOSED():UserEmailEventNameData {
        if (!UserEmailEventNameData.STORECLOSED_set) {
            UserEmailEventNameData.STORECLOSED_set = true;
            UserEmailEventNameData.STORECLOSED_value = new UserEmailEventNameData("Store Closed");
        }
        return UserEmailEventNameData.STORECLOSED_value;
    }
    private static var STOREGENERATINGSTATICPAGES_value:UserEmailEventNameData;
    private static var STOREGENERATINGSTATICPAGES_set:Boolean = false;
    public static function get STOREGENERATINGSTATICPAGES():UserEmailEventNameData {
        if (!UserEmailEventNameData.STOREGENERATINGSTATICPAGES_set) {
            UserEmailEventNameData.STOREGENERATINGSTATICPAGES_set = true;
            UserEmailEventNameData.STOREGENERATINGSTATICPAGES_value = new UserEmailEventNameData("Store Generating Static Pages");
        }
        return UserEmailEventNameData.STOREGENERATINGSTATICPAGES_value;
    }
    private static var PRODUCTISOUT_value:UserEmailEventNameData;
    private static var PRODUCTISOUT_set:Boolean = false;
    public static function get PRODUCTISOUT():UserEmailEventNameData {
        if (!UserEmailEventNameData.PRODUCTISOUT_set) {
            UserEmailEventNameData.PRODUCTISOUT_set = true;
            UserEmailEventNameData.PRODUCTISOUT_value = new UserEmailEventNameData("Product Is Out");
        }
        return UserEmailEventNameData.PRODUCTISOUT_value;
    }
    private static var PRODUCTISAVAILABLE_value:UserEmailEventNameData;
    private static var PRODUCTISAVAILABLE_set:Boolean = false;
    public static function get PRODUCTISAVAILABLE():UserEmailEventNameData {
        if (!UserEmailEventNameData.PRODUCTISAVAILABLE_set) {
            UserEmailEventNameData.PRODUCTISAVAILABLE_set = true;
            UserEmailEventNameData.PRODUCTISAVAILABLE_value = new UserEmailEventNameData("Product Is Available");
        }
        return UserEmailEventNameData.PRODUCTISAVAILABLE_value;
    }
    private static var PRODUCTISOLD_value:UserEmailEventNameData;
    private static var PRODUCTISOLD_set:Boolean = false;
    public static function get PRODUCTISOLD():UserEmailEventNameData {
        if (!UserEmailEventNameData.PRODUCTISOLD_set) {
            UserEmailEventNameData.PRODUCTISOLD_set = true;
            UserEmailEventNameData.PRODUCTISOLD_value = new UserEmailEventNameData("Product Is Old");
        }
        return UserEmailEventNameData.PRODUCTISOLD_value;
    }
    private static var PRODUCTISONSALE_value:UserEmailEventNameData;
    private static var PRODUCTISONSALE_set:Boolean = false;
    public static function get PRODUCTISONSALE():UserEmailEventNameData {
        if (!UserEmailEventNameData.PRODUCTISONSALE_set) {
            UserEmailEventNameData.PRODUCTISONSALE_set = true;
            UserEmailEventNameData.PRODUCTISONSALE_value = new UserEmailEventNameData("Product Is On Sale");
        }
        return UserEmailEventNameData.PRODUCTISONSALE_value;
    }
    private static var PRODUCTSALEISOVER_value:UserEmailEventNameData;
    private static var PRODUCTSALEISOVER_set:Boolean = false;
    public static function get PRODUCTSALEISOVER():UserEmailEventNameData {
        if (!UserEmailEventNameData.PRODUCTSALEISOVER_set) {
            UserEmailEventNameData.PRODUCTSALEISOVER_set = true;
            UserEmailEventNameData.PRODUCTSALEISOVER_value = new UserEmailEventNameData("Product Sale Is Over");
        }
        return UserEmailEventNameData.PRODUCTSALEISOVER_value;
    }
    private static var ORDERPREPROCESSING_value:UserEmailEventNameData;
    private static var ORDERPREPROCESSING_set:Boolean = false;
    public static function get ORDERPREPROCESSING():UserEmailEventNameData {
        if (!UserEmailEventNameData.ORDERPREPROCESSING_set) {
            UserEmailEventNameData.ORDERPREPROCESSING_set = true;
            UserEmailEventNameData.ORDERPREPROCESSING_value = new UserEmailEventNameData(OrderHistoryData.PREPROCESSING);
        }
        return UserEmailEventNameData.ORDERPREPROCESSING_value;
    }
    private static var ORDERPROCESSING_value:UserEmailEventNameData;
    private static var ORDERPROCESSING_set:Boolean = false;
    public static function get ORDERPROCESSING():UserEmailEventNameData {
        if (!UserEmailEventNameData.ORDERPROCESSING_set) {
            UserEmailEventNameData.ORDERPROCESSING_set = true;
            UserEmailEventNameData.ORDERPROCESSING_value = new UserEmailEventNameData(OrderHistoryData.PROCESSING);
        }
        return UserEmailEventNameData.ORDERPROCESSING_value;
    }
    private static var ORDERCANCELLED_value:UserEmailEventNameData;
    private static var ORDERCANCELLED_set:Boolean = false;
    public static function get ORDERCANCELLED():UserEmailEventNameData {
        if (!UserEmailEventNameData.ORDERCANCELLED_set) {
            UserEmailEventNameData.ORDERCANCELLED_set = true;
            UserEmailEventNameData.ORDERCANCELLED_value = new UserEmailEventNameData(OrderHistoryData.CANCELLED);
        }
        return UserEmailEventNameData.ORDERCANCELLED_value;
    }
    private static var ORDERPARTIALLYSHIPPED_value:UserEmailEventNameData;
    private static var ORDERPARTIALLYSHIPPED_set:Boolean = false;
    public static function get ORDERPARTIALLYSHIPPED():UserEmailEventNameData {
        if (!UserEmailEventNameData.ORDERPARTIALLYSHIPPED_set) {
            UserEmailEventNameData.ORDERPARTIALLYSHIPPED_set = true;
            UserEmailEventNameData.ORDERPARTIALLYSHIPPED_value = new UserEmailEventNameData(OrderHistoryData.PARTIALLYSHIPPED);
        }
        return UserEmailEventNameData.ORDERPARTIALLYSHIPPED_value;
    }
    private static var ORDERSHIPPED_value:UserEmailEventNameData;
    private static var ORDERSHIPPED_set:Boolean = false;
    public static function get ORDERSHIPPED():UserEmailEventNameData {
        if (!UserEmailEventNameData.ORDERSHIPPED_set) {
            UserEmailEventNameData.ORDERSHIPPED_set = true;
            UserEmailEventNameData.ORDERSHIPPED_value = new UserEmailEventNameData(OrderHistoryData.SHIPPED);
        }
        return UserEmailEventNameData.ORDERSHIPPED_value;
    }
    private static var QUOTEREQUEST_value:UserEmailEventNameData;
    private static var QUOTEREQUEST_set:Boolean = false;
    public static function get QUOTEREQUEST():UserEmailEventNameData {
        if (!UserEmailEventNameData.QUOTEREQUEST_set) {
            UserEmailEventNameData.QUOTEREQUEST_set = true;
            UserEmailEventNameData.QUOTEREQUEST_value = new UserEmailEventNameData("Quote Request");
        }
        return UserEmailEventNameData.QUOTEREQUEST_value;
    }
    private static var NEWPASSWORD_value:UserEmailEventNameData;
    private static var NEWPASSWORD_set:Boolean = false;
    public static function get NEWPASSWORD():UserEmailEventNameData {
        if (!UserEmailEventNameData.NEWPASSWORD_set) {
            UserEmailEventNameData.NEWPASSWORD_set = true;
            UserEmailEventNameData.NEWPASSWORD_value = new UserEmailEventNameData("New Password");
        }
        return UserEmailEventNameData.NEWPASSWORD_value;
    }
        private var eventNameId:int = 0;
        private var eventHandlerName:String = null;

        // Java field initializers run after the base constructor
        private function initFieldsUserEmailEventNameData():void {
    this.eventNameId = 0;
    
        }
    

    public function UserEmailEventNameData(eventHandlerName:String) {
        super();
        this.initFieldsUserEmailEventNameData();
        this.eventHandlerName = eventHandlerName;
        this.initNextId();
        UserEmailEventNameData.userNameEvenNameHashMap.put(this.eventHandlerName, this);
    }
    

    private function initNextId():void {
        this.eventNameId = UserEmailEventNameData.nextId;
        UserEmailEventNameData.nextId++;
    }
    

    public function isEvent(userEmailEventNameString:String):Boolean {
        return UserEmailEventNameData.userNameEvenNameHashMap.containsKey(userEmailEventNameString);
    }
    

    public static function getInstance1(userEmailEventNameString:String):UserEmailEventNameData {
        var userEmailEventNameData:UserEmailEventNameData = (UserEmailEventNameData.userNameEvenNameHashMap.get_(userEmailEventNameString) as UserEmailEventNameData);
        if (userEmailEventNameData == null) {
            throw new JException("Exception", "");
        } else {
            return userEmailEventNameData;
        }
    }
    

    public function toString():String {
        return this.eventHandlerName;
    }
    }
}

