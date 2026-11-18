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
    import java.io.JIOException;
    import java.util.JCalendar;
    import org.allbinary.logic.communication.log.LogUtil;
    import org.allbinary.logic.system.security.licensing.client.AbeLicenseClient;
    import org.allbinary.string.CommonStrings;

    public class AbeLicenseInterfaceFactory {
    private static var SINGLETON_value:AbeLicenseInterfaceFactory;
    private static var SINGLETON_set:Boolean = false;
    private static function get SINGLETON():AbeLicenseInterfaceFactory {
        if (!AbeLicenseInterfaceFactory.SINGLETON_set) {
            AbeLicenseInterfaceFactory.SINGLETON_set = true;
            AbeLicenseInterfaceFactory.SINGLETON_value = new AbeLicenseInterfaceFactory();
        }
        return AbeLicenseInterfaceFactory.SINGLETON_value;
    }
        public var logUtil:LogUtil = null;
        private var commonStrings:CommonStrings = null;
        private var time:Number = 0;
        private var check:Boolean = false;
        private var checkPeriod:int = 0;
        private var abeLicenseInterface:AbeLicenseInterface = null;

        // Java field initializers run after the base constructor
        private function initFieldsAbeLicenseInterfaceFactory():void {
    this.logUtil = LogUtil.getInstance();
    this.commonStrings = CommonStrings.getInstance();
    this.time = 0;
    this.check = false;
    this.checkPeriod = 36000000;
    this.abeLicenseInterface = null;
        }
    

    public static function getInstance():AbeLicenseInterfaceFactory {
        return AbeLicenseInterfaceFactory.SINGLETON;
    }
    

    public function AbeLicenseInterfaceFactory() {
        super();
        this.initFieldsAbeLicenseInterfaceFactory();
    }
    

    public function getLicenseInstance(abeClientInformation:AbeClientInformationInterface):AbeLicenseInterface {
        if (this.isTimeToGetKey()) {
            return this.get_(abeClientInformation);
        } else {
            return this.abeLicenseInterface;
        }
    }
    

    private function get_(abeClientInformation:AbeClientInformationInterface):AbeLicenseInterface {
        try {
            this.logUtil.putF("Getting Keys", this, this.commonStrings.GET);
            this.abeLicenseInterface = AbeNoLicense.getInstance();
            var licenseClient:AbeLicenseClient = new AbeLicenseClient();
            this.abeLicenseInterface = licenseClient.get_(abeClientInformation);
            if (this.abeLicenseInterface != null) {
                this.logUtil.putF("Default Key: " + this.abeLicenseInterface.getKey(AbeClientInformationData.getInstance().KEY), this, this.commonStrings.GET);
            }
            return this.abeLicenseInterface;
        } catch (e:*) {
            this.logUtil.put("Licensing IO Error", this, this.commonStrings.GET, e);
            throw new LicensingException("License Server Connection Error");
        } catch (e:*) {
            this.logUtil.put("Licensing Failure", this, this.commonStrings.GET, e);
            throw new LicensingException("Unknown License Failure: " + JSystem.className(this));
        }
    }
    

    private function isTimeToGetKey():Boolean {
        var calendar:JCalendar = JCalendar.getInstance();
        var currentTime:Number = calendar.getTimeInMillis();
        if (this.abeLicenseInterface == null || this.abeLicenseInterface == AbeNoLicense.getInstance() || !this.abeLicenseInterface.hasKey() || this.isCheck() || currentTime - Number(this.checkPeriod) > this.time) {
            this.abeLicenseInterface = null;
            this.time = currentTime;
            return true;
        } else {
            return false;
        }
    }
    

    public function setCheck(check:Boolean):void {
        this.check = check;
    }
    

    private function isCheck():Boolean {
        return this.check;
    }
    }
}

