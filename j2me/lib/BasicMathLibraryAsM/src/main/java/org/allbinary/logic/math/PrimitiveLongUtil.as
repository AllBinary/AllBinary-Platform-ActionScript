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
    import org.allbinary.logic.NullUtil;
    import org.allbinary.logic.communication.log.LogUtil;
    import org.allbinary.string.CommonStrings;

    public class PrimitiveLongUtil {
        public var logUtil:LogUtil = null;
        private var powerOfTen:int = 0;
        private var maxValue:int = 0;
        private var maxDigits:int = 0;
        private var charArray:Vector.<int> = null;
        private var currentTotalDigits:int = 0;
        private var primitiveLongSingleton:PrimitiveLongSingleton = null;

        // Java field initializers run after the base constructor
        private function initFieldsPrimitiveLongUtil():void {
    this.logUtil = LogUtil.getInstance();
    
    
    
    
    this.currentTotalDigits = 0;
    this.primitiveLongSingleton = PrimitiveLongSingleton.getInstance();
        }
    

    public static function createPowerOfTen(powerOfTen:int):PrimitiveLongUtil {
        var primitiveLongUtil:PrimitiveLongUtil = new PrimitiveLongUtil(powerOfTen, NullUtil.getInstance().NULL_OBJECT);
        if (powerOfTen % 10 != 0) {
            var logUtil:LogUtil = LogUtil.getInstance();
            var commonStrings:CommonStrings = CommonStrings.getInstance();
            logUtil.put(commonStrings.EXCEPTION, primitiveLongUtil, commonStrings.CONSTRUCTOR, new JException("Exception", "Max must be power of 10"));
        }
        return primitiveLongUtil;
    }
    

    public function PrimitiveLongUtil(powerOfTen:int, unused:Object) {
        super();
        this.initFieldsPrimitiveLongUtil();
        this.maxDigits = MathUtil.getInstance().getTotalDigits(powerOfTen);
        this.powerOfTen = powerOfTen;
        this.maxValue = int((int(powerOfTen * 10)) - 1);
        this.charArray = new Vector.<int>(this.maxDigits);
    }
    

    public function getCharArray(value:int):Vector.<int> {
        if (value < 10) {
            this.setCurrentTotalDigits(1);
            return this.primitiveLongSingleton.NUMBER_CHAR_ARRAYS[value];
        }
        if (value > this.maxValue) {
            this.setCurrentTotalDigits(3);
            return this.primitiveLongSingleton.UNK;
        }
        var index:int = 0;
        var div:int = this.powerOfTen;
        var lastValue:int = 0;
        while (div >= 1) {
            var digit:int = int((int(value - lastValue)) / div);
            if (digit >= 0 && digit < 10) {
                if (digit == 0 && index == 0) {
                } else {
                    this.charArray[index++] = this.primitiveLongSingleton.NUMBER_CHAR_ARRAY[digit];
                }
                lastValue += int(digit * div);
            }
            div = int(div / 10);
        }
        this.setCurrentTotalDigits(index);
        return this.charArray;
    }
    

    private function setCurrentTotalDigits(currentTotalDigits:int):void {
        this.currentTotalDigits = currentTotalDigits;
    }
    

    public function getCurrentTotalDigits():int {
        return this.currentTotalDigits;
    }
    

    public function getMaxDigits():int {
        return this.maxDigits;
    }
    }
}

