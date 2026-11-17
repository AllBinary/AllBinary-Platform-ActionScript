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
package org.allbinary.business.user.role {

    public class BasicUserRoleFactory {
    private static var instance_value:BasicUserRoleFactory;
    private static var instance_set:Boolean = false;
    private static function get instance():BasicUserRoleFactory {
        if (!BasicUserRoleFactory.instance_set) {
            BasicUserRoleFactory.instance_set = true;
            BasicUserRoleFactory.instance_value = new BasicUserRoleFactory();
        }
        return BasicUserRoleFactory.instance_value;
    }
        private var INACTIVITYTIMEOUT:Number = 0;
        private var CUSTOMERTIMEOUT:Number = 0;
        private var CUSTOMERMAXSESSIONTIME:Number = 0;
        private var MAXSESSIONTIME:Number = 0;
        public var INSTALLER:BasicUserRole = null;
        public var ADMINISTRATOR:BasicUserRole = null;
        public var CUSTOMER:BasicUserRole = null;
        public var SUBSCRIBERCUSTOMER:BasicUserRole = null;
        public var WHOLESALECUSTOMER:BasicUserRole = null;
        public var STOREMANAGER:BasicUserRole = null;
        public var PRODUCTMANAGER:BasicUserRole = null;
        public var CUSTOMERMANAGER:BasicUserRole = null;
        public var PAYMENTMANAGER:BasicUserRole = null;
        public var ORDERMANAGER:BasicUserRole = null;
        public var WEBMANAGER:BasicUserRole = null;
        public var REVIEWER:BasicUserRole = null;
        public var SHIPPING:BasicUserRole = null;
        public var ADJUSTER:BasicUserRole = null;
        public var WORKFLOWEDITOR:BasicUserRole = null;
        public var WIZARD:BasicUserRole = null;
        public var VIEWEDITOR:BasicUserRole = null;

        // Java field initializers run after the base constructor
        private function initFieldsBasicUserRoleFactory():void {
    this.INACTIVITYTIMEOUT = 360000000;
    this.CUSTOMERTIMEOUT = 360000000;
    this.CUSTOMERMAXSESSIONTIME = 360000000;
    this.MAXSESSIONTIME = 360000000;
    this.INSTALLER = new BasicUserRole("Installer", 16, this.MAXSESSIONTIME, this.INACTIVITYTIMEOUT);
    this.ADMINISTRATOR = new BasicUserRole("Administrator", 0, this.MAXSESSIONTIME, this.INACTIVITYTIMEOUT);
    this.CUSTOMER = new BasicUserRole("CustomerUser", "Customer User", 1, this.CUSTOMERTIMEOUT, this.CUSTOMERMAXSESSIONTIME);
    this.SUBSCRIBERCUSTOMER = new BasicUserRole("SubscriberUser", "Subscriber User", 2, this.CUSTOMERTIMEOUT, this.CUSTOMERMAXSESSIONTIME);
    this.WHOLESALECUSTOMER = new BasicUserRole("WholesaleUser", "Wholesale User", 3, this.CUSTOMERTIMEOUT, this.CUSTOMERMAXSESSIONTIME);
    this.STOREMANAGER = new BasicUserRole("StoreManager", "Store Manager", 4, this.MAXSESSIONTIME, this.INACTIVITYTIMEOUT);
    this.PRODUCTMANAGER = new BasicUserRole("ProductManager", "Product Manager", 5, this.MAXSESSIONTIME, this.INACTIVITYTIMEOUT);
    this.CUSTOMERMANAGER = new BasicUserRole("UserManager", "User Manager", 6, this.MAXSESSIONTIME, this.INACTIVITYTIMEOUT);
    this.PAYMENTMANAGER = new BasicUserRole("PaymentManager", "Payment Manager", 7, this.MAXSESSIONTIME, this.INACTIVITYTIMEOUT);
    this.ORDERMANAGER = new BasicUserRole("OrderManager", "Order Manager", 8, this.MAXSESSIONTIME, this.INACTIVITYTIMEOUT);
    this.WEBMANAGER = new BasicUserRole("WebManager", "Web Manager", 9, this.MAXSESSIONTIME, this.INACTIVITYTIMEOUT);
    this.REVIEWER = new BasicUserRole("Reviewer", 10, this.MAXSESSIONTIME, this.INACTIVITYTIMEOUT);
    this.SHIPPING = new BasicUserRole("Shipping", 11, this.MAXSESSIONTIME, this.INACTIVITYTIMEOUT);
    this.ADJUSTER = new BasicUserRole("Adjuster", 12, this.MAXSESSIONTIME, this.INACTIVITYTIMEOUT);
    this.WORKFLOWEDITOR = new BasicUserRole("WorkFlowEditor", "WorkFlow Editor", 13, this.MAXSESSIONTIME, this.INACTIVITYTIMEOUT);
    this.WIZARD = new BasicUserRole("WizardUser", "Wizard User", 14, this.MAXSESSIONTIME, this.INACTIVITYTIMEOUT);
    this.VIEWEDITOR = new BasicUserRole("ViewEditor", "View Editor", 15, this.MAXSESSIONTIME, this.INACTIVITYTIMEOUT);
        }

        public function BasicUserRoleFactory() {
            super();
            this.initFieldsBasicUserRoleFactory();
        }
    

    public static function getInstance():BasicUserRoleFactory {
        return BasicUserRoleFactory.instance;
    }
    }
}

