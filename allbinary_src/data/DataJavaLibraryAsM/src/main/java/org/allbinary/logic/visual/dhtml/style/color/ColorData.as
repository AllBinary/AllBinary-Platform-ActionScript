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
package org.allbinary.logic.visual.dhtml.style.color {

    public class ColorData {
    private static var instance_value:ColorData;
    private static var instance_set:Boolean = false;
    private static function get instance():ColorData {
        if (!ColorData.instance_set) {
            ColorData.instance_set = true;
            ColorData.instance_value = new ColorData();
        }
        return ColorData.instance_value;
    }
        public var NAME:String = null;

        // Java field initializers run after the base constructor
        private function initFieldsColorData():void {
    this.NAME = "COLOR_NAME";
        }
    

    public static function getInstance():ColorData {
        return ColorData.instance;
    }
    

    public function ColorData() {
        super();
        this.initFieldsColorData();
    }
    }
}

