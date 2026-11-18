/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2022 AllBinary 
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
package org.allbinary.persistance {
    import org.allbinary.logic.string.StringMaker;
    import org.allbinary.logic.system.security.licensing.AbeClientInformationInterface;
    import org.allbinary.string.CommonSeps;

    public class PlatformRecordIdUtil {
    private static var instance_value:PlatformRecordIdUtil;
    private static var instance_set:Boolean = false;
    private static function get instance():PlatformRecordIdUtil {
        if (!PlatformRecordIdUtil.instance_set) {
            PlatformRecordIdUtil.instance_set = true;
            PlatformRecordIdUtil.instance_value = new PlatformRecordIdUtil();
        }
        return PlatformRecordIdUtil.instance_value;
    }
        private var PLATFORM_SHORT_NAME:String = null;

        // Java field initializers run after the base constructor
        private function initFieldsPlatformRecordIdUtil():void {
    this.PLATFORM_SHORT_NAME = "JSE";
        }

        public function PlatformRecordIdUtil() {
            super();
            this.initFieldsPlatformRecordIdUtil();
        }
    

    public static function getInstance():PlatformRecordIdUtil {
        return PlatformRecordIdUtil.instance;
    }
    

    public function getRecordId(abeClientInformation:AbeClientInformationInterface, baseRecordId:String):String {
        return new StringMaker().append(abeClientInformation.toShortString()).append(CommonSeps.getInstance().UNDERSCORE).append(this.PLATFORM_SHORT_NAME).append(baseRecordId).toString();
    }
    }
}

