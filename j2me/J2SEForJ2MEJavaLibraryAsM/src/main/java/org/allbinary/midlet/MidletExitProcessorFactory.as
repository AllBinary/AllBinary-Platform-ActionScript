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
package org.allbinary.midlet {
    import javax.microedition.midlet.MIDlet;
    import org.allbinary.AppletUtil;
    import org.allbinary.J2MEUtil;
    import org.allbinary.canvas.Processor;

    public class MidletExitProcessorFactory {
    private static var instance_value:MidletExitProcessorFactory;
    private static var instance_set:Boolean = false;
    private static function get instance():MidletExitProcessorFactory {
        if (!MidletExitProcessorFactory.instance_set) {
            MidletExitProcessorFactory.instance_set = true;
            MidletExitProcessorFactory.instance_value = new MidletExitProcessorFactory();
        }
        return MidletExitProcessorFactory.instance_value;
    }
    

    public static function getInstance():MidletExitProcessorFactory {
        return MidletExitProcessorFactory.instance;
    }
    

    public function getExitInstance(midlet:MIDlet):Processor {
        if (AppletUtil.isAppletLoader(midlet) || J2MEUtil.isJ2ME()) {
            return Processor.getInstance();
        } else {
            return new MidletExitProcessor(midlet);
        }
    }
    }
}

