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
package org.allbinary.media.audio {
    import org.allbinary.logic.communication.log.LogUtil;
    import org.allbinary.string.CommonStrings;

    public class AllBinaryMediaManagerShutdown {
    private static var instance_value:AllBinaryMediaManagerShutdown;
    private static var instance_set:Boolean = false;
    private static function get instance():AllBinaryMediaManagerShutdown {
        if (!AllBinaryMediaManagerShutdown.instance_set) {
            AllBinaryMediaManagerShutdown.instance_set = true;
            AllBinaryMediaManagerShutdown.instance_value = new AllBinaryMediaManagerShutdown();
        }
        return AllBinaryMediaManagerShutdown.instance_value;
    }
    

    public static function shutdown(soundsFactoryInterface:SoundsFactoryInterface):void {
        var logUtil:LogUtil = LogUtil.getInstance();
        var commonStrings:CommonStrings = CommonStrings.getInstance();
        logUtil.putF(commonStrings.START, AllBinaryMediaManagerShutdown.instance, "shutdown");
        AllBinaryMediaManager.shutdown(soundsFactoryInterface);
    }
    }
}

