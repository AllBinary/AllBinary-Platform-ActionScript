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
package org.allbinary.resources {
    import org.allbinary.logic.StdUtil;
    import org.allbinary.util.ABHashtable;

    public class KeyValueFactory {
    private static var instance_value:KeyValueFactory;
    private static var instance_set:Boolean = false;
    private static function get instance():KeyValueFactory {
        if (!KeyValueFactory.instance_set) {
            KeyValueFactory.instance_set = true;
            KeyValueFactory.instance_value = new KeyValueFactory();
        }
        return KeyValueFactory.instance_value;
    }
        public var MAP:ABHashtable = null;

        // Java field initializers run after the base constructor
        private function initFieldsKeyValueFactory():void {
    this.MAP = StdUtil.getInstance().createHashtable();
        }

        public function KeyValueFactory() {
            super();
            this.initFieldsKeyValueFactory();
        }
    

    public static function getInstance():KeyValueFactory {
        return KeyValueFactory.instance;
    }
    

    public function get_(key:String):String {
        if (!this.MAP.containsKey((key as Object))) {
            return key;
        }
        return (this.MAP.get_((key as Object)) as String);
    }
    }
}

