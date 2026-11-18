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
package org.allbinary.logic.math {
    import org.allbinary.logic.string.StringMaker;

    public class Orientation {
    private static var NONE_value:Orientation;
    private static var NONE_set:Boolean = false;
    public static function get NONE():Orientation {
        if (!Orientation.NONE_set) {
            Orientation.NONE_set = true;
            Orientation.NONE_value = new Orientation(0, 0, 0);
        }
        return Orientation.NONE_value;
    }
    private static var SINGLETON_value:Orientation;
    private static var SINGLETON_set:Boolean = false;
    private static function get SINGLETON():Orientation {
        if (!Orientation.SINGLETON_set) {
            Orientation.SINGLETON_set = true;
            Orientation.SINGLETON_value = new Orientation(0, 0, 0);
        }
        return Orientation.SINGLETON_value;
    }
        public var yaw:BasicDecimal = null;
        public var pitch:BasicDecimal = null;
        public var roll:BasicDecimal = null;

        // Java field initializers run after the base constructor
        private function initFieldsOrientation():void {
    this.yaw = new BasicDecimal(0);
    this.pitch = new BasicDecimal(0);
    this.roll = new BasicDecimal(0);
        }
    

    public static function getInstance3(yaw:int, pitch:int, roll:int):Orientation {
        Orientation.SINGLETON.yaw.setint(yaw);
        Orientation.SINGLETON.pitch.setint(pitch);
        Orientation.SINGLETON.roll.setint(roll);
        return Orientation.SINGLETON;
    }
    

    public function Orientation(yaw:int, pitch:int, roll:int) {
        super();
        this.initFieldsOrientation();
        this.yaw.setint(yaw);
        this.pitch.setint(pitch);
        this.roll.setint(roll);
    }
    

    public function toString():String {
        var stringBuffer:StringMaker = new StringMaker();
        stringBuffer.append("Y: ");
        stringBuffer.append(this.yaw.toString());
        stringBuffer.append(" P: ");
        stringBuffer.append(this.pitch.toString());
        stringBuffer.append(" R: ");
        stringBuffer.append(this.roll.toString());
        return stringBuffer.toString();
    }
    }
}

