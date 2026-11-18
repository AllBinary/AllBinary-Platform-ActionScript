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

    public class StylesData {
    private static var instance_value:StylesData;
    private static var instance_set:Boolean = false;
    private static function get instance():StylesData {
        if (!StylesData.instance_set) {
            StylesData.instance_set = true;
            StylesData.instance_value = new StylesData();
        }
        return StylesData.instance_value;
    }
        public var NAME:String = null;

        // Java field initializers run after the base constructor
        private function initFieldsStylesData():void {
    this.NAME = "STYLES_NAME";
        }
    

    public static function getInstance():StylesData {
        return StylesData.instance;
    }
    

    public function StylesData() {
        super();
        this.initFieldsStylesData();
    }
    }
}

