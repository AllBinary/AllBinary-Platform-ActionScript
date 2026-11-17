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
package org.allbinary.logic.java.bool {

    public class BooleanFactory {
    private static var instance_value:BooleanFactory;
    private static var instance_set:Boolean = false;
    private static function get instance():BooleanFactory {
        if (!BooleanFactory.instance_set) {
            BooleanFactory.instance_set = true;
            BooleanFactory.instance_value = new BooleanFactory();
        }
        return BooleanFactory.instance_value;
    }
        public var TRUE:* = null;
        public var FALSE:* = null;
        public var TRUE_STRING:String = null;
        public var FALSE_STRING:String = null;
        public var YES:String = null;
        public var NO:String = null;

        // Java field initializers run after the base constructor
        private function initFieldsBooleanFactory():void {
    this.TRUE = true;
    this.FALSE = false;
    this.TRUE_STRING = this.TRUE.toString();
    this.FALSE_STRING = this.FALSE.toString();
    this.YES = "yes";
    this.NO = "no";
        }

        public function BooleanFactory() {
            super();
            this.initFieldsBooleanFactory();
        }
    

    public static function getInstance():BooleanFactory {
        return BooleanFactory.instance;
    }
    

    public function toStringb(bool:Boolean):String {
        if (bool) {
            return this.TRUE_STRING;
        } else {
            return this.FALSE_STRING;
        }
    }
    }
}

