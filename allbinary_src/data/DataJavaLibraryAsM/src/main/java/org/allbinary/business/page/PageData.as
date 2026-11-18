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
package org.allbinary.business.page {

    public class PageData {
    private static var instance_value:PageData;
    private static var instance_set:Boolean = false;
    private static function get instance():PageData {
        if (!PageData.instance_set) {
            PageData.instance_set = true;
            PageData.instance_value = new PageData();
        }
        return PageData.instance_value;
    }
        public var NAME:String = null;

        // Java field initializers run after the base constructor
        private function initFieldsPageData():void {
    this.NAME = "PAGE_NAME";
        }
    

    public static function getInstance():PageData {
        return PageData.instance;
    }
    

    public function PageData() {
        super();
        this.initFieldsPageData();
    }
    }
}

