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

    public class HistoryDbInitInfo extends DbInitInfo {
    private static const INITFILE:String = "historydbinitdata.dat";
    

    public function HistoryDbInitInfo(...args) {
        if (args.length == 2 && args[0] === JSuperArgs.ARGS) {
            args = args[1];
        }
        var jsuper:Array = HistoryDbInitInfo.jsuperArgs(args);
        super(jsuper[0], jsuper[1]);
        this.jconstruct(args);
    }

    private static function jsuperArgs(args:Array):Array {
        if (args.length == 0) {
            return HistoryDbInitInfo.jsuper_1();
        }
        if (args.length == 1) {
            return HistoryDbInitInfo.jsuper_2(args[0]);
        }
        return [];
    }

    private static function jsuper_1():Array {
        return [HistoryDbInitInfo.INITFILE, true];
    }

    private static function jsuper_2(read:Boolean):Array {
        return [HistoryDbInitInfo.INITFILE, read];
    }

    private function jconstruct(args:Array):void {
        if (args.length == 0) {
            this.jconstruct_1();
            return;
        }
        if (args.length == 1) {
            this.jconstruct_2(args[0]);
            return;
        }
    }

    private function jconstruct_1():void {
        
    }

    private function jconstruct_2(read:Boolean):void {
        
    }
    
    }
}

