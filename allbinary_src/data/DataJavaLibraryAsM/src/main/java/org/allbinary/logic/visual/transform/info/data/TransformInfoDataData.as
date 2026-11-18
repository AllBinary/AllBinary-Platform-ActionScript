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
package org.allbinary.logic.visual.transform.info.data {
    import org.allbinary.logic.io.file.CommonDataFileStrings;

    public class TransformInfoDataData {
    private static var instance_value:TransformInfoDataData;
    private static var instance_set:Boolean = false;
    private static function get instance():TransformInfoDataData {
        if (!TransformInfoDataData.instance_set) {
            TransformInfoDataData.instance_set = true;
            TransformInfoDataData.instance_value = new TransformInfoDataData();
        }
        return TransformInfoDataData.instance_value;
    }
        public var UNCRYPTED_EXTENSION:String = null;
        public var ENCRYPTED_EXTENSION:String = null;

        // Java field initializers run after the base constructor
        private function initFieldsTransformInfoDataData():void {
    this.UNCRYPTED_EXTENSION = CommonDataFileStrings.getInstance().UNCRYPTED_EXTENSION;
    this.ENCRYPTED_EXTENSION = CommonDataFileStrings.getInstance().ENCRYPTED_EXTENSION;
        }
    

    public static function getInstance():TransformInfoDataData {
        return TransformInfoDataData.instance;
    }
    

    public function TransformInfoDataData() {
        super();
        this.initFieldsTransformInfoDataData();
    }
    }
}

