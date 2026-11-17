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
package org.allbinary.logic.java {

    public class FileExtensionData {
    private static var instance_value:FileExtensionData;
    private static var instance_set:Boolean = false;
    private static function get instance():FileExtensionData {
        if (!FileExtensionData.instance_set) {
            FileExtensionData.instance_set = true;
            FileExtensionData.instance_value = new FileExtensionData();
        }
        return FileExtensionData.instance_value;
    }
        public var DOT_JAVA_SOURCE:String = null;
        public var JAVA_SOURCE:String = null;

        // Java field initializers run after the base constructor
        private function initFieldsFileExtensionData():void {
    this.DOT_JAVA_SOURCE = ".java";
    this.JAVA_SOURCE = "java";
        }
    

    public static function getInstance():FileExtensionData {
        return FileExtensionData.instance;
    }
    

    public function FileExtensionData() {
        super();
        this.initFieldsFileExtensionData();
    }
    }
}

