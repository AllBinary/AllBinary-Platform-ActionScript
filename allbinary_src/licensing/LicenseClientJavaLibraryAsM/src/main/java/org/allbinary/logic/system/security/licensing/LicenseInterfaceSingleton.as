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

    public class LicenseInterfaceSingleton {
    private static var licenseInterface_value:AbeLicenseInterface;
    private static var licenseInterface_set:Boolean = false;
    private static function get licenseInterface():AbeLicenseInterface {
        if (!LicenseInterfaceSingleton.licenseInterface_set) {
            LicenseInterfaceSingleton.licenseInterface_set = true;
            LicenseInterfaceSingleton.licenseInterface_value = AbeNoLicense.getInstance();
        }
        return LicenseInterfaceSingleton.licenseInterface_value;
    }
    private static function set licenseInterface(value:AbeLicenseInterface):void {
        LicenseInterfaceSingleton.licenseInterface_set = true;
        LicenseInterfaceSingleton.licenseInterface_value = value;
    }
    

    public static function getInstance():AbeLicenseInterface {
        return LicenseInterfaceSingleton.licenseInterface;
    }
    

    public static function init(licenseInterface:AbeLicenseInterface):void {
        if (licenseInterface != null) {
            LicenseInterfaceSingleton.licenseInterface = licenseInterface;
        }
    }
    }
}

