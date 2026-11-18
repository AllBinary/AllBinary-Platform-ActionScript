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
package org.allbinary.logic.system.security.licensing {

    public class LicenseStrings {
    private static var instance_value:LicenseStrings;
    private static var instance_set:Boolean = false;
    private static function get instance():LicenseStrings {
        if (!LicenseStrings.instance_set) {
            LicenseStrings.instance_set = true;
            LicenseStrings.instance_value = new LicenseStrings();
        }
        return LicenseStrings.instance_value;
    }
        public var LOCKED:String = null;

        // Java field initializers run after the base constructor
        private function initFieldsLicenseStrings():void {
    this.LOCKED = "Demo Locked Feature";
        }

        public function LicenseStrings() {
            super();
            this.initFieldsLicenseStrings();
        }
    

    public static function getInstance():LicenseStrings {
        return LicenseStrings.instance;
    }
    }
}

