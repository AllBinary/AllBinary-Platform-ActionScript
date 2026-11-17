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
package org.allbinary.logic.system.os {

    //NoPlatform
    public class SystemProperties {
    private static var instance_value:SystemProperties;
    private static var instance_set:Boolean = false;
    private static function get instance():SystemProperties {
        if (!SystemProperties.instance_set) {
            SystemProperties.instance_set = true;
            SystemProperties.instance_value = new SystemProperties();
        }
        return SystemProperties.instance_value;
    }
    

    public static function getInstance():SystemProperties {
        return SystemProperties.instance;
    }
    

    public function SystemProperties() {
        super();
    }
    

    public function getName():String {
        throw new JException("RuntimeException", "");
    }
    

    public function getArch():String {
        throw new JException("RuntimeException", "");
    }
    

    public function getVersion():String {
        throw new JException("RuntimeException", "");
    }
    

    public function getUserHomePath():String {
        throw new JException("RuntimeException", "");
    }
    }
}

