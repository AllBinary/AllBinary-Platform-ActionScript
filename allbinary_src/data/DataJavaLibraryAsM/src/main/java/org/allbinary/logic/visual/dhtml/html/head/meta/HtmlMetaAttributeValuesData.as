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

    public class HtmlMetaAttributeValuesData {
    private static var instance_value:HtmlMetaAttributeValuesData;
    private static var instance_set:Boolean = false;
    private static function get instance():HtmlMetaAttributeValuesData {
        if (!HtmlMetaAttributeValuesData.instance_set) {
            HtmlMetaAttributeValuesData.instance_set = true;
            HtmlMetaAttributeValuesData.instance_value = new HtmlMetaAttributeValuesData();
        }
        return HtmlMetaAttributeValuesData.instance_value;
    }
        public var ABSTRACT:String = null;
        public var DESCRIPTION:String = null;
        public var KEYWORDS:String = null;

        // Java field initializers run after the base constructor
        private function initFieldsHtmlMetaAttributeValuesData():void {
    this.ABSTRACT = "abstract";
    this.DESCRIPTION = "description";
    this.KEYWORDS = "keywords";
        }
    

    public static function getInstance():HtmlMetaAttributeValuesData {
        return HtmlMetaAttributeValuesData.instance;
    }
    

    public function HtmlMetaAttributeValuesData() {
        super();
        this.initFieldsHtmlMetaAttributeValuesData();
    }
    }
}

