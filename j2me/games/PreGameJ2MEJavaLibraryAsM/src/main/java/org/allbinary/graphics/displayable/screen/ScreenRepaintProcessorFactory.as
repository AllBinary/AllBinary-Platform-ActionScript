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
package org.allbinary.graphics.displayable.screen {
    import org.allbinary.J2MEUtil;
    import org.allbinary.canvas.Processor;

    public class ScreenRepaintProcessorFactory {
    private static var instance_value:ScreenRepaintProcessorFactory;
    private static var instance_set:Boolean = false;
    private static function get instance():ScreenRepaintProcessorFactory {
        if (!ScreenRepaintProcessorFactory.instance_set) {
            ScreenRepaintProcessorFactory.instance_set = true;
            ScreenRepaintProcessorFactory.instance_value = new ScreenRepaintProcessorFactory();
        }
        return ScreenRepaintProcessorFactory.instance_value;
    }
    

    public static function getInstance():ScreenRepaintProcessorFactory {
        return ScreenRepaintProcessorFactory.instance;
    }
    

    public function ScreenRepaintProcessorFactory() {
        super();
    }
    

    public function create(displayable:Displayable):Processor {
        if (!J2MEUtil.isJ2ME()) {
            return new ScreenRepaintProcessor(displayable);
        } else {
            return Processor.getInstance();
        }
    }
    }
}

