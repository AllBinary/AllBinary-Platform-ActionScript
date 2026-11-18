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
package org.allbinary.logic.visual.transform.info {

    public class TransformInfosData {
    private static var instance_value:TransformInfosData;
    private static var instance_set:Boolean = false;
    private static function get instance():TransformInfosData {
        if (!TransformInfosData.instance_set) {
            TransformInfosData.instance_set = true;
            TransformInfosData.instance_value = new TransformInfosData();
        }
        return TransformInfosData.instance_value;
    }
        public var NAME:String = null;
        public var GROUP:String = null;
        public var ALL:String = null;
        public var PREVIEW:String = null;
        public var SMALL_PREVIEW:String = null;

        // Java field initializers run after the base constructor
        private function initFieldsTransformInfosData():void {
    this.NAME = "TRANSFORM_INFOS_NAME";
    this.GROUP = "TRANSFORM_INFOS_GROUP";
    this.ALL = "TRANSFORM_INFOS_ALL";
    this.PREVIEW = "TRANSFORM_INFOS_PREVIEW";
    this.SMALL_PREVIEW = "TRANSFORM_INFOS_SMALL_PREVIEW";
        }
    

    public function TransformInfosData() {
        super();
        this.initFieldsTransformInfosData();
    }
    

    public static function getInstance():TransformInfosData {
        return TransformInfosData.instance;
    }
    }
}

