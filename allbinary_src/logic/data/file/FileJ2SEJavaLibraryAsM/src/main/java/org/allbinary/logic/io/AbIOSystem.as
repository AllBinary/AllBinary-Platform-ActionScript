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
package org.allbinary.logic.io {

    public class AbIOSystem {
    private static var instance_value:AbIOSystem;
    private static var instance_set:Boolean = false;
    private static function get instance():AbIOSystem {
        if (!AbIOSystem.instance_set) {
            AbIOSystem.instance_set = true;
            AbIOSystem.instance_value = new AbIOSystem();
        }
        return AbIOSystem.instance_value;
    }
        private var type:String = null;

        // Java field initializers run after the base constructor
        private function initFieldsAbIOSystem():void {
    this.type = "java.io";
        }

        public function AbIOSystem() {
            super();
            this.initFieldsAbIOSystem();
        }
    

    public static function getInstance():AbIOSystem {
        return AbIOSystem.instance;
    }
    

    public function getType():String {
        return this.type;
    }
    

    public function isType(type:String):Boolean {
        if (JString.compareTo(this.type, type) == 0) {
            return true;
        } else {
            return false;
        }
    }
    }
}

