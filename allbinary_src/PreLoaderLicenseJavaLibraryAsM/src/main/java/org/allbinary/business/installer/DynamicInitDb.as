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
package org.allbinary.business.installer {
    import org.allbinary.business.init.db.DatabaseConnectionInfoInterface;
    import org.allbinary.business.init.db.InitDbHelperFactory;
    import org.allbinary.logic.system.security.licensing.AbeClientInformationInterface;
    import org.allbinary.logic.system.security.licensing.LicensingException;

    //Warning you must have sql root access
    public class DynamicInitDb extends InitDb {
    

    public function DynamicInitDb(...args) {
        if (args.length == 2 && args[0] === JSuperArgs.ARGS) {
            args = args[1];
        }
        var jsuper:Array = DynamicInitDb.jsuperArgs(args);
        super(JSuperArgs.ARGS, jsuper);
        this.jconstruct(args);
    }

    private static function jsuperArgs(args:Array):Array {
        if (args.length == 1) {
            return DynamicInitDb.jsuper_1(args[0]);
        }
        if (args.length == 2) {
            return DynamicInitDb.jsuper_2(args[0], args[1]);
        }
        return [];
    }

    private static function jsuper_1(abeClientInformation:AbeClientInformationInterface):Array {
        return [];
    }

    private static function jsuper_2(abeClientInformation:AbeClientInformationInterface, databaseConnectionInfoInterface:DatabaseConnectionInfoInterface):Array {
        return [];
    }

    private function jconstruct(args:Array):void {
        if (args.length == 1) {
            this.jconstruct_1(args[0]);
            return;
        }
        if (args.length == 2) {
            this.jconstruct_2(args[0], args[1]);
            return;
        }
    }

    private function jconstruct_1(abeClientInformation:AbeClientInformationInterface):void {
        this.setHelper(InitDbHelperFactory.getInstance1(abeClientInformation));
    }

    private function jconstruct_2(abeClientInformation:AbeClientInformationInterface, databaseConnectionInfoInterface:DatabaseConnectionInfoInterface):void {
        this.setHelper(InitDbHelperFactory.getInstance2(abeClientInformation, databaseConnectionInfoInterface));
    }
    
    }
}

