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
package org.allbinary.logic.system.security {
    import org.allbinary.logic.communication.log.LogUtil;
    import org.allbinary.logic.system.security.licensing.AbeClientInformationInterface;
    import org.allbinary.logic.system.security.licensing.AbeLicenseInterfaceFactory;
    import org.allbinary.logic.system.security.licensing.LicensingException;

    public class AbKeys {
    private static var instance_value:AbKeys;
    private static var instance_set:Boolean = false;
    private static function get instance():AbKeys {
        if (!AbKeys.instance_set) {
            AbKeys.instance_set = true;
            AbKeys.instance_value = new AbKeys();
        }
        return AbKeys.instance_value;
    }
        public var logUtil:LogUtil = null;

        // Java field initializers run after the base constructor
        private function initFieldsAbKeys():void {
    this.logUtil = LogUtil.getInstance();
        }
    

    public static function getInstance():AbKeys {
        return AbKeys.instance;
    }
    

    public function AbKeys() {
        super();
        this.initFieldsAbKeys();
    }
    

    public function getKey(abeClientInformation:AbeClientInformationInterface, keyName:String):String {
        try {
            this.logUtil.putF("Getting Key: " + keyName, this, "getKey");
            if (JString.compareTo(keyName, "DirectX 8") == 0 || JString.compareTo(keyName, "DirectX") == 0 || JString.compareTo(keyName, "Low Level") == 0 || JString.compareTo(keyName, "System Drivers") == 0) {
                return "Temp For Input Library";
            }
            return AbeLicenseInterfaceFactory.getInstance().getLicenseInstance(abeClientInformation).getKey(keyName);
        } catch (e:*) {
            throw e;
        } catch (e:*) {
            this.logUtil.put("Licensing Failure", this, "getKey()", e);
            throw new LicensingException("Unknown License Failure");
        }
    }
    }
}

