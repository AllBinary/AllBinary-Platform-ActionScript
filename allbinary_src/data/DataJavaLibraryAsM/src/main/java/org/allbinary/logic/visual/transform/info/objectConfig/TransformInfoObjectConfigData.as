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
package org.allbinary.logic.visual.transform.info.objectConfig {
    import org.allbinary.logic.io.file.CommonDataFileStrings;

    public class TransformInfoObjectConfigData {
    private static var instance_value:TransformInfoObjectConfigData;
    private static var instance_set:Boolean = false;
    private static function get instance():TransformInfoObjectConfigData {
        if (!TransformInfoObjectConfigData.instance_set) {
            TransformInfoObjectConfigData.instance_set = true;
            TransformInfoObjectConfigData.instance_value = new TransformInfoObjectConfigData();
        }
        return TransformInfoObjectConfigData.instance_value;
    }
        public var NAME:String = null;
        public var VARKEY:String = null;
        public var UNCRYPTED_EXTENSION:String = null;
        public var ENCRYPTED_EXTENSION:String = null;

        // Java field initializers run after the base constructor
        private function initFieldsTransformInfoObjectConfigData():void {
    this.NAME = "OBJECTCONFIG_NAME";
    this.VARKEY = "$";
    this.UNCRYPTED_EXTENSION = CommonDataFileStrings.getInstance().UNCRYPTED_EXTENSION;
    this.ENCRYPTED_EXTENSION = CommonDataFileStrings.getInstance().ENCRYPTED_EXTENSION;
        }
    

    public static function getInstance():TransformInfoObjectConfigData {
        return TransformInfoObjectConfigData.instance;
    }
    

    public function TransformInfoObjectConfigData() {
        super();
        this.initFieldsTransformInfoObjectConfigData();
    }
    }
}

