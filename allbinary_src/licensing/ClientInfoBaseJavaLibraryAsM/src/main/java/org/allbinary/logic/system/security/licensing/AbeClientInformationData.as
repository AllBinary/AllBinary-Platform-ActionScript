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

    public class AbeClientInformationData {
    private static var instance_value:AbeClientInformationData;
    private static var instance_set:Boolean = false;
    private static function get instance():AbeClientInformationData {
        if (!AbeClientInformationData.instance_set) {
            AbeClientInformationData.instance_set = true;
            AbeClientInformationData.instance_value = new AbeClientInformationData();
        }
        return AbeClientInformationData.instance_value;
    }
        public var KEY:String = null;
        public var NAME:String = null;
        public var VERSION:String = null;
        public var SPECIALNAME:String = null;
        public var LICENSEID:String = null;
        public var LICENSE_TYPE:String = null;
        public var PREVIOUSLICENSEID:String = null;
        public var OSNAME:String = null;
        public var OSARCH:String = null;
        public var OSVERSION:String = null;
        public var OS:String = null;
        public var HARDWARE:String = null;
        public var LICENSESERVERS:String = null;
        public var NEWLICENSE:String = null;
        public var ISNEW:String = null;
        public var SPECIAL:String = null;

        // Java field initializers run after the base constructor
        private function initFieldsAbeClientInformationData():void {
    this.KEY = "KEY";
    this.NAME = "NAME";
    this.VERSION = "VERSION";
    this.SPECIALNAME = "SPECIALNAME";
    this.LICENSEID = "LICENSEID";
    this.LICENSE_TYPE = "LICENSETYPE";
    this.PREVIOUSLICENSEID = "PREVIOUSLICENSEID";
    this.OSNAME = "OSNAME";
    this.OSARCH = "OSARCH";
    this.OSVERSION = "OSVERSION";
    this.OS = "OS";
    this.HARDWARE = "HARDWARE";
    this.LICENSESERVERS = "LICENSESERVERS";
    this.NEWLICENSE = "NEWLICENSE";
    this.ISNEW = "ISNEW";
    this.SPECIAL = "SPECIAL";
        }
    

    public static function getInstance():AbeClientInformationData {
        return AbeClientInformationData.instance;
    }
    

    public function AbeClientInformationData() {
        super();
        this.initFieldsAbeClientInformationData();
    }
    }
}

