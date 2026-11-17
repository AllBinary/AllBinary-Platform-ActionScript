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
package org.allbinary.time {
    import org.allbinary.logic.string.StringMaker;
    import org.allbinary.logic.string.StringUtil;
    import org.allbinary.string.CommonLabels;
    import java.lang.JLong;

    public class TimeDelayHelper {
        private var startTime:Number = 0;
        private var elapsedTimeAtPause:Number = 0;
        public var delay:int = 0;

        // Java field initializers run after the base constructor
        private function initFieldsTimeDelayHelper():void {
    this.startTime = Number(-1);
    this.elapsedTimeAtPause = JLong.MIN_VALUE;
    
        }
    

    public function TimeDelayHelper(delay:int) {
        super();
        this.initFieldsTimeDelayHelper();
        this.delay = delay;
        this.setStartTimeTNT();
    }
    

    public function isTimeTNT():Boolean {
        var currentTime:Number = JSystem.currentTimeMillis();
        if (currentTime - this.startTime > Number(this.delay)) {
            this.startTime = currentTime;
            return true;
        }
        return false;
    }
    

    public function isTimeSinceTNT(delay:int):Boolean {
        var currentTime:Number = JSystem.currentTimeMillis();
        if (currentTime - this.startTime > Number(delay)) {
            this.startTime = currentTime;
            return true;
        }
        return false;
    }
    

    public function isTime(currentTime:Number):Boolean {
        if (currentTime - this.startTime > Number(this.delay)) {
            this.startTime = currentTime;
            return true;
        }
        return false;
    }
    

    public function isTimeWithoutReset(currentTime:Number):Boolean {
        if (currentTime - this.startTime > Number(this.delay)) {
            return true;
        }
        return false;
    }
    

    public function isTimeSince(delay:int, currentTime:Number):Boolean {
        if (currentTime - this.startTime > Number(this.delay)) {
            this.startTime = currentTime;
            return true;
        }
        return false;
    }
    

    public function getElapsedTNT():Number {
        return JSystem.currentTimeMillis() - this.startTime;
    }
    

    public function getElapsed(currentTime:Number):Number {
        return currentTime - this.startTime;
    }
    

    public function isElapsed(currentTime:Number, time:Number):Boolean {
        if (this.getElapsed(currentTime) > time) {
            return true;
        } else {
            return false;
        }
    }
    

    public function isElapsedTNT(time:Number):Boolean {
        if (this.getElapsedTNT() > time) {
            return true;
        } else {
            return false;
        }
    }
    

    public function setStartTime(startTime:Number):void {
        this.startTime = startTime;
    }
    

    public function getStartTime():Number {
        return this.startTime;
    }
    

    public function setStartTimeTNT():void {
        this.startTime = JSystem.currentTimeMillis();
    }
    

    public function pause():void {
        this.elapsedTimeAtPause = this.getElapsedTNT();
        this.startTime = JLong.MAX_VALUE;
    }
    

    public function resume():Boolean {
        if (this.elapsedTimeAtPause != JLong.MIN_VALUE) {
            this.startTime = JSystem.currentTimeMillis() + this.elapsedTimeAtPause;
            this.elapsedTimeAtPause = JLong.MIN_VALUE;
            this.setStartTimeTNT();
            return true;
        }
        return false;
    }
    

    public function toStringAt(currentTime:Number):String {
        var elapsed:Number = this.getElapsed(currentTime);
        if (elapsed > 0) {
            var commonLabels:CommonLabels = CommonLabels.getInstance();
            var elapsedAsString:String = String(elapsed);
            return new StringMaker().append(commonLabels.START).appendlong(this.startTime).append(commonLabels.CURRENT).appendlong(currentTime).append(commonLabels.ELAPSED).append(elapsedAsString).toString();
        } else {
            return StringUtil.getInstance().EMPTY_STRING;
        }
    }
    

    public function toString():String {
        var currentTime:Number = JSystem.currentTimeMillis();
        var elapsed:Number = this.getElapsed(currentTime);
        if (elapsed > 0) {
            var commonLabels:CommonLabels = CommonLabels.getInstance();
            var elapsedAsString:String = String(elapsed);
            return new StringMaker().append(commonLabels.START).appendlong(this.startTime).append(commonLabels.CURRENT).appendlong(currentTime).append(commonLabels.ELAPSED).append(elapsedAsString).toString();
        } else {
            return StringUtil.getInstance().EMPTY_STRING;
        }
    }
    }
}

