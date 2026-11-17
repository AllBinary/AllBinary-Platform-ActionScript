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
package org.allbinary.graphics {

    public class ItemColorFactory {
    private static var instance_value:ItemColorFactory;
    private static var instance_set:Boolean = false;
    private static function get instance():ItemColorFactory {
        if (!ItemColorFactory.instance_set) {
            ItemColorFactory.instance_set = true;
            ItemColorFactory.instance_value = new ItemColorFactory();
        }
        return ItemColorFactory.instance_value;
    }
        public var INVERT_PAINT:int = 0;
        public var PAINT:int = 0;
        public var TEXT_FIELD_NO_FOCUS:int = 0;

        // Java field initializers run after the base constructor
        private function initFieldsItemColorFactory():void {
    this.INVERT_PAINT = int(0xFF000000);
    this.PAINT = int(0xFFe07718);
    this.TEXT_FIELD_NO_FOCUS = 0x7F7F7F;
        }

        public function ItemColorFactory() {
            super();
            this.initFieldsItemColorFactory();
        }
    

    public static function getInstance():ItemColorFactory {
        return ItemColorFactory.instance;
    }
    }
}

