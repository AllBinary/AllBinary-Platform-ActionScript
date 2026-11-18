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
    import org.allbinary.logic.StdUtil;
    import org.allbinary.logic.string.StringMaker;
    import org.allbinary.logic.string.StringUtil;
    import org.allbinary.logic.string.StringValidationUtil;
    import org.allbinary.util.ABHashtable;
    import org.allbinary.util.BasicArrayList;
    import org.allbinary.util.BasicArrayListD;

    public class AbeClientLicense implements AbeLicenseInterface {
        private var hashtable:ABHashtable = null;
        private var id:String = null;
        private var servers:BasicArrayList = null;
        private var special:String = null;
        private var licenseType:LicenseType = null;

        // Java field initializers run after the base constructor
        private function initFieldsAbeClientLicense():void {
    
    
    
    this.special = null;
    
        }
    

    public function AbeClientLicense(hashtable:ABHashtable) {
        super();
        this.initFieldsAbeClientLicense();
        this.hashtable = StdUtil.getInstance().createHashtable();
        var abeClientInformationData:AbeClientInformationData = AbeClientInformationData.getInstance();
        var keyValue:Object = hashtable.get_(abeClientInformationData.KEY);
        if (keyValue != null) {
            if ((keyValue is String)) {
                this.hashtable.put(abeClientInformationData.KEY, keyValue);
            }
        }
        this.id = (hashtable.get_(abeClientInformationData.LICENSEID) as String);
        var vector:BasicArrayList = (hashtable.get_(abeClientInformationData.LICENSESERVERS) as BasicArrayList);
        this.servers = new BasicArrayListD();
        var size:int = vector.size();
        for (var index:int = 0; index < size; index++) {
            this.servers.add(vector.get_(index));
        }
        var stringUtil:StringUtil = StringUtil.getInstance();
        this.setSpecial(stringUtil.getNonNull((hashtable.get_(abeClientInformationData.SPECIAL) as String)));
        var licenseTypeString:String = stringUtil.getNonNull((hashtable.get_(abeClientInformationData.LICENSE_TYPE) as String));
        this.licenseType = LicenseTypeFactory.getInstance().getInstance1(licenseTypeString);
    }
    

    public static function hasRequiredKeys(resultHashtable:ABHashtable):Boolean {
        var abeClientInformationData:AbeClientInformationData = AbeClientInformationData.getInstance();
        if (resultHashtable.containsKey(abeClientInformationData.LICENSEID) && resultHashtable.containsKey(abeClientInformationData.LICENSESERVERS) && resultHashtable.containsKey(abeClientInformationData.KEY) && resultHashtable.containsKey(abeClientInformationData.LICENSE_TYPE)) {
            return true;
        } else {
            return false;
        }
    }
    

    public function hasKey():Boolean {
        return this.isValid();
    }
    

    public function getKey(keyName:String):String {
        return (this.hashtable.get_(keyName) as String);
    }
    

    public function getLicenseId():String {
        return this.id;
    }
    

    public function getServers():BasicArrayList {
        return this.servers;
    }
    

    public function isValid():Boolean {
        var stringValidationUtil:StringValidationUtil = StringValidationUtil.getInstance();
        if (!stringValidationUtil.isEmpty(this.getKey(AbeClientInformationData.getInstance().KEY))) {
            return true;
        }
        return false;
    }
    

    public function toString():String {
        var stringBuffer:StringMaker = new StringMaker();
        var BREAK:String = "<br/>";
        stringBuffer.append("License Id: ");
        stringBuffer.append(this.getLicenseId());
        stringBuffer.append(BREAK);
        stringBuffer.append("Is Valid: ");
        stringBuffer.appendboolean(this.isValid());
        stringBuffer.append(BREAK);
        stringBuffer.append("Keys: ");
        stringBuffer.append(this.hashtable.toString());
        stringBuffer.append(BREAK);
        var serverVector:BasicArrayList = this.getServers();
        var size:int = serverVector.size();
        for (var index:int = 0; index < size; index++) {
            var nextServerString:String = (serverVector.get_(index) as String);
            stringBuffer.append("Server: ");
            stringBuffer.append(nextServerString);
            stringBuffer.append(BREAK);
        }
        return stringBuffer.toString();
    }
    

    private function setSpecial(special:String):void {
        this.special = special;
    }
    

    public function getSpecial():String {
        return this.special;
    }
    

    public function getLicenseType():LicenseType {
        return this.licenseType;
    }
    }
}

