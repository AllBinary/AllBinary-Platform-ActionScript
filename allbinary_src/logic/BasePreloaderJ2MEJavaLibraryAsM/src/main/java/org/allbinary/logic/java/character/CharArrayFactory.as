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
package org.allbinary.logic.java.character {

    public class CharArrayFactory {
    private static var instance_value:CharArrayFactory;
    private static var instance_set:Boolean = false;
    private static function get instance():CharArrayFactory {
        if (!CharArrayFactory.instance_set) {
            CharArrayFactory.instance_set = true;
            CharArrayFactory.instance_value = new CharArrayFactory();
        }
        return CharArrayFactory.instance_value;
    }
        private var zeroCharArray:Vector.<int> = null;

        // Java field initializers run after the base constructor
        private function initFieldsCharArrayFactory():void {
    this.zeroCharArray = new Vector.<int>(0);
        }

        public function CharArrayFactory() {
            super();
            this.initFieldsCharArrayFactory();
        }
    

    public static function getInstance():CharArrayFactory {
        return CharArrayFactory.instance;
    }
    

    public function getZeroCharArray():Vector.<int> {
        return this.zeroCharArray;
    }
    }
}

