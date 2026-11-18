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
package org.allbinary.business.init {

    public class LicenseInitInfoUtil {
    private static var instance_value:LicenseInitInfoUtil;
    private static var instance_set:Boolean = false;
    private static function get instance():LicenseInitInfoUtil {
        if (!LicenseInitInfoUtil.instance_set) {
            LicenseInitInfoUtil.instance_set = true;
            LicenseInitInfoUtil.instance_value = new LicenseInitInfoUtil();
        }
        return LicenseInitInfoUtil.instance_value;
    }
        public var INITFILENAME:String = null;
        public var ABOUT:String = null;
        public var PRIVACY_POLICY:String = null;
        private var OFFICIAL_ALLBINARY_SERVICES_SERVER:String = null;

        // Java field initializers run after the base constructor
        private function initFieldsLicenseInitInfoUtil():void {
    this.INITFILENAME = "licenseinitdata.dat";
    this.ABOUT = "about";
    this.PRIVACY_POLICY = "privacy_policy";
    this.OFFICIAL_ALLBINARY_SERVICES_SERVER = "https://services.allbinary.com/LicServ/serverssl.php";
        }
    

    public static function getInstance():LicenseInitInfoUtil {
        return LicenseInitInfoUtil.instance;
    }
    

    public function setFilePath(filePath:String):void {
    }
    

    public function LicenseInitInfoUtil() {
        super();
        this.initFieldsLicenseInitInfoUtil();
    }
    

    public function write(initData:LicenseInitInfo):void {
    }
    

    public function read():LicenseInitInfo {
        return this.readAgain(0);
    }
    

    public function readAgain(initializeCounter:int):LicenseInitInfo {
        var licenseInitInfo:LicenseInitInfo = new LicenseInitInfo();
        licenseInitInfo.clearServers();
        licenseInitInfo.addServer(this.OFFICIAL_ALLBINARY_SERVICES_SERVER);
        return licenseInitInfo;
    }
    }
}

