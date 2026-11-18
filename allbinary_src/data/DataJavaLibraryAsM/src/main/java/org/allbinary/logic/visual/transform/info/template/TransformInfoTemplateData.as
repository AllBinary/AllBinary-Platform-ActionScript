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
package org.allbinary.logic.visual.transform.info.template {

    public class TransformInfoTemplateData {
    private static var instance_value:TransformInfoTemplateData;
    private static var instance_set:Boolean = false;
    private static function get instance():TransformInfoTemplateData {
        if (!TransformInfoTemplateData.instance_set) {
            TransformInfoTemplateData.instance_set = true;
            TransformInfoTemplateData.instance_value = new TransformInfoTemplateData();
        }
        return TransformInfoTemplateData.instance_value;
    }
        public var UNCRYPTED_EXTENSION:String = null;
        public var ENCRYPTED_EXTENSION:String = null;

        // Java field initializers run after the base constructor
        private function initFieldsTransformInfoTemplateData():void {
    this.UNCRYPTED_EXTENSION = "xsl";
    this.ENCRYPTED_EXTENSION = "abv";
        }
    

    public static function getInstance():TransformInfoTemplateData {
        return TransformInfoTemplateData.instance;
    }
    

    public function TransformInfoTemplateData() {
        super();
        this.initFieldsTransformInfoTemplateData();
    }
    }
}

