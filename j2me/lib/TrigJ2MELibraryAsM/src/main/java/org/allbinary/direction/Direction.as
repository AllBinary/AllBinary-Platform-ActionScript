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
package org.allbinary.direction {
    import org.allbinary.logic.string.StringMaker;

    public class Direction {
    private static var directionArray_value:Vector.<Direction>;
    private static var directionArray_set:Boolean = false;
    private static function get directionArray():Vector.<Direction> {
        if (!Direction.directionArray_set) {
            Direction.directionArray_set = true;
            Direction.directionArray_value = new Vector.<Direction>(13);
        }
        return Direction.directionArray_value;
    }
        private var name:String = null;
        private var otherName:String = null;
        private var value:int = 0;
        private var frameFactor:int = 0;

        // Java field initializers run after the base constructor
        private function initFieldsDirection():void {
    
    
    
    
        }
    

    public function Direction(name:String, otherName:String, value:int, frameFactor:int) {
        super();
        this.initFieldsDirection();
        this.name = name;
        this.otherName = otherName;
        this.value = value;
        this.frameFactor = frameFactor;
        Direction.directionArray[value] = this;
    }
    

    public static function getInstance1(direction:int):Direction {
        return Direction.directionArray[direction];
    }
    

    public function getValue():int {
        return this.value;
    }
    

    public function getFrameFactor():int {
        return this.frameFactor;
    }
    

    public function getOtherName():String {
        return this.otherName;
    }
    

    public function getName():String {
        return this.name;
    }
    

    public function toString():String {
        var stringBuffer:StringMaker = new StringMaker();
        stringBuffer.append("Direction: ");
        stringBuffer.append(this.getName());
        stringBuffer.append(" Or: ");
        stringBuffer.append(this.getOtherName());
        stringBuffer.append(" Value: ");
        stringBuffer.appendint(this.value);
        return stringBuffer.toString();
    }
    }
}

