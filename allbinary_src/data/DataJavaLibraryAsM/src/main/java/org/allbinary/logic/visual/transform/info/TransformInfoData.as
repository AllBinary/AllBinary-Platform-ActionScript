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

    public class TransformInfoData {
    private static var instance_value:TransformInfoData;
    private static var instance_set:Boolean = false;
    private static function get instance():TransformInfoData {
        if (!TransformInfoData.instance_set) {
            TransformInfoData.instance_set = true;
            TransformInfoData.instance_value = new TransformInfoData();
        }
        return TransformInfoData.instance_value;
    }
        public var PARENT:String = null;
        public var MAPPED:String = null;
        public var NAME:String = null;
        public var DESCRIPTION:String = null;
        public var CATEGORY:String = null;
        public var OBJECTFILENAME:String = null;
        public var OBJECT:String = null;
        public var OBJECTCONFIGFILENAME:String = null;
        public var OBJECTCONFIG:String = null;
        public var TEMPLATEFILENAME:String = null;
        public var TEMPLATE:String = null;
        public var DATAFILENAME:String = null;
        public var DATA:String = null;
        public var LABEL:String = null;
        public var OWNER:String = null;
        public var PARTIAL:String = null;

        // Java field initializers run after the base constructor
        private function initFieldsTransformInfoData():void {
    this.PARENT = "TRANSFORM_INFO_PARENT";
    this.MAPPED = "TRANSFORM_INFO_MAPPED";
    this.NAME = "TRANSFORM_INFO_NAME";
    this.DESCRIPTION = "TRANSFORM_INFO_DESCRIPTION";
    this.CATEGORY = "TRANSFORM_INFO_CATEGORY";
    this.OBJECTFILENAME = "TRANSFORM_INFO_OBJECTFILENAME";
    this.OBJECT = "TRANSFORM_INFO_OBJECT";
    this.OBJECTCONFIGFILENAME = "TRANSFORM_INFO_OBJECTCONFIGFILENAME";
    this.OBJECTCONFIG = "TRANSFORM_INFO_OBJECTCONFIG";
    this.TEMPLATEFILENAME = "TRANSFORM_INFO_TEMPLATEFILENAME";
    this.TEMPLATE = "TRANSFORM_INFO_TEMPLATE";
    this.DATAFILENAME = "TRANSFORM_INFO_DATAFILENAME";
    this.DATA = "TRANSFORM_INFO_DATA";
    this.LABEL = "TRANSFORM_INFO_LABEL";
    this.OWNER = "OWNER_" + this.NAME;
    this.PARTIAL = "PARTIAL_" + this.NAME;
        }
    

    public static function getInstance():TransformInfoData {
        return TransformInfoData.instance;
    }
    

    public function TransformInfoData() {
        super();
        this.initFieldsTransformInfoData();
    }
    }
}

