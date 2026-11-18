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

    public class HtmlMetasData {
    private static var instance_value:HtmlMetasData;
    private static var instance_set:Boolean = false;
    private static function get instance():HtmlMetasData {
        if (!HtmlMetasData.instance_set) {
            HtmlMetasData.instance_set = true;
            HtmlMetasData.instance_value = new HtmlMetasData();
        }
        return HtmlMetasData.instance_value;
    }
        public var NAME:String = null;

        // Java field initializers run after the base constructor
        private function initFieldsHtmlMetasData():void {
    this.NAME = "HTMLMETAS_NAME";
        }
    

    public function HtmlMetasData() {
        super();
        this.initFieldsHtmlMetasData();
    }
    

    public static function getInstance():HtmlMetasData {
        return HtmlMetasData.instance;
    }
    }
}

