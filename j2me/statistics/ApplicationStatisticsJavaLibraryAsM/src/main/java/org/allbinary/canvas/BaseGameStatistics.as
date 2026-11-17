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
package org.allbinary.canvas {
    import org.allbinary.logic.math.PrimitiveLongSingleton;
    import org.allbinary.logic.math.ScaleFactorFactory;
    import org.allbinary.logic.string.StringMaker;
    import org.allbinary.logic.string.StringUtil;
    import org.allbinary.string.CommonSeps;
    import org.allbinary.time.GameTickTimeDelayHelper;
    import org.allbinary.time.GameTickTimeDelayHelperFactory;
    import org.allbinary.time.TimeDelayHelper;
    import java.lang.JInteger;
    import java.lang.JLong;

    public class BaseGameStatistics {
        private var timeDelayHelper:TimeDelayHelper = null;
        private var updateDelayHelper:TimeDelayHelper = null;
        private var totalRefreshes:Number = 0;
        private var totalFrames:Number = 0;
        public var gameTickTimeDelayHelper:GameTickTimeDelayHelper = null;
        private var DEFAULT_SCALE_FACTOR:int = 0;
        public var NOT:String = null;
        private var EMPTY_STRING:String = null;
        private var STRING_ARRAY:Vector.<String> = null;
        private var SPACE_CHAR:int = 0;
        private var PLUS_CHAR:int = 0;
        private var X_CHAR:int = 0;
        private var CHAR_ARRAY:Vector.<Vector.<int>> = null;
        private var primitiveLongSingleton:PrimitiveLongSingleton = null;

        // Java field initializers run after the base constructor
        private function initFieldsBaseGameStatistics():void {
    this.timeDelayHelper = new TimeDelayHelper(JInteger.MAX_VALUE);
    this.updateDelayHelper = new TimeDelayHelper(2000);
    this.totalRefreshes = 0;
    this.totalFrames = 0;
    this.gameTickTimeDelayHelper = GameTickTimeDelayHelperFactory.getInstance();
    this.DEFAULT_SCALE_FACTOR = ScaleFactorFactory.getInstance().DEFAULT_SCALE_FACTOR;
    this.NOT = "Not enough Time to Calculate";
    this.EMPTY_STRING = StringUtil.getInstance().EMPTY_STRING;
    this.STRING_ARRAY = new <String>[" Total Time: ", this.EMPTY_STRING, " Total Frames: ", this.EMPTY_STRING, " Frames/10 Sec: ", this.EMPTY_STRING, " Total Paints: ", this.EMPTY_STRING, " Paints/10 Sec: ", this.EMPTY_STRING];
    this.SPACE_CHAR = " ".charCodeAt(0);
    this.PLUS_CHAR = "+".charCodeAt(0);
    this.X_CHAR = "X".charCodeAt(0);
    this.CHAR_ARRAY = new <Vector.<int>>[new <int>["F".charCodeAt(0), "r".charCodeAt(0), "a".charCodeAt(0), "m".charCodeAt(0), "e".charCodeAt(0), "s".charCodeAt(0), "/".charCodeAt(0), "1".charCodeAt(0), "0".charCodeAt(0), " ".charCodeAt(0), "S".charCodeAt(0), "e".charCodeAt(0), "c".charCodeAt(0), ":".charCodeAt(0)], new <int>["X".charCodeAt(0), "X".charCodeAt(0)], new <int>["P".charCodeAt(0), "a".charCodeAt(0), "i".charCodeAt(0), "n".charCodeAt(0), "t".charCodeAt(0), "s".charCodeAt(0), "/".charCodeAt(0), "1".charCodeAt(0), "0".charCodeAt(0), " ".charCodeAt(0), "S".charCodeAt(0), "e".charCodeAt(0), "c".charCodeAt(0), ":".charCodeAt(0)], new <int>["X".charCodeAt(0), "X".charCodeAt(0)]];
    this.primitiveLongSingleton = PrimitiveLongSingleton.getInstance();
        }
    

    public function BaseGameStatistics() {
        super();
        this.initFieldsBaseGameStatistics();
    }
    

    public function init():void {
        this.timeDelayHelper.setStartTimeTNT();
        this.totalRefreshes = 0;
        this.totalFrames = 0;
    }
    

    public function add(string:String):void {
    }
    

    public function process():void {
    }
    

    public function nextFrame():void {
        this.totalFrames++;
    }
    

    public function nextRefresh():void {
        this.totalRefreshes++;
    }
    

    public function getRefreshRate():int {
        var elapsed:Number = this.timeDelayHelper.getElapsed(this.gameTickTimeDelayHelper.startTime);
        if (elapsed > 1) {
            var time:int = ((int((this.totalRefreshes / (elapsed >> this.DEFAULT_SCALE_FACTOR))) << 16) >> 16);
            return time;
        } else {
            return 0;
        }
    }
    

    public function getTimeDelayHelper():TimeDelayHelper {
        return this.timeDelayHelper;
    }
    

    public function to2DCharArray():Vector.<Vector.<int>> {
        var totalTime:Number = this.timeDelayHelper.getElapsed(this.gameTickTimeDelayHelper.startTime);
        totalTime = (totalTime >> this.DEFAULT_SCALE_FACTOR);
        if (totalTime > 0 && this.updateDelayHelper.isTime(this.gameTickTimeDelayHelper.startTime)) {
            var framesPerSec:int = int((this.totalFrames / totalTime));
            if (framesPerSec < 10) {
                this.CHAR_ARRAY[1][0] = this.SPACE_CHAR;
                this.CHAR_ARRAY[1][1] = this.primitiveLongSingleton.NUMBER_CHAR_ARRAY[framesPerSec];
            } else if (framesPerSec < 100) {
                var tens:int = int(framesPerSec / 10);
                var removeTens:int = int(tens * 10);
                this.CHAR_ARRAY[1][0] = this.primitiveLongSingleton.NUMBER_CHAR_ARRAY[tens];
                this.CHAR_ARRAY[1][1] = this.primitiveLongSingleton.NUMBER_CHAR_ARRAY[int(framesPerSec - removeTens)];
            } else {
                this.CHAR_ARRAY[1][0] = this.PLUS_CHAR;
                this.CHAR_ARRAY[1][1] = this.PLUS_CHAR;
            }
            var refreshesPerSec:int = int((this.totalRefreshes / totalTime));
            if (refreshesPerSec < 10) {
                this.CHAR_ARRAY[3][0] = this.X_CHAR;
                this.CHAR_ARRAY[3][1] = this.primitiveLongSingleton.NUMBER_CHAR_ARRAY[refreshesPerSec];
            } else if (refreshesPerSec < 100) {
                tens = int(refreshesPerSec / 10);
                removeTens = int(tens * 10);
                this.CHAR_ARRAY[3][0] = this.primitiveLongSingleton.NUMBER_CHAR_ARRAY[int(refreshesPerSec / 10)];
                this.CHAR_ARRAY[3][1] = this.primitiveLongSingleton.NUMBER_CHAR_ARRAY[int(refreshesPerSec - removeTens)];
            } else {
                this.CHAR_ARRAY[3][0] = this.PLUS_CHAR;
                this.CHAR_ARRAY[3][1] = this.PLUS_CHAR;
            }
        }
        return this.CHAR_ARRAY;
    }
    

    public function toStringArray():Vector.<String> {
        var totalTime:Number = this.timeDelayHelper.getElapsed(this.gameTickTimeDelayHelper.startTime);
        totalTime = (totalTime / 10000);
        if (totalTime > 0) {
            this.STRING_ARRAY[1] = String(totalTime);
            this.STRING_ARRAY[3] = String(this.totalFrames);
            this.STRING_ARRAY[5] = String(this.totalFrames / totalTime);
            this.STRING_ARRAY[7] = String(this.totalRefreshes);
            this.STRING_ARRAY[9] = String(this.totalRefreshes / totalTime);
        } else {
            var string:String = this.EMPTY_STRING;
            this.STRING_ARRAY[1] = string;
            this.STRING_ARRAY[3] = string;
            this.STRING_ARRAY[5] = string;
            this.STRING_ARRAY[7] = string;
            this.STRING_ARRAY[9] = string;
        }
        return this.STRING_ARRAY;
    }
    

    public function toStringAt(totalTime:Number):String {
        var stringBuffer:StringMaker = new StringMaker();
        stringBuffer.append(this.STRING_ARRAY[0]);
        stringBuffer.appendlong(totalTime);
        stringBuffer.append(this.STRING_ARRAY[2]);
        stringBuffer.appendlong(this.totalFrames);
        stringBuffer.append(this.STRING_ARRAY[4]);
        stringBuffer.appendlong(this.totalFrames / totalTime);
        if (this.totalRefreshes > 0) {
            stringBuffer.append(this.STRING_ARRAY[6]);
            stringBuffer.appendlong(this.totalRefreshes);
            stringBuffer.append(this.STRING_ARRAY[8]);
            stringBuffer.appendlong(this.totalRefreshes / totalTime);
            stringBuffer.append(CommonSeps.getInstance().NEW_LINE);
        }
        return stringBuffer.toString();
    }
    

    public function toString():String {
        var totalTime:Number = this.timeDelayHelper.getElapsed(this.gameTickTimeDelayHelper.startTime);
        totalTime = (totalTime / 1000);
        if (totalTime > 0) {
            return this.toStringAt(totalTime);
        } else {
            return this.NOT;
        }
    }
    }
}

