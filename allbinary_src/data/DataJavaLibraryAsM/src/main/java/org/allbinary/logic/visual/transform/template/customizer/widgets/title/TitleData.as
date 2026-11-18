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
package org.allbinary.logic.visual.transform.template.customizer.widgets.title {

    public class TitleData {
    private static var instance_value:TitleData;
    private static var instance_set:Boolean = false;
    private static function get instance():TitleData {
        if (!TitleData.instance_set) {
            TitleData.instance_set = true;
            TitleData.instance_value = new TitleData();
        }
        return TitleData.instance_value;
    }
        public var NAME:String = null;
        public var TEXT:String = null;
        public var VIEWNAMEKEY:String = null;
        public var MAXLEN:int = 0;

        // Java field initializers run after the base constructor
        private function initFieldsTitleData():void {
    this.NAME = "TITLE_NAME";
    this.TEXT = "TITLE_TEXT";
    this.VIEWNAMEKEY = "Title";
    this.MAXLEN = 255;
        }
    

    public static function getInstance():TitleData {
        return TitleData.instance;
    }
    

    public function TitleData() {
        super();
        this.initFieldsTitleData();
    }
    }
}

