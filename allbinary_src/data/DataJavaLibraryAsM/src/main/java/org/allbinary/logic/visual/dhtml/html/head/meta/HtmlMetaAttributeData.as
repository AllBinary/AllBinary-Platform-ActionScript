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

    public class HtmlMetaAttributeData {
        private var id:int = 0;
        private var name:String = null;

        // Java field initializers run after the base constructor
        private function initFieldsHtmlMetaAttributeData():void {
    
    
        }
    

    public function HtmlMetaAttributeData(id:int, value:String) {
        super();
        this.initFieldsHtmlMetaAttributeData();
        this.name = value;
        this.id = id;
    }
    

    public function equals(htmlMetaAttributeData:HtmlMetaAttributeData):Boolean {
        if (htmlMetaAttributeData.id == this.id) {
            return true;
        } else {
            return false;
        }
    }
    

    public function toString():String {
        return this.name;
    }
    }
}

