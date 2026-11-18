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
package org.allbinary.logic.visual.transform.template {

    public class XslData {
    private static var instance_value:XslData;
    private static var instance_set:Boolean = false;
    private static function get instance():XslData {
        if (!XslData.instance_set) {
            XslData.instance_set = true;
            XslData.instance_value = new XslData();
        }
        return XslData.instance_value;
    }
        public var NAME:String = null;
        public var ROOT_IMPORT_URI:String = null;

        // Java field initializers run after the base constructor
        private function initFieldsXslData():void {
    this.NAME = "XSL_NAME";
    this.ROOT_IMPORT_URI = "ROOT_IMPORT_URI";
        }
    

    public static function getInstance():XslData {
        return XslData.instance;
    }
    

    public function XslData() {
        super();
        this.initFieldsXslData();
    }
    }
}

