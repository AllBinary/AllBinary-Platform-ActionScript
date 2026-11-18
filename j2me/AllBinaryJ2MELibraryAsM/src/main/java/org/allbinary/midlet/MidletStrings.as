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
package org.allbinary.midlet {

    public class MidletStrings {
    private static var instance_value:MidletStrings;
    private static var instance_set:Boolean = false;
    private static function get instance():MidletStrings {
        if (!MidletStrings.instance_set) {
            MidletStrings.instance_set = true;
            MidletStrings.instance_value = new MidletStrings();
        }
        return MidletStrings.instance_value;
    }
        public var COMMAND_ACTION:String = null;

        // Java field initializers run after the base constructor
        private function initFieldsMidletStrings():void {
    this.COMMAND_ACTION = "commandAction";
        }

        public function MidletStrings() {
            super();
            this.initFieldsMidletStrings();
        }
    

    public static function getInstance():MidletStrings {
        return MidletStrings.instance;
    }
    }
}

