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

    public class HtmlMetaAttributeDataFactory {
    private static var instance_value:HtmlMetaAttributeDataFactory;
    private static var instance_set:Boolean = false;
    private static function get instance():HtmlMetaAttributeDataFactory {
        if (!HtmlMetaAttributeDataFactory.instance_set) {
            HtmlMetaAttributeDataFactory.instance_set = true;
            HtmlMetaAttributeDataFactory.instance_value = new HtmlMetaAttributeDataFactory();
        }
        return HtmlMetaAttributeDataFactory.instance_value;
    }
        public var NAME:HtmlMetaAttributeData = null;
        public var HTTP_EQUIV:HtmlMetaAttributeData = null;
        public var CONTENT:HtmlMetaAttributeData = null;

        // Java field initializers run after the base constructor
        private function initFieldsHtmlMetaAttributeDataFactory():void {
    this.NAME = new HtmlMetaAttributeData(0, "HTMLMETA_ATTRIBUTE_NAME");
    this.HTTP_EQUIV = new HtmlMetaAttributeData(1, "HTMLMETA_ATTRIBUTE_HTTPEQUIV");
    this.CONTENT = new HtmlMetaAttributeData(2, "HTMLMETA_ATTRIBUTE_CONTENT");
        }
    

    public static function getInstance():HtmlMetaAttributeDataFactory {
        return HtmlMetaAttributeDataFactory.instance;
    }
    

    public function HtmlMetaAttributeDataFactory() {
        super();
        this.initFieldsHtmlMetaAttributeDataFactory();
    }
    }
}

