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
    import org.allbinary.string.CommonStrings;

    public class LicenseTypeFactory {
    private static var instance_value:LicenseTypeFactory;
    private static var instance_set:Boolean = false;
    private static function get instance():LicenseTypeFactory {
        if (!LicenseTypeFactory.instance_set) {
            LicenseTypeFactory.instance_set = true;
            LicenseTypeFactory.instance_value = new LicenseTypeFactory();
        }
        return LicenseTypeFactory.instance_value;
    }
        public var UNKNOWN:LicenseType = null;
        public var DEMO:LicenseType = null;
        public var NORMAL:LicenseType = null;

        // Java field initializers run after the base constructor
        private function initFieldsLicenseTypeFactory():void {
    this.UNKNOWN = new LicenseType(CommonStrings.getInstance().UNKNOWN);
    this.DEMO = new LicenseType("Demo");
    this.NORMAL = new LicenseType("Normal");
        }

        public function LicenseTypeFactory() {
            super();
            this.initFieldsLicenseTypeFactory();
        }
    

    public static function getInstance():LicenseTypeFactory {
        return LicenseTypeFactory.instance;
    }
    

    public function getInstance1(name:String):LicenseType {
        if (JSystem.compareToObject(this.DEMO.getName(), name) == 0) {
            return this.DEMO;
        } else if (JSystem.compareToObject(this.NORMAL.getName(), name) == 0) {
            return this.NORMAL;
        }
        return this.UNKNOWN;
    }
    }
}

