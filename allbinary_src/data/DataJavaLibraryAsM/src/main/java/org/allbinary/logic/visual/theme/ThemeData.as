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
package org.allbinary.logic.visual.theme {

    public class ThemeData {
    private static var instance_value:ThemeData;
    private static var instance_set:Boolean = false;
    private static function get instance():ThemeData {
        if (!ThemeData.instance_set) {
            ThemeData.instance_set = true;
            ThemeData.instance_value = new ThemeData();
        }
        return ThemeData.instance_value;
    }
        public var NAME:String = null;
        public var PATH:String = null;
        public var PREVIEW_IMAGE_NAME:String = null;
        public var PREVIEW_IMAGE_PATH:String = null;

        // Java field initializers run after the base constructor
        private function initFieldsThemeData():void {
    this.NAME = "THEME_NAME";
    this.PATH = "THEME_PATH";
    this.PREVIEW_IMAGE_NAME = "THEME_PREVIEW_IMAGE_NAME";
    this.PREVIEW_IMAGE_PATH = "THEME_PREVIEW_IMAGE_PATH";
        }
    

    public static function getInstance():ThemeData {
        return ThemeData.instance;
    }
    

    public function ThemeData() {
        super();
        this.initFieldsThemeData();
    }
    }
}

