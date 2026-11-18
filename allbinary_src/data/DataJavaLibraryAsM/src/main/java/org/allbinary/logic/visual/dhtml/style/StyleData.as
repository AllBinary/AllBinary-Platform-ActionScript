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
package org.allbinary.logic.visual.dhtml.style {

    public class StyleData {
    private static var instance_value:StyleData;
    private static var instance_set:Boolean = false;
    private static function get instance():StyleData {
        if (!StyleData.instance_set) {
            StyleData.instance_set = true;
            StyleData.instance_value = new StyleData();
        }
        return StyleData.instance_value;
    }
        public var NAME:String = null;
        public var NAMEMAXLEN:int = 0;

        // Java field initializers run after the base constructor
        private function initFieldsStyleData():void {
    this.NAME = "STYLE_NAME";
    this.NAMEMAXLEN = 255;
        }
    

    public static function getInstance():StyleData {
        return StyleData.instance;
    }
    

    public function StyleData() {
        super();
        this.initFieldsStyleData();
    }
    }
}

