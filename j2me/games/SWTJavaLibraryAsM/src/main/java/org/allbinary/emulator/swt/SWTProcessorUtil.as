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

    public class SWTProcessorUtil {
    private static var instance_value:SWTProcessorUtil;
    private static var instance_set:Boolean = false;
    private static function get instance():SWTProcessorUtil {
        if (!SWTProcessorUtil.instance_set) {
            SWTProcessorUtil.instance_set = true;
            SWTProcessorUtil.instance_value = new SWTProcessorUtil();
        }
        return SWTProcessorUtil.instance_value;
    }
        public var swtProcessor:SWTProcessor = null;

        // Java field initializers run after the base constructor
        private function initFieldsSWTProcessorUtil():void {
    this.swtProcessor = SWTProcessor.getInstance();
        }

        public function SWTProcessorUtil() {
            super();
            this.initFieldsSWTProcessorUtil();
        }
    

    public static function getInstance():SWTProcessorUtil {
        return SWTProcessorUtil.instance;
    }
    }
}

