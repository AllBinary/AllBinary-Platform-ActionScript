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
package org.allbinary.business.category {
    import org.allbinary.logic.io.file.CommonDataFileStrings;

    public class CategoryData {
    private static var instance_value:CategoryData;
    private static var instance_set:Boolean = false;
    private static function get instance():CategoryData {
        if (!CategoryData.instance_set) {
            CategoryData.instance_set = true;
            CategoryData.instance_value = new CategoryData();
        }
        return CategoryData.instance_value;
    }
        public var PARENT:String = null;
        public var NAME:String = null;
        public var PATH:String = null;
        public var LABEL:String = null;
        public var VIEW:String = null;
        public var LEVEL:String = null;
        public var REQUEST:String = null;
        public var ROOTCATEGORY:String = null;
        public var UNCRYPTED_EXTENSION:String = null;
        public var ENCRYPTED_EXTENSION:String = null;

        // Java field initializers run after the base constructor
        private function initFieldsCategoryData():void {
    this.PARENT = "CATEGORY_PARENT";
    this.NAME = "CATEGORY_NAME";
    this.PATH = "CATEGORY_PATH";
    this.LABEL = "CATEGORY_LABEL";
    this.VIEW = "CATEGORY_VIEW_CATEGORY";
    this.LEVEL = "CATEGORY_LEVEL";
    this.REQUEST = "request";
    this.ROOTCATEGORY = "Category";
    this.UNCRYPTED_EXTENSION = CommonDataFileStrings.getInstance().UNCRYPTED_EXTENSION;
    this.ENCRYPTED_EXTENSION = CommonDataFileStrings.getInstance().ENCRYPTED_EXTENSION;
        }
    

    public static function getInstance():CategoryData {
        return CategoryData.instance;
    }
    

    public function CategoryData() {
        super();
        this.initFieldsCategoryData();
    }
    }
}

