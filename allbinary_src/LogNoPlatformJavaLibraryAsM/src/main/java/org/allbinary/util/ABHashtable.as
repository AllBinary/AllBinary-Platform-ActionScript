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
package org.allbinary.util {
    import java.util.JHashtable;

    public class ABHashtable extends JHashtable {
    

    public function ABHashtable(...args) {
        if (args.length == 2 && args[0] === JConstructor.ARGS) {
            args = args[1];
        }
        var jsuper:Array = ABHashtable.jsuperArgs(args);
        super();
        this.jconstruct(args);
    }

    private static function jsuperArgs(args:Array):Array {
        if (args.length == 1) {
            return ABHashtable.jsuper_1(args[0]);
        }
        if (args.length == 0) {
            return ABHashtable.jsuper_2();
        }
        return [];
    }

    private static function jsuper_1(initialCapacity:int):Array {
        return [initialCapacity];
    }

    private static function jsuper_2():Array {
        return [];
    }

    private function jconstruct(args:Array):void {
        if (args.length == 1) {
            this.jconstruct_1(args[0]);
            return;
        }
        if (args.length == 0) {
            this.jconstruct_2();
            return;
        }
    }

    private function jconstruct_1(initialCapacity:int):void {
        
    }

    private function jconstruct_2():void {
        
    }
    
    }
}

