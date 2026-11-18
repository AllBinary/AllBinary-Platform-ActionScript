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

    public class ColorsData {
    private static var instance_value:ColorsData;
    private static var instance_set:Boolean = false;
    private static function get instance():ColorsData {
        if (!ColorsData.instance_set) {
            ColorsData.instance_set = true;
            ColorsData.instance_value = new ColorsData();
        }
        return ColorsData.instance_value;
    }
        public var NAME:String = null;

        // Java field initializers run after the base constructor
        private function initFieldsColorsData():void {
    this.NAME = "COLORS_NAME";
        }
    

    public static function getInstance():ColorsData {
        return ColorsData.instance;
    }
    

    public function ColorsData() {
        super();
        this.initFieldsColorsData();
    }
    }
}

