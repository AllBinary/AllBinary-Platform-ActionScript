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
    import org.allbinary.util.BasicArrayList;
    import org.allbinary.util.BasicArrayListD;

    public class StoreRoleFactory {
    private static var instance_value:StoreRoleFactory;
    private static var instance_set:Boolean = false;
    private static function get instance():StoreRoleFactory {
        if (!StoreRoleFactory.instance_set) {
            StoreRoleFactory.instance_set = true;
            StoreRoleFactory.instance_value = new StoreRoleFactory();
        }
        return StoreRoleFactory.instance_value;
    }
        private var roles:BasicArrayList = null;
        private var subscriberRoles:BasicArrayList = null;
        private var wholesaleRoles:BasicArrayList = null;

        // Java field initializers run after the base constructor
        private function initFieldsStoreRoleFactory():void {
    this.roles = new BasicArrayListD();
    this.subscriberRoles = new BasicArrayListD();
    this.wholesaleRoles = new BasicArrayListD();
        }
    

    public static function getInstance():StoreRoleFactory {
        return StoreRoleFactory.instance;
    }
    

    public function StoreRoleFactory() {
        super();
        this.initFieldsStoreRoleFactory();
        var basicUserRoleFactory:BasicUserRoleFactory = BasicUserRoleFactory.getInstance();
        this.roles.add(basicUserRoleFactory.CUSTOMER);
        this.roles.add(basicUserRoleFactory.SUBSCRIBERCUSTOMER);
        this.roles.add(basicUserRoleFactory.WHOLESALECUSTOMER);
        this.subscriberRoles.add(basicUserRoleFactory.SUBSCRIBERCUSTOMER);
        this.wholesaleRoles.add(basicUserRoleFactory.WHOLESALECUSTOMER);
    }
    

    public function getRoles():BasicArrayList {
        return this.roles;
    }
    

    public function getSubscriberRoles():BasicArrayList {
        return this.subscriberRoles;
    }
    

    public function getWholesaleRoles():BasicArrayList {
        return this.wholesaleRoles;
    }
    }
}

