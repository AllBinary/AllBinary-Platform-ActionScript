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
package org.allbinary.canvas {

    public class Processor {
    private static var SINGLETON_value:Processor;
    private static var SINGLETON_set:Boolean = false;
    private static function get SINGLETON():Processor {
        if (!Processor.SINGLETON_set) {
            Processor.SINGLETON_set = true;
            Processor.SINGLETON_value = new Processor();
        }
        return Processor.SINGLETON_value;
    }
    

    public static function getInstance():Processor {
        return Processor.SINGLETON;
    }
    

    public function process():void {
    }
    

    public function processt(timeDelta:Number):void {
    }
    }
}

