/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2022 AllBinary 
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
package org.allbinary.emulator.swt {
    import org.eclipse.swt.widgets.Display;

    public class SWTRunnableProcessor extends SWTProcessor {
    private static var instanceR_value:SWTRunnableProcessor;
    private static var instanceR_set:Boolean = false;
    private static function get instanceR():SWTRunnableProcessor {
        if (!SWTRunnableProcessor.instanceR_set) {
            SWTRunnableProcessor.instanceR_set = true;
            SWTRunnableProcessor.instanceR_value = new SWTRunnableProcessor();
        }
        return SWTRunnableProcessor.instanceR_value;
    }
    

    override public static function getInstance():SWTRunnableProcessor {
        return SWTRunnableProcessor.instanceR;
    }
    

    public function SWTRunnableProcessor() {
        super();
    }
    

    override public function process(display:Display):void {
        this.runnable.run();
    }
    }
}

