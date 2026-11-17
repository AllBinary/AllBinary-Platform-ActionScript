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

    public class BasicDecimal {
    private static var ZERO_BIGDECIMAL_value:BasicDecimal;
    private static var ZERO_BIGDECIMAL_set:Boolean = false;
    public static function get ZERO_BIGDECIMAL():BasicDecimal {
        if (!BasicDecimal.ZERO_BIGDECIMAL_set) {
            BasicDecimal.ZERO_BIGDECIMAL_set = true;
            BasicDecimal.ZERO_BIGDECIMAL_value = new BasicDecimal(0);
        }
        return BasicDecimal.ZERO_BIGDECIMAL_value;
    }
        private var units:Number = 0;
        private var scaled:int = 0;
        private var factor:int = 0;
        private var factorValue:int = 0;

        // Java field initializers run after the base constructor
        private function initFieldsBasicDecimal():void {
    
    this.scaled = 0;
    this.factor = ScaleFactorFactory.getInstance().DEFAULT_SCALE_FACTOR;
    this.factorValue = ScaleFactorFactory.getInstance().DEFAULT_SCALE_VALUE;
        }
    

    public static function createBigDecimal(bigDecimal:BasicDecimal):BasicDecimal {
        return new BasicDecimal(bigDecimal.getUnscaled());
    }
    

    public function BasicDecimal(units:Number) {
        super();
        this.initFieldsBasicDecimal();
        this.units = units;
        this.updateScaled();
    }
    

    public function setint(value:int):void {
        this.units = Number(value);
        this.updateScaled();
    }
    

    public function setlong(value:Number):void {
        this.units = value;
        this.updateScaled();
    }
    

    public function set_(bigDecimal:BasicDecimal):void {
        this.units = bigDecimal.getUnscaled();
        this.updateScaled();
    }
    

    public function addint(value:int):void {
        this.units = this.units + Number(value);
        this.updateScaled();
    }
    

    public function addlong(value:Number):void {
        this.units = this.units + value;
        this.updateScaled();
    }
    

    public function add(bigDecimal:BasicDecimal):void {
        this.units = this.units + bigDecimal.getUnscaled();
        this.updateScaled();
    }
    

    public function subtractint(value:int):void {
        this.units = this.units - Number(value);
        this.updateScaled();
    }
    

    public function subtractlong(value:Number):void {
        this.units = this.units - value;
        this.updateScaled();
    }
    

    public function subtract(bigDecimal:BasicDecimal):void {
        this.units = this.units - bigDecimal.getUnscaled();
        this.updateScaled();
    }
    

    public function multiplyint(value:int):void {
        this.units = this.units * Number(value);
        this.updateScaled();
    }
    

    public function multiplylong(value:Number):void {
        this.units = this.units * value;
        this.updateScaled();
    }
    

    public function multiply(bigDecimal:BasicDecimal):void {
        this.units = this.units * bigDecimal.getUnscaled();
        this.updateScaled();
    }
    

    public function divideint(value:int):void {
        this.units = this.units / Number(value);
        this.updateScaled();
    }
    

    public function dividelong(value:Number):void {
        this.units = this.units / value;
        this.updateScaled();
    }
    

    public function divide(bigDecimal:BasicDecimal):void {
        this.units = this.units / bigDecimal.getUnscaled();
        this.updateScaled();
    }
    

    public function getUnscaled():Number {
        return this.units;
    }
    

    private function updateScaled():void {
        this.scaled = int((this.units / Number(this.factorValue)));
    }
    

    public function getScaled():int {
        return this.scaled;
    }
    

    public function toString():String {
        return String(this.units);
    }
    

    public function getScaledFactor():int {
        return this.factor;
    }
    

    public function getScaledFactorValue():int {
        return this.factorValue;
    }
    }
}

