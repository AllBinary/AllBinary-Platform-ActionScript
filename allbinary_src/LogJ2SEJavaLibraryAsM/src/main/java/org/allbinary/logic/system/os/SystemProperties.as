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

    //ActualPlatform
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
        private var OS_NAME:String = null;
        private var OS_ARCH:String = null;
        private var OS_VERSION:String = null;
        private var USER_HOME:String = null;

        // Java field initializers run after the base constructor
        private function initFieldsSystemProperties():void {
    this.OS_NAME = "os.name";
    this.OS_ARCH = "os.arch";
    this.OS_VERSION = "os.version";
    this.USER_HOME = "user.home";
        }
    

    public static function getInstance():SystemProperties {
        return SystemProperties.instance;
    }
    

    public function SystemProperties() {
        super();
        this.initFieldsSystemProperties();
    }
    

    public function getName():String {
        return JSystem.getProperty(this.OS_NAME);
    }
    

    public function getArch():String {
        return JSystem.getProperty(this.OS_ARCH);
    }
    

    public function getVersion():String {
        return JSystem.getProperty(this.OS_VERSION);
    }
    

    public function getUserHomePath():String {
        return JSystem.getProperty(this.USER_HOME);
    }
    }
}

