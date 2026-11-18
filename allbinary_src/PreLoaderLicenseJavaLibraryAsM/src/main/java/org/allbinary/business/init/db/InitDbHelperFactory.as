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
package org.allbinary.business.init.db {
    import org.allbinary.logic.system.loader.AbeFactory;
    import org.allbinary.logic.system.security.licensing.AbeClientInformationInterface;
    import org.allbinary.logic.system.security.licensing.LicensingException;

    public class InitDbHelperFactory {
    private static const CLASSNAME:String = "org.allbinary.business.installer.InitDbCrypted";
    

    public function InitDbHelperFactory() {
        super();
    }
    

    public static function getInstance2(abeClientInformation:AbeClientInformationInterface, databaseConnectionInfoInterface:DatabaseConnectionInfoInterface):Object {
        var params:Vector.<Object> = new Vector.<Object>(1);
        var classes:Vector.<String> = new Vector.<String>(1);
        classes[0] = 'DatabaseConnectionInfoInterface';
        params[0] = (databaseConnectionInfoInterface as Object);
        var anyType:Object = AbeFactory.getInstance().getInstance4(abeClientInformation, InitDbHelperFactory.CLASSNAME, classes, params);
        return anyType;
    }
    

    public static function getInstance1(abeClientInformation:AbeClientInformationInterface):Object {
        var anyType:Object = AbeFactory.getInstance().getInstance4(abeClientInformation, InitDbHelperFactory.CLASSNAME, null, null);
        return anyType;
    }
    }
}

