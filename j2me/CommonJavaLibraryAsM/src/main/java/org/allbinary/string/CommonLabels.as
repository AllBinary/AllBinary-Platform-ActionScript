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
package org.allbinary.string {

    public class CommonLabels {
    private static var instance_value:CommonLabels;
    private static var instance_set:Boolean = false;
    private static function get instance():CommonLabels {
        if (!CommonLabels.instance_set) {
            CommonLabels.instance_set = true;
            CommonLabels.instance_value = new CommonLabels();
        }
        return CommonLabels.instance_value;
    }
        public var WIDTH_LABEL:String = null;
        public var HEIGHT_LABEL:String = null;
        public var END_LABEL:String = null;
        public var TOTAL_LABEL:String = null;
        public var INDEX_LABEL:String = null;
        public var START_LABEL:String = null;
        public var COMMAND_LABEL:String = null;
        public var NAME_LABEL:String = null;
        public var START:String = null;
        public var ELAPSED:String = null;
        public var CURRENT:String = null;
        public var NEXT:String = null;
        public var ITEM_LABEL:String = null;
        public var RESULT_:String = null;
        public var COLON_SEP:String = null;

        // Java field initializers run after the base constructor
        private function initFieldsCommonLabels():void {
    this.WIDTH_LABEL = " Width: ";
    this.HEIGHT_LABEL = " Height: ";
    this.END_LABEL = "End: ";
    this.TOTAL_LABEL = "Total: ";
    this.INDEX_LABEL = "index: ";
    this.START_LABEL = "Start: ";
    this.COMMAND_LABEL = "Command: ";
    this.NAME_LABEL = "Name: ";
    this.START = this.START_LABEL;
    this.ELAPSED = " Elapsed: ";
    this.CURRENT = " Current: ";
    this.NEXT = "Next";
    this.ITEM_LABEL = "Item: ";
    this.RESULT_ = "Result: ";
    this.COLON_SEP = ": ";
        }

        public function CommonLabels() {
            super();
            this.initFieldsCommonLabels();
        }
    

    public static function getInstance():CommonLabels {
        return CommonLabels.instance;
    }
    }
}

