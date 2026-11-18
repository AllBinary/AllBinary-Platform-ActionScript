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
    import org.allbinary.TsUtil;
    import org.allbinary.logic.string.StringMaker;
    import org.allbinary.logic.string.StringUtil;
    import org.allbinary.logic.system.hardware.HardwareInterface;
    import org.allbinary.logic.system.hardware.SystemHardwareFactory;
    import org.allbinary.logic.system.os.GenericOperatingSystem;
    import org.allbinary.logic.system.os.NoOperatingSystem;
    import org.allbinary.string.CommonSeps;
    import org.allbinary.util.BasicArrayList;
    import org.allbinary.util.BasicArrayListUtil;
    import org.allbinary.logic.StdUtil;
    import org.allbinary.util.ABHashtable;

    // This is the information sent to the license server
    public class ClientInformation implements AbeClientInformationInterface {
        private var operatingSystemInterface:GenericOperatingSystem = null;
        private var tsUtil:TsUtil = null;
        private var name:String = null;
        private var shortName:String = null;
        private var version:String = null;
        private var specialName:String = null;
        private var hardSale:Boolean = false;
        private var licenseId:String = null;
        private var licenseServers:BasicArrayList = null;

        // Java field initializers run after the base constructor
        private function initFieldsClientInformation():void {
    this.operatingSystemInterface = NoOperatingSystem.NO_OPERATING_SYSTEM;
    this.tsUtil = TsUtil.getInstance();
    
    
    
    
    this.hardSale = true;
    this.licenseId = StringUtil.getInstance().EMPTY_STRING;
    this.licenseServers = BasicArrayListUtil.getInstance().getImmutableInstance();
        }
    

    public function ClientInformation(name:String, version:String, specialName:String, shortName:String) {
        super();
        this.initFieldsClientInformation();
        this.name = name;
        this.version = version;
        this.specialName = specialName;
        this.shortName = new StringMaker().append(shortName).append(CommonSeps.getInstance().UNDERSCORE).append(version).toString();
        this.init();
    }
    

    public function init():void {
    }
    

    public function getOperatingSystemInterface():GenericOperatingSystem {
        return this.operatingSystemInterface;
    }
    

    public function getName():String {
        return this.name;
    }
    

    public function getSpecialName():String {
        return this.specialName;
    }
    

    public function getVersion():String {
        return this.version;
    }
    

    public function getLicenseId():String {
        return this.licenseId;
    }
    

    public function getLicenseServers():BasicArrayList {
        return this.licenseServers;
    }
    

    public function getLicenseServer(index:int):String {
        return (this.licenseServers.objectArray[index] as String);
    }
    

    public function getNumberOfLicenseServers():int {
        return this.licenseServers.size();
    }
    

    public function toHashtable():ABHashtable {
        var abeClientInformationData:AbeClientInformationData = AbeClientInformationData.getInstance();
        var genericOperatingSystem:GenericOperatingSystem = this.getOperatingSystemInterface();
        var clientInfoHashtable:ABHashtable = StdUtil.getInstance().createHashtable();
        clientInfoHashtable.put(abeClientInformationData.NAME, this.name);
        clientInfoHashtable.put(abeClientInformationData.VERSION, this.version);
        clientInfoHashtable.put(abeClientInformationData.SPECIALNAME, this.specialName);
        clientInfoHashtable.put(abeClientInformationData.LICENSEID, this.getLicenseId());
        clientInfoHashtable.put(abeClientInformationData.OSNAME, genericOperatingSystem.getName());
        clientInfoHashtable.put(abeClientInformationData.OSARCH, genericOperatingSystem.getArch());
        clientInfoHashtable.put(abeClientInformationData.OSVERSION, genericOperatingSystem.getVersion());
        clientInfoHashtable.put(abeClientInformationData.OS, genericOperatingSystem.toString());
        var hardwareInterface:HardwareInterface = SystemHardwareFactory.getInstance().getInstance1(genericOperatingSystem);
        var hardwareString:String = hardwareInterface.toString();
        clientInfoHashtable.put(abeClientInformationData.HARDWARE, hardwareString);
        return clientInfoHashtable;
    }
    

    public function isSameId(alicenseId:String):Boolean {
        if (this.tsUtil.compareTo(this.getLicenseId(), alicenseId) == 0) {
            return true;
        } else {
            return false;
        }
    }
    

    public function isLargerOrDifferentServerList(list:BasicArrayList):Boolean {
        var size:int = int(list.size() - 1);
        var currentSize:int = int(this.licenseServers.size() - 1);
        if (size > currentSize) {
            return true;
        }
        for (var index:int = size; index >= 0; index--) {
            var newServerName:String = (list.objectArray[index] as String);
            for (var index2:int = currentSize; index2 >= 0; index2--) {
                var nextOldServerName:String = (this.licenseServers.objectArray[index] as String);
                if (this.tsUtil.compareTo(newServerName, nextOldServerName) != 0) {
                    return true;
                }
            }
        }
        return false;
    }
    

    public function setHardSale(hardSale:Boolean):void {
        this.hardSale = hardSale;
    }
    

    public function isHardSale():Boolean {
        return this.hardSale;
    }
    

    public function setOperatingSystemInterface(operatingSystemInterface:GenericOperatingSystem):void {
        this.operatingSystemInterface = operatingSystemInterface;
    }
    

    public function setLicenseId(licenseId:String):void {
        this.licenseId = licenseId;
    }
    

    public function setLicenseServers(licenseServers:BasicArrayList):void {
        this.licenseServers = licenseServers;
    }
    

    public function toShortString():String {
        return this.shortName;
    }
    }
}

