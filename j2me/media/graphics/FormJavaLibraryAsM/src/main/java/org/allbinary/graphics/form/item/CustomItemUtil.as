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
package org.allbinary.graphics.form.item {

    public class CustomItemUtil {
    private static var instance_value:CustomItemUtil;
    private static var instance_set:Boolean = false;
    private static function get instance():CustomItemUtil {
        if (!CustomItemUtil.instance_set) {
            CustomItemUtil.instance_set = true;
            CustomItemUtil.instance_value = new CustomItemUtil();
        }
        return CustomItemUtil.instance_value;
    }
        public var CUSTOM_ITEM_ARRAY:Vector.<ABCustomItem> = null;

        // Java field initializers run after the base constructor
        private function initFieldsCustomItemUtil():void {
    this.CUSTOM_ITEM_ARRAY = new Vector.<ABCustomItem>(0);
        }

        public function CustomItemUtil() {
            super();
            this.initFieldsCustomItemUtil();
        }
    

    public static function getInstance():CustomItemUtil {
        return CustomItemUtil.instance;
    }
    }
}

