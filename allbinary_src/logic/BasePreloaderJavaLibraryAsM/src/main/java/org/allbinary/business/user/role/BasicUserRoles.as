/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2026 AllBinary 
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

    public class BasicUserRoles {
    private static var instance_value:BasicUserRoles;
    private static var instance_set:Boolean = false;
    private static function get instance():BasicUserRoles {
        if (!BasicUserRoles.instance_set) {
            BasicUserRoles.instance_set = true;
            BasicUserRoles.instance_value = new BasicUserRoles();
        }
        return BasicUserRoles.instance_value;
    }
        public var roleVector:BasicArrayList = null;

        // Java field initializers run after the base constructor
        private function initFieldsBasicUserRoles():void {
    this.roleVector = new BasicArrayListD();
        }

        public function BasicUserRoles() {
            super();
            this.initFieldsBasicUserRoles();
        }
    

    public static function getInstance():BasicUserRoles {
        return BasicUserRoles.instance;
    }
    

    public function getRole(role:String):BasicUserRole {
        var roleVector:BasicArrayList = this.getAll();
        var size:int = roleVector.size();
        for (var index:int = 0; index < size; index++) {
            var userRole:BasicUserRole = (roleVector.get_(index) as BasicUserRole);
            if (JString.compareTo(role, userRole.toString()) == 0) {
                return userRole;
            }
        }
        throw new JException("Exception", "Unable to get role - Unknown Role");
    }
    

    public function getAll():BasicArrayList {
        return this.roleVector;
    }
    }
}

