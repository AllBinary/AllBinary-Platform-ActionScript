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
    import org.allbinary.logic.java.character.CharacterSet;
    import org.allbinary.logic.string.StringMaker;
    import org.allbinary.logic.string.StringUtil;
    import org.allbinary.logic.string.StringValidationUtil;
    import org.allbinary.string.CommonSeps;

    public class GenericOperatingSystem implements OperatingSystemInterface {
        private var osName:String = null;
        private var osArch:String = null;
        private var osVersion:String = null;
        private var characterSet:CharacterSet = null;
        public var scalable:Boolean = false;

        // Java field initializers run after the base constructor
        private function initFieldsGenericOperatingSystem():void {
    this.osName = null;
    this.osArch = null;
    this.osVersion = null;
    this.characterSet = new CharacterSet();
    this.scalable = false;
        }
    

    public function GenericOperatingSystem() {
        super();
        this.initFieldsGenericOperatingSystem();
        var systemProperties:SystemProperties = SystemProperties.getInstance();
        var stringValidationUtil:StringValidationUtil = StringValidationUtil.getInstance();
        var EMPTY_STRING:String = StringUtil.getInstance().EMPTY_STRING;
        if (stringValidationUtil.isEmpty(systemProperties.getName())) {
            this.osName = EMPTY_STRING;
        } else {
            this.osName = systemProperties.getName();
        }
        if (stringValidationUtil.isEmpty(systemProperties.getArch())) {
            this.osArch = EMPTY_STRING;
        } else {
            this.osArch = systemProperties.getArch();
        }
        if (stringValidationUtil.isEmpty(systemProperties.getVersion())) {
            this.osVersion = EMPTY_STRING;
        } else {
            this.osVersion = systemProperties.getVersion();
        }
    }
    

    public function getName():String {
        return this.osName;
    }
    

    public function getVersion():String {
        return this.osVersion;
    }
    

    public function getArch():String {
        return this.osArch;
    }
    

    public function getCharacterSet():CharacterSet {
        return this.characterSet;
    }
    

    public function isOverScan():Boolean {
        return false;
    }
    

    public function getOverScanXPercent():int {
        return 100;
    }
    

    public function getOverScanYPercent():int {
        return 100;
    }
    

    public function isScalable():Boolean {
        return this.scalable;
    }
    

    public function isAutoHide():Boolean {
        return false;
    }
    

    public function toString():String {
        var NEW_LINE:String = CommonSeps.getInstance().NEW_LINE;
        var osBuffer:StringMaker = new StringMaker();
        osBuffer.append("Operating System Info: \n");
        osBuffer.append(this.getName());
        osBuffer.append(NEW_LINE);
        osBuffer.append(this.getArch());
        osBuffer.append(NEW_LINE);
        osBuffer.append(this.getVersion());
        osBuffer.append(NEW_LINE);
        osBuffer.append(StringUtil.getInstance().toString1(this.getCharacterSet()));
        osBuffer.append(NEW_LINE);
        return osBuffer.toString();
    }
    }
}

