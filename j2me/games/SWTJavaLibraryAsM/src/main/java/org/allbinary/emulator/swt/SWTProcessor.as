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
    import org.allbinary.thread.NullRunnable;
    import org.eclipse.swt.widgets.Display;
    import java.lang.JRunnable;

    public class SWTProcessor {
    private static var instance_value:SWTProcessor;
    private static var instance_set:Boolean = false;
    private static function get instance():SWTProcessor {
        if (!SWTProcessor.instance_set) {
            SWTProcessor.instance_set = true;
            SWTProcessor.instance_value = new SWTProcessor();
        }
        return SWTProcessor.instance_value;
    }
        public var runnable:JRunnable = null;

        // Java field initializers run after the base constructor
        private function initFieldsSWTProcessor():void {
    this.runnable = NullRunnable.getInstance();
        }
    

    public static function getInstance():SWTProcessor {
        return SWTProcessor.instance;
    }
    

    public function SWTProcessor() {
        super();
        this.initFieldsSWTProcessor();
    }
    

    public function process(display:Display):void {
        display.sleep();
    }
    }
}

