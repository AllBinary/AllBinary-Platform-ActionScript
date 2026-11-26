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
package org.allbinary.logic.communication.log.config.type {
    import org.allbinary.logic.communication.log.LogUtil;
    import org.allbinary.util.BasicArrayList;
    import org.allbinary.util.BasicArrayListD;

    public class LogConfigType {
    private static var availableLogConfigTypes_value:BasicArrayList;
    private static var availableLogConfigTypes_set:Boolean = false;
    public static function get availableLogConfigTypes():BasicArrayList {
        if (!LogConfigType.availableLogConfigTypes_set) {
            LogConfigType.availableLogConfigTypes_set = true;
            LogConfigType.availableLogConfigTypes_value = new BasicArrayListD();
        }
        return LogConfigType.availableLogConfigTypes_value;
    }
    public static function set availableLogConfigTypes(value:BasicArrayList):void {
        LogConfigType.availableLogConfigTypes_set = true;
        LogConfigType.availableLogConfigTypes_value = value;
    }
        public var logUtil:LogUtil = null;
        private var name:String = null;
        private var description:String = null;

        // Java field initializers run after the base constructor
        private function initFieldsLogConfigType():void {
    this.logUtil = LogUtil.getInstance();
    
    
        }
    

    public function LogConfigType(name:String, description:String) {
        super();
        this.initFieldsLogConfigType();
        this.name = name;
        this.description = description;
        LogConfigType.availableLogConfigTypes.add(this);
    }
    

    public function getName():String {
        return this.name;
    }
    

    public function getDescription():String {
        return this.description;
    }
    

    public function setName(value:String):void {
        this.name = value;
    }
    

    public function setDescription(value:String):void {
        this.description = value;
    }
    }
}

