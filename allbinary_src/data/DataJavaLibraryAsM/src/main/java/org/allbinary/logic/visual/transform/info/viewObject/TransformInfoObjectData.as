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
package org.allbinary.logic.visual.transform.info.viewObject {

    public class TransformInfoObjectData {
    private static var instance_value:TransformInfoObjectData;
    private static var instance_set:Boolean = false;
    private static function get instance():TransformInfoObjectData {
        if (!TransformInfoObjectData.instance_set) {
            TransformInfoObjectData.instance_set = true;
            TransformInfoObjectData.instance_value = new TransformInfoObjectData();
        }
        return TransformInfoObjectData.instance_value;
    }
        public var UNCRYPTED_EXTENSION:String = null;
        public var ENCRYPTED_EXTENSION:String = null;

        // Java field initializers run after the base constructor
        private function initFieldsTransformInfoObjectData():void {
    this.UNCRYPTED_EXTENSION = "class";
    this.ENCRYPTED_EXTENSION = "abw";
        }
    

    public static function getInstance():TransformInfoObjectData {
        return TransformInfoObjectData.instance;
    }
    

    public function TransformInfoObjectData() {
        super();
        this.initFieldsTransformInfoObjectData();
    }
    }
}

