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
package org.allbinary.string {

    public class CommonPhoneStrings {
    private static var instance_value:CommonPhoneStrings;
    private static var instance_set:Boolean = false;
    private static function get instance():CommonPhoneStrings {
        if (!CommonPhoneStrings.instance_set) {
            CommonPhoneStrings.instance_set = true;
            CommonPhoneStrings.instance_value = new CommonPhoneStrings();
        }
        return CommonPhoneStrings.instance_value;
    }
        public var UP:String = null;
        public var DOWN:String = null;
        public var LEFT:String = null;
        public var RIGHT:String = null;
        public var ZERO:String = null;
        public var ONE:String = null;
        public var TWO:String = null;
        public var THREE:String = null;
        public var FOUR:String = null;
        public var FIVE:String = null;
        public var SIX:String = null;
        public var SEVEN:String = null;
        public var EIGHT:String = null;
        public var NINE:String = null;
        public var POUND:String = null;
        public var STAR:String = null;
        public var FIRE:String = null;

        // Java field initializers run after the base constructor
        private function initFieldsCommonPhoneStrings():void {
    this.UP = "UP";
    this.DOWN = "DOWN";
    this.LEFT = "LEFT";
    this.RIGHT = "RIGHT";
    this.ZERO = "0";
    this.ONE = "1";
    this.TWO = "2";
    this.THREE = "3";
    this.FOUR = "4";
    this.FIVE = "5";
    this.SIX = "6";
    this.SEVEN = "7";
    this.EIGHT = "8";
    this.NINE = "9";
    this.POUND = "#";
    this.STAR = "*";
    this.FIRE = "FIRE";
        }

        public function CommonPhoneStrings() {
            super();
            this.initFieldsCommonPhoneStrings();
        }
    

    public static function getInstance():CommonPhoneStrings {
        return CommonPhoneStrings.instance;
    }
    }
}

