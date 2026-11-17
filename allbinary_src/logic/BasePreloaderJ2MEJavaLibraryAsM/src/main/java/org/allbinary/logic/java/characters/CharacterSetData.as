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
package org.allbinary.logic.java.characters {

    public class CharacterSetData {
    private static var instance_value:CharacterSetData;
    private static var instance_set:Boolean = false;
    private static function get instance():CharacterSetData {
        if (!CharacterSetData.instance_set) {
            CharacterSetData.instance_set = true;
            CharacterSetData.instance_value = new CharacterSetData();
        }
        return CharacterSetData.instance_value;
    }
        public var US_ASCII:String = null;
        public var ISO_8859_1:String = null;
        public var UTF_8:String = null;
        public var UTF_16:String = null;
        public var UTF_16BE:String = null;
        public var UTF_16LE:String = null;

        // Java field initializers run after the base constructor
        private function initFieldsCharacterSetData():void {
    this.US_ASCII = "US-ASCII";
    this.ISO_8859_1 = "ISO-8859-1";
    this.UTF_8 = "UTF-8";
    this.UTF_16 = "UTF-16";
    this.UTF_16BE = "UTF-16BE";
    this.UTF_16LE = "UTF-16LE";
        }
    

    public static function getInstance():CharacterSetData {
        return CharacterSetData.instance;
    }
    

    public function CharacterSetData() {
        super();
        this.initFieldsCharacterSetData();
    }
    }
}

