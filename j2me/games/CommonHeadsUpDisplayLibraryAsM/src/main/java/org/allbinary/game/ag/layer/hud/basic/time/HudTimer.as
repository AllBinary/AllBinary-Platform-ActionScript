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
package org.allbinary.game.ag.layer.hud.basic.time {
    import org.allbinary.logic.math.PrimitiveLongSingleton;
    import org.allbinary.logic.math.PrimitiveLongUtil;
    import org.allbinary.time.GameTickTimeDelayHelper;
    import org.allbinary.time.GameTickTimeDelayHelperFactory;

    public class HudTimer {
        private var startTime:Number = 0;
        private var hundredthTime:Number = 0;
        private var maxTime:Number = 0;
        private var modifier:Number = 0;
        private var hundrethsString:Vector.<int> = null;
        private var totalDigits:int = 0;
        private var primitiveLongUtil:PrimitiveLongUtil = null;
        private var MAX:Vector.<int> = null;
        private var gameTickTimeDelayHelper:GameTickTimeDelayHelper = null;

        // Java field initializers run after the base constructor
        private function initFieldsHudTimer():void {
    this.startTime = Number(-1);
    this.hundredthTime = 0;
    
    this.modifier = 0;
    this.hundrethsString = PrimitiveLongSingleton.getInstance().ZERO;
    this.totalDigits = 1;
    
    this.MAX = new <int>["L".charCodeAt(0), "O".charCodeAt(0), "L".charCodeAt(0)];
    this.gameTickTimeDelayHelper = GameTickTimeDelayHelperFactory.getInstance();
        }
    

    public function HudTimer(maxTime:int) {
        super();
        this.initFieldsHudTimer();
        this.primitiveLongUtil = PrimitiveLongUtil.createPowerOfTen(maxTime);
        this.maxTime = Number(maxTime);
    }
    

    public function start():void {
        this.hundredthTime = 0;
        this.startTime = this.gameTickTimeDelayHelper.startTime;
    }
    

    public function get_():Number {
        return this.hundredthTime;
    }
    

    public function update():void {
        var lastLowerTime:Number = this.hundredthTime;
        var currentTime:Number = ((this.modifier + this.gameTickTimeDelayHelper.startTime) - this.startTime);
        if (currentTime < 0) {
            currentTime = 0;
        }
        this.hundredthTime = currentTime / 100;
        if (this.hundredthTime >= this.maxTime) {
            if (this.startTime > 0) {
                this.hundrethsString = this.MAX;
            }
        } else if (lastLowerTime != this.hundredthTime) {
            this.hundrethsString = this.primitiveLongUtil.getCharArray(int(this.hundredthTime));
            this.totalDigits = this.primitiveLongUtil.getCurrentTotalDigits();
        }
    }
    

    public function reduce(value:int):void {
        this.modifier -= Number(value);
    }
    

    public function add(value:int):void {
        this.modifier += Number(value);
    }
    

    public function getTimeChars():Vector.<int> {
        return this.hundrethsString;
    }
    

    public function getCurrentTotalDigits():int {
        return this.totalDigits;
    }
    }
}

