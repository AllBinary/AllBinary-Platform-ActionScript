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
package org.allbinary.business.context.configuration {
    import org.allbinary.logic.io.file.CommonDataFileStrings;

    public class ContextConfigurationData {
    private static var instance_value:ContextConfigurationData;
    private static var instance_set:Boolean = false;
    private static function get instance():ContextConfigurationData {
        if (!ContextConfigurationData.instance_set) {
            ContextConfigurationData.instance_set = true;
            ContextConfigurationData.instance_value = new ContextConfigurationData();
        }
        return ContextConfigurationData.instance_value;
    }
        public var NAME:String = null;
        public var UNCRYPTED_EXTENSION:String = null;
        public var ENCRYPTED_EXTENSION:String = null;

        // Java field initializers run after the base constructor
        private function initFieldsContextConfigurationData():void {
    this.NAME = "CONTEXT_CONFIGURATION_NAME";
    this.UNCRYPTED_EXTENSION = CommonDataFileStrings.getInstance().UNCRYPTED_EXTENSION;
    this.ENCRYPTED_EXTENSION = CommonDataFileStrings.getInstance().ENCRYPTED_EXTENSION;
        }
    

    public static function getInstance():ContextConfigurationData {
        return ContextConfigurationData.instance;
    }
    

    public function ContextConfigurationData() {
        super();
        this.initFieldsContextConfigurationData();
    }
    }
}

