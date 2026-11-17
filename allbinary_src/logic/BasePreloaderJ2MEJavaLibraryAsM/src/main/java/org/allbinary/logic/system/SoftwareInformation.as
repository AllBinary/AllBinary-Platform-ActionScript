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
package org.allbinary.logic.system {
    import org.allbinary.KotlinUtil;
    import org.allbinary.logic.string.StringMaker;
    import org.allbinary.string.CommonSeps;

    public class SoftwareInformation {
        private var name:String = null;
        private var shortName:String = null;
        private var version:String = null;

        // Java field initializers run after the base constructor
        private function initFieldsSoftwareInformation():void {
    
    
    
        }
    

    public function SoftwareInformation(name:String, version:String, shortName:String) {
        super();
        this.initFieldsSoftwareInformation();
        this.name = name;
        this.version = version;
        this.shortName = new StringMaker().append(shortName).append(KotlinUtil.getShortName()).toString();
    }
    

    public function getName():String {
        return this.name;
    }
    

    public function getVersion():String {
        return this.version;
    }
    

    public function toShortString():String {
        return this.shortName;
    }
    

    public function toString():String {
        var NAME:String = "Name: ";
        var VERSION:String = "Version: ";
        var stringBuffer:StringMaker = new StringMaker();
        stringBuffer.append(NAME);
        stringBuffer.append(this.getName());
        stringBuffer.append(CommonSeps.getInstance().SPACE);
        stringBuffer.append(VERSION);
        stringBuffer.append(this.getVersion());
        return stringBuffer.toString();
    }
    }
}

