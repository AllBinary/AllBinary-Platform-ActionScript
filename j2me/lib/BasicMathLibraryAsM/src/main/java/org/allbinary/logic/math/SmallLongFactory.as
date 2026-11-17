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
    import java.lang.JLong;

    public class SmallLongFactory {
    private static var instance_value:SmallLongFactory;
    private static var instance_set:Boolean = false;
    private static function get instance():SmallLongFactory {
        if (!SmallLongFactory.instance_set) {
            SmallLongFactory.instance_set = true;
            SmallLongFactory.instance_value = new SmallLongFactory();
        }
        return SmallLongFactory.instance_value;
    }
        public var NEGATIVE_MAX:int = 0;
        public var POSITIVE_MAX:int = 0;
        private var INTEGER_ARRAY:Vector.<*> = null;
        private var STRING_ARRAY:Vector.<String> = null;
        public var MIN:int = 0;
        public var lastMin:int = 0;
        public var lastNegativeMin:int = 0;

        // Java field initializers run after the base constructor
        private function initFieldsSmallLongFactory():void {
    this.NEGATIVE_MAX = 500;
    this.POSITIVE_MAX = 0x2D1;
    this.INTEGER_ARRAY = new Vector.<*>(int(this.NEGATIVE_MAX + this.POSITIVE_MAX));
    this.STRING_ARRAY = new Vector.<String>(int(this.NEGATIVE_MAX + this.POSITIVE_MAX));
    this.MIN = 0;
    this.lastMin = 0;
    this.lastNegativeMin = 0;
        }
    

    public static function getInstance():SmallLongFactory {
        return SmallLongFactory.instance;
    }
    

    public function initWithRange(value:int, negativeValue:int):void {
        for (var index:int = int(value - 1); index >= this.lastMin; index--) {
            this.INTEGER_ARRAY[int(index + this.NEGATIVE_MAX)] = index;
        }
        for (index = int(negativeValue - 1); index >= this.lastNegativeMin; index--) {
            this.INTEGER_ARRAY[index] = -index;
        }
        if (this.lastMin < value) {
            this.lastMin = value;
            this.MIN = value;
        }
        if (this.lastNegativeMin < negativeValue) {
            this.lastNegativeMin = negativeValue;
        }
    }
    

    public function init():void {
        if (this.INTEGER_ARRAY[0] == null) {
            if (this.lastMin < this.POSITIVE_MAX || this.lastNegativeMin < this.NEGATIVE_MAX) {
                for (var index:int = int(this.POSITIVE_MAX - 1); index >= this.lastMin; index--) {
                    this.INTEGER_ARRAY[int(index + this.NEGATIVE_MAX)] = index;
                }
                for (index = int(this.NEGATIVE_MAX - 1); index >= this.lastNegativeMin; index--) {
                    this.INTEGER_ARRAY[index] = -index;
                }
                this.lastMin = this.POSITIVE_MAX;
                this.lastNegativeMin = this.NEGATIVE_MAX;
            }
        }
    }
    

    public function SmallLongFactory() {
        super();
        this.initFieldsSmallLongFactory();
    }
    

    public function getInstanceNoThrow(index:Number):* {
        if (index + Number(this.NEGATIVE_MAX) > Number(int(this.INTEGER_ARRAY.length - 1))) {
            return this.INTEGER_ARRAY[int(-1 + this.NEGATIVE_MAX)];
        }
        return this.INTEGER_ARRAY[int((int(index)) + this.NEGATIVE_MAX)];
    }
    

    public function getString(index:int):String {
        var i:int = int(index + this.NEGATIVE_MAX);
        if (this.STRING_ARRAY[i] == null) {
            this.STRING_ARRAY[i] = this.INTEGER_ARRAY[i].toString();
        }
        return this.STRING_ARRAY[i];
    }
    }
}

