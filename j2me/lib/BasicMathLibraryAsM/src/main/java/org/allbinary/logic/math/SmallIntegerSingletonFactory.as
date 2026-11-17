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
    import org.allbinary.AndroidUtil;
    import org.allbinary.J2MEUtil;
    import org.allbinary.logic.communication.log.LogUtil;
    import org.allbinary.logic.string.StringMaker;
    import java.lang.JInteger;

    public class SmallIntegerSingletonFactory {
    private static var instance_value:SmallIntegerSingletonFactory;
    private static var instance_set:Boolean = false;
    private static function get instance():SmallIntegerSingletonFactory {
        if (!SmallIntegerSingletonFactory.instance_set) {
            SmallIntegerSingletonFactory.instance_set = true;
            SmallIntegerSingletonFactory.instance_value = new SmallIntegerSingletonFactory();
        }
        return SmallIntegerSingletonFactory.instance_value;
    }
        public var NEGATIVE_MAX:int = 0;
        public var POSITIVE_MAX:int = 0;
        private var INTEGER_ARRAY:Vector.<*> = null;
        private var STRING_ARRAY:Vector.<String> = null;
        private var MIN:int = 0;
        private var lastMin:int = 0;
        private var lastNegativeMin:int = 0;

        // Java field initializers run after the base constructor
        private function initFieldsSmallIntegerSingletonFactory():void {
    this.NEGATIVE_MAX = 500;
    this.POSITIVE_MAX = 0x2D1;
    this.INTEGER_ARRAY = new Vector.<*>(int(this.NEGATIVE_MAX + this.POSITIVE_MAX));
    this.STRING_ARRAY = new Vector.<String>(int(this.NEGATIVE_MAX + this.POSITIVE_MAX));
    this.MIN = 0;
    this.lastMin = 0;
    this.lastNegativeMin = 0;
        }
    

    public static function getInstance():SmallIntegerSingletonFactory {
        return SmallIntegerSingletonFactory.instance;
    }
    

    public function getMin():int {
        var minAllowed:int = this.getMinAllowed();
        if (this.MIN <= minAllowed) {
            if (J2MEUtil.isJ2ME()) {
            } else if (AndroidUtil.isAndroid()) {
                logUtil = LogUtil.getInstance();
                logUtil.putF(new StringMaker().append("Android InputFactory was initialized before GameMidlet: ").appendint(this.MIN).toString(), this, "getMin");
                this.initWithRange(0x291, 6);
            } else {
                var logUtil:LogUtil = LogUtil.getInstance();
                logUtil.putF(new StringMaker().append("InputFactory was initialized before GameMidlet or KeyFactoryInitializer - Currently this is occurs on JS build by TouchMotionGestureFactory constructor: ").appendint(this.MIN).toString(), this, "getMin");
                this.initWithRange(0x2D0, 6);
            }
        }
        if (this.MIN <= minAllowed) {
            logUtil = LogUtil.getInstance();
            logUtil.put("This means you loaded the InputFactory before determining the platform input size requirements.", this, "getMin", new JException("Exception", ""));
        }
        return this.MIN;
    }
    

    private function getMinAllowed():int {
        if (J2MEUtil.isJ2ME()) {
            return 0;
        } else {
            if (AndroidUtil.isAndroid()) {
                return 0x101;
            } else {
                return 23;
            }
        }
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
        if (this.lastMin < this.POSITIVE_MAX || this.lastNegativeMin < this.NEGATIVE_MAX) {
            for (var index:int = int(this.POSITIVE_MAX - 1); index >= this.lastMin; index--) {
                this.INTEGER_ARRAY[int(index + this.NEGATIVE_MAX)] = index;
            }
            for (index = int(this.NEGATIVE_MAX - 1); index >= this.lastNegativeMin; index--) {
                this.INTEGER_ARRAY[index] = -index;
            }
            this.lastMin = this.POSITIVE_MAX;
            this.MIN = this.lastMin;
            this.lastNegativeMin = this.NEGATIVE_MAX;
        }
    }
    

    public function SmallIntegerSingletonFactory() {
        super();
        this.initFieldsSmallIntegerSingletonFactory();
        this.initWithRange(23, 0);
    }
    

    public function getAt(index:int):* {
        return this.INTEGER_ARRAY[int(index + this.NEGATIVE_MAX)];
    }
    

    public function getAtNoThrow(index:int):* {
        if (int(index + this.NEGATIVE_MAX) > int(this.INTEGER_ARRAY.length - 1)) {
            return this.INTEGER_ARRAY[int(-1 + this.NEGATIVE_MAX)];
        }
        return this.INTEGER_ARRAY[int(index + this.NEGATIVE_MAX)];
    }
    

    public function createInstance(index:int):* {
        var integer:* = this.getAt(index);
        if (integer == null) {
            integer = index;
        }
        return integer;
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

