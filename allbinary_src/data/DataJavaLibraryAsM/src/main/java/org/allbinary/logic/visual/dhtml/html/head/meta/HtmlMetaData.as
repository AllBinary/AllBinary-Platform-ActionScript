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
package org.allbinary.logic.visual.dhtml.html.head.meta {

    public class HtmlMetaData {
    private static var instance_value:HtmlMetaData;
    private static var instance_set:Boolean = false;
    private static function get instance():HtmlMetaData {
        if (!HtmlMetaData.instance_set) {
            HtmlMetaData.instance_set = true;
            HtmlMetaData.instance_value = new HtmlMetaData();
        }
        return HtmlMetaData.instance_value;
    }
        public var NAME:String = null;
        public var LABEL:String = null;
        public var VALUE:String = null;

        // Java field initializers run after the base constructor
        private function initFieldsHtmlMetaData():void {
    this.NAME = "HTMLMETA_NAME";
    this.LABEL = "HTMLMETA_LABEL";
    this.VALUE = "meta";
        }
    

    public function HtmlMetaData() {
        super();
        this.initFieldsHtmlMetaData();
    }
    

    public static function getInstance():HtmlMetaData {
        return HtmlMetaData.instance;
    }
    }
}

