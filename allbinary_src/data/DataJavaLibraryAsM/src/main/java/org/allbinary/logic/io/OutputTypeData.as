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
package org.allbinary.logic.io {

    public class OutputTypeData {
    private static var instance_value:OutputTypeData;
    private static var instance_set:Boolean = false;
    private static function get instance():OutputTypeData {
        if (!OutputTypeData.instance_set) {
            OutputTypeData.instance_set = true;
            OutputTypeData.instance_value = new OutputTypeData();
        }
        return OutputTypeData.instance_value;
    }
        public var NAME:String = null;

        // Java field initializers run after the base constructor
        private function initFieldsOutputTypeData():void {
    this.NAME = "OUTPUT_TYPE_NAME";
        }
    

    public function OutputTypeData() {
        super();
        this.initFieldsOutputTypeData();
    }
    

    public static function getInstance():OutputTypeData {
        return OutputTypeData.instance;
    }
    }
}

