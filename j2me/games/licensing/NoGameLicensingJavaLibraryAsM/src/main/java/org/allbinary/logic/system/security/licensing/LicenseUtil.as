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
package org.allbinary.logic.system.security.licensing {
    import javax.microedition.lcdui.CommandListener;

    public class LicenseUtil {
    private static var instance_value:LicenseUtil;
    private static var instance_set:Boolean = false;
    private static function get instance():LicenseUtil {
        if (!LicenseUtil.instance_set) {
            LicenseUtil.instance_set = true;
            LicenseUtil.instance_value = new LicenseUtil();
        }
        return LicenseUtil.instance_value;
    }
    

    public static function getInstance():LicenseUtil {
        return LicenseUtil.instance;
    }
    

    public function init():void {
    }
    

    public function isRunning():Boolean {
        return false;
    }
    

    public function setRunning(running:Boolean):void {
    }
    

    public function shouldWait(commandListener:CommandListener):Boolean {
        return this.isRunning();
    }
    }
}

