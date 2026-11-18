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

    public class HtmlMetaAttributesData {
    private static var instance_value:HtmlMetaAttributesData;
    private static var instance_set:Boolean = false;
    private static function get instance():HtmlMetaAttributesData {
        if (!HtmlMetaAttributesData.instance_set) {
            HtmlMetaAttributesData.instance_set = true;
            HtmlMetaAttributesData.instance_value = new HtmlMetaAttributesData();
        }
        return HtmlMetaAttributesData.instance_value;
    }
        public var NAME_VALUE:String = null;
        public var HTTP_EQUIV_VALUE:String = null;

        // Java field initializers run after the base constructor
        private function initFieldsHtmlMetaAttributesData():void {
    this.NAME_VALUE = "name";
    this.HTTP_EQUIV_VALUE = "http-equiv";
        }
    

    public static function getInstance():HtmlMetaAttributesData {
        return HtmlMetaAttributesData.instance;
    }
    

    public function HtmlMetaAttributesData() {
        super();
        this.initFieldsHtmlMetaAttributesData();
    }
    }
}

