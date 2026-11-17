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

    public class OperatingSystems {
    private static var instance_value:OperatingSystems;
    private static var instance_set:Boolean = false;
    private static function get instance():OperatingSystems {
        if (!OperatingSystems.instance_set) {
            OperatingSystems.instance_set = true;
            OperatingSystems.instance_value = new OperatingSystems();
        }
        return OperatingSystems.instance_value;
    }
        public var LINUX:String = null;
        public var WINDOWS:String = null;
        public var SOLARIS:String = null;
        public var WINDOWS2000:String = null;
        public var WINDOWS_NT:String = null;
        public var WINDOWS_10:String = null;
        public var WINDOWS_11:String = null;
        public var WINDOWS_VISTA:String = null;
        public var WINDOWS_XP:String = null;
        public var ANDROID:String = null;
        public var HARMONY:String = null;
        private var unknownSpecificOSAllowed:Boolean = false;

        // Java field initializers run after the base constructor
        private function initFieldsOperatingSystems():void {
    this.LINUX = "Linux";
    this.WINDOWS = "Windows";
    this.SOLARIS = "Solaris";
    this.WINDOWS2000 = "Windows 2000";
    this.WINDOWS_NT = "Windows NT";
    this.WINDOWS_10 = "Windows 10";
    this.WINDOWS_11 = "Windows 11";
    this.WINDOWS_VISTA = "Windows Vista";
    this.WINDOWS_XP = "Windows XP";
    this.ANDROID = this.LINUX;
    this.HARMONY = "HarmonyOS";
    this.unknownSpecificOSAllowed = true;
        }
    

    public function OperatingSystems() {
        super();
        this.initFieldsOperatingSystems();
    }
    

    public function isUnknownSpecificOSAllowed():Boolean {
        return this.unknownSpecificOSAllowed;
    }
    

    public function setUnknownSpecificOSAllowed(aUnknownSpecificOSAllowed:Boolean):void {
        this.unknownSpecificOSAllowed = aUnknownSpecificOSAllowed;
    }
    

    public static function getInstance():OperatingSystems {
        return OperatingSystems.instance;
    }
    }
}

