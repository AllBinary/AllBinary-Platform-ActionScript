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
package org.allbinary.graphics.displayable {
    import org.allbinary.AndroidUtil;
    import org.allbinary.game.configuration.feature.Features;
    import org.allbinary.graphics.displayable.event.DisplayChangeEvent;
    import org.allbinary.graphics.displayable.event.DisplayChangeEventHandler;
    import org.allbinary.graphics.displayable.event.LastDisplayChangeEventHandler;
    import org.allbinary.graphics.opengles.OpenGLFeatureFactory;
    import org.allbinary.graphics.threed.SWTJOGLProcessor;
    import org.allbinary.logic.communication.log.LogUtil;
    import org.allbinary.logic.communication.log.PreLogUtil;
    import org.allbinary.logic.string.StringMaker;
    import org.allbinary.logic.system.os.GenericOperatingSystem;
    import org.allbinary.logic.system.os.OperatingSystemFactory;
    import org.allbinary.string.CommonLabels;
    import org.allbinary.string.CommonSeps;
    import org.allbinary.string.CommonStrings;
    import org.allbinary.util.BasicArrayList;
    import org.allbinary.util.BasicArrayListD;

    public class DisplayInfoSingleton {
    private static var SINGLETON_value:DisplayInfoSingleton;
    private static var SINGLETON_set:Boolean = false;
    private static function get SINGLETON():DisplayInfoSingleton {
        if (!DisplayInfoSingleton.SINGLETON_set) {
            DisplayInfoSingleton.SINGLETON_set = true;
            DisplayInfoSingleton.SINGLETON_value = new DisplayInfoSingleton();
        }
        return DisplayInfoSingleton.SINGLETON_value;
    }
        public var logUtil:LogUtil = null;
        private var commonLabels:CommonLabels = null;
        private var commonSeps:CommonSeps = null;
        private var commonStrings:CommonStrings = null;
        public var ORIENTATION:String = null;
        public var ADJUSTING_FOR_SCALING_IN_PORTRAIT:String = null;
        public var ADJUSTING_FOR_SCALING_IN_LANDSCAPE:String = null;
        private var last:Vector.<int> = null;
        private var lastHalf:Vector.<int> = null;
        private var full:Vector.<int> = null;
        private var top:int = 0;
        private var left:int = 0;
        private var xOffset:int = 0;
        private var yOffset:int = 0;
        private var scaleLargestTo:Number = 0.0;
        public var WIDTH:int = 0;
        public var HEIGHT:int = 0;
        public var CUSTOM_WIDTH:int = 0;
        public var CUSTOM_HEIGHT:int = 0;
        private var scalableListener:BaseScalable = null;
        private var displayRatio:Number = 0.0;
        private var ratio:Number = 0.0;
        private var SET_LAST_SIZE_METHOD_NAME:String = null;
        private var FULL_WIDTH:String = null;
        private var FULL_HEIGHT:String = null;
        private var LAST_WIDTH:String = null;
        private var LAST_HEIGHT:String = null;
        private var PORTRAIT:String = null;
        private var LANDSCAPE:String = null;
        public var displayChangeEvent:DisplayChangeEvent = null;
        private var FIRE_METHOD_NAME:String = null;
        private var REASON:String = null;
        private var UPDATE_FROM_ORIENTATION_CHANGE:String = null;
        private var list:BasicArrayList = null;
        private var DISPLAY_INFO:String = null;
        private var FULL:String = null;
        private var LAST:String = null;
        private var LAST_HALF:String = null;

        // Java field initializers run after the base constructor
        private function initFieldsDisplayInfoSingleton():void {
    this.logUtil = LogUtil.getInstance();
    this.commonLabels = CommonLabels.getInstance();
    this.commonSeps = CommonSeps.getInstance();
    this.commonStrings = CommonStrings.getInstance();
    this.ORIENTATION = "ORIENTATION";
    this.ADJUSTING_FOR_SCALING_IN_PORTRAIT = "Adjusting for Scaling in portrait display ratio: ";
    this.ADJUSTING_FOR_SCALING_IN_LANDSCAPE = "Adjusting for Scaling in landscape display ratio: ";
    this.last = new Vector.<int>(4);
    this.lastHalf = new Vector.<int>(4);
    this.full = new Vector.<int>(4);
    this.top = 0;
    this.left = 0;
    this.xOffset = 0;
    this.yOffset = 0;
    this.scaleLargestTo = 0.0;
    this.WIDTH = 0;
    this.HEIGHT = 1;
    this.CUSTOM_WIDTH = 2;
    this.CUSTOM_HEIGHT = 3;
    this.scalableListener = new BaseScalable();
    this.displayRatio = 0.0;
    this.ratio = 1.0;
    this.SET_LAST_SIZE_METHOD_NAME = "setLastSize";
    this.FULL_WIDTH = " FullWidth: ";
    this.FULL_HEIGHT = " FullHeight: ";
    this.LAST_WIDTH = "LastWidth: ";
    this.LAST_HEIGHT = " LastHeight: ";
    this.PORTRAIT = "Portrait";
    this.LANDSCAPE = "Landscape";
    this.displayChangeEvent = new DisplayChangeEvent(this);
    this.FIRE_METHOD_NAME = "fire";
    this.REASON = "reason: ";
    this.UPDATE_FROM_ORIENTATION_CHANGE = "Updating from Orientation Change ";
    this.list = new BasicArrayListD();
    this.DISPLAY_INFO = "Display Info: ";
    this.FULL = "full";
    this.LAST = "last";
    this.LAST_HALF = "lastHalf";
        }
    

    public static function getInstance():DisplayInfoSingleton {
        return DisplayInfoSingleton.SINGLETON;
    }
    

    public function DisplayInfoSingleton() {
        super();
        this.initFieldsDisplayInfoSingleton();
        var size:int = this.last.length;
        for (var index:int = 0; index < size; index++) {
            this.last[index] = 0;
            this.lastHalf[index] = 0;
            this.full[index] = 0;
        }
        if (AndroidUtil.isAndroid()) {
            this.scaleLargestTo = 640.0;
        } else {
            this.scaleLargestTo = 1080.0;
        }
    }
    

    public function getLastHalf():Vector.<int> {
        return this.lastHalf;
    }
    

    public function getLast():Vector.<int> {
        return this.last;
    }
    

    public function getFull():Vector.<int> {
        return this.full;
    }
    

    public function getScaleLargestTo():Number {
        return this.scaleLargestTo;
    }
    

    public function setScaleLargestTo(scaleLargestTo:int):void {
        this.scaleLargestTo = Number(scaleLargestTo);
    }
    

    public function setLastSize(aLastWidth:int, aLastHeight:int, reason:String):void {
        if (this.full[this.WIDTH] != aLastWidth || this.full[this.HEIGHT] != aLastHeight) {
            this.setLastSizeForce(aLastWidth, aLastHeight, reason);
        }
    }
    

    private function setLastSizeForce(aLastWidth:int, aLastHeight:int, reason:String):void {
        var stringMaker:StringMaker = new StringMaker();
        this.logUtil.putF(stringMaker.append(CommonLabels.getInstance().START_LABEL).append(reason).toString(), this, this.SET_LAST_SIZE_METHOD_NAME);
        var aFullWidth:int = aLastWidth;
        var aFullHeight:int = aLastHeight;
        stringMaker.delete_(0, stringMaker.length());
        this.logUtil.putF(stringMaker.append(this.FULL_WIDTH).appendint(aFullWidth).append(this.FULL_HEIGHT).appendint(aFullHeight).append(this.toString()).toString(), this, this.SET_LAST_SIZE_METHOD_NAME);
        var operatingSystemInterface:GenericOperatingSystem = OperatingSystemFactory.getInstance().getOperatingSystemInstance();
        if (operatingSystemInterface.isOverScan()) {
            aLastWidth = int(int(aLastWidth * operatingSystemInterface.getOverScanXPercent()) / 100);
            aLastHeight = int(int(aLastHeight * operatingSystemInterface.getOverScanYPercent()) / 100);
        }
        if (operatingSystemInterface.isScalable()) {
            if (this.isPortraitWH(aLastWidth, aLastHeight)) {
                if (Number(aLastHeight) > this.scaleLargestTo) {
                    this.displayRatio = this.scaleLargestTo / Number(aLastHeight);
                    this.ratio = Number(aLastHeight) / this.scaleLargestTo;
                    stringMaker.delete_(0, stringMaker.length());
                    this.logUtil.putF(stringMaker.append(this.ADJUSTING_FOR_SCALING_IN_PORTRAIT).appendfloat(this.displayRatio).toString(), this, this.SET_LAST_SIZE_METHOD_NAME);
                    aLastWidth = JMath.toInt32((Number(aLastWidth) * this.displayRatio));
                    aLastHeight = JMath.toInt32((Number(aLastHeight) * this.displayRatio));
                    this.scalableListener.scale(this.ratio);
                } else {
                    this.ratio = 1.0;
                    this.scalableListener.scale(this.ratio);
                }
            } else {
                if (Number(aLastWidth) > this.scaleLargestTo) {
                    this.displayRatio = this.scaleLargestTo / Number(aLastWidth);
                    this.ratio = Number(aLastWidth) / this.scaleLargestTo;
                    stringMaker.delete_(0, stringMaker.length());
                    this.logUtil.putF(stringMaker.append(this.ADJUSTING_FOR_SCALING_IN_LANDSCAPE).appendfloat(this.displayRatio).toString(), this, this.SET_LAST_SIZE_METHOD_NAME);
                    aLastWidth = JMath.toInt32((Number(aLastWidth) * this.displayRatio));
                    aLastHeight = JMath.toInt32((Number(aLastHeight) * this.displayRatio));
                    this.scalableListener.scale(this.ratio);
                } else {
                    this.ratio = 1.0;
                    this.scalableListener.scale(this.ratio);
                }
            }
        }
        stringMaker.delete_(0, stringMaker.length());
        this.logUtil.putF(stringMaker.append(this.LAST_WIDTH).appendint(aLastWidth).append(this.LAST_HEIGHT).appendint(aLastHeight).toString(), this, this.SET_LAST_SIZE_METHOD_NAME);
        this.xOffset = int(aFullWidth - aLastWidth);
        this.yOffset = int(aFullHeight - aLastHeight);
        this.left = this.scalableListener.getLeft(this.xOffset);
        this.top = this.scalableListener.getTop(this.yOffset);
        this.full[this.WIDTH] = aFullWidth;
        this.full[this.HEIGHT] = aFullHeight;
        this.last[this.WIDTH] = aLastWidth;
        this.lastHalf[this.WIDTH] = (this.last[this.WIDTH] >> 1);
        this.last[this.HEIGHT] = aLastHeight;
        this.lastHalf[this.HEIGHT] = (this.last[this.HEIGHT] >> 1);
        SWTJOGLProcessor.getInstance().setCustom(aLastWidth, aLastHeight, this.ratio);
        this.add(this.SET_LAST_SIZE_METHOD_NAME);
    }
    

    public function isPortraitWH(lastWidth:int, lastHeight:int):Boolean {
        if (lastHeight > lastWidth) {
            return true;
        } else {
            return false;
        }
    }
    

    public function isPortrait():Boolean {
        return this.isPortraitWH(this.last[this.WIDTH], this.last[this.HEIGHT]);
    }
    

    public function add(reason:String):void {
        var stringMaker:StringMaker = new StringMaker();
        this.logUtil.putF(stringMaker.append(this.REASON).append(reason).toString(), this, this.FIRE_METHOD_NAME);
        stringMaker.delete_(0, stringMaker.length());
        this.logUtil.putF(this.toStringAppend(stringMaker), this, this.FIRE_METHOD_NAME);
        this.list.add(reason);
    }
    

    public function process():void {
        try {
            if (this.list.size() > 0) {
                this.processForced();
            }
            this.list.clear();
        } catch (e:*) {
            PreLogUtil.putOE(this.commonStrings.EXCEPTION, this, this.FIRE_METHOD_NAME, e);
        }
    }
    

    public function processForced():void {
        try {
            var swtJOGLProcessor:SWTJOGLProcessor = SWTJOGLProcessor.getInstance();
            swtJOGLProcessor.clear();
            DisplayChangeEventHandler.getInstance().fireEvent(this.displayChangeEvent);
            LastDisplayChangeEventHandler.getInstance().fireEvent(this.displayChangeEvent);
            swtJOGLProcessor.onSurfaceChanged();
        } catch (e:*) {
            PreLogUtil.putOE(this.commonStrings.EXCEPTION, this, this.FIRE_METHOD_NAME, e);
        }
    }
    

    public function update(displayable:Displayable, reason:String):void {
        var aLastWidth:int = displayable.getWidth();
        var aLastHeight:int = displayable.getHeight();
        var aFullWidth:int = aLastWidth;
        var aFullHeight:int = aLastHeight;
        var stringMaker:StringMaker = new StringMaker();
        this.logUtil.putF(stringMaker.append(CommonLabels.getInstance().START_LABEL).append(reason).append(this.LAST_WIDTH).appendint(aLastWidth).append(this.LAST_HEIGHT).appendint(aLastHeight).append(this.commonSeps.SPACE).append(this.toString()).toString(), this, this.commonStrings.UPDATE);
        if (aLastWidth > 0 && aLastHeight > 0) {
            var features:Features = Features.getInstance();
            var openGLFeatureFactory:OpenGLFeatureFactory = OpenGLFeatureFactory.getInstance();
            if (!features.isDefault(openGLFeatureFactory.OPENGL) || this.last[this.WIDTH] != aLastWidth || this.last[this.HEIGHT] != aLastHeight) {
                stringMaker.delete_(0, stringMaker.length());
                this.logUtil.putF(stringMaker.append(this.UPDATE_FROM_ORIENTATION_CHANGE).toString(), this, this.commonStrings.UPDATE);
                var operatingSystemInterface:GenericOperatingSystem = OperatingSystemFactory.getInstance().getOperatingSystemInstance();
                if (operatingSystemInterface.isOverScan()) {
                    aLastWidth = int(int(aLastWidth * operatingSystemInterface.getOverScanXPercent()) / 100);
                    aLastHeight = int(int(aLastHeight * operatingSystemInterface.getOverScanYPercent()) / 100);
                }
                if (operatingSystemInterface.isScalable()) {
                    if (this.isPortraitWH(aLastWidth, aLastHeight)) {
                        if (Number(aLastHeight) > this.scaleLargestTo) {
                            this.displayRatio = this.scaleLargestTo / Number(aLastHeight);
                            this.ratio = Number(aLastHeight) / this.scaleLargestTo;
                            stringMaker.delete_(0, stringMaker.length());
                            this.logUtil.putF(stringMaker.append(this.ADJUSTING_FOR_SCALING_IN_PORTRAIT).appendfloat(this.displayRatio).toString(), this, this.commonStrings.UPDATE);
                            aLastWidth = JMath.toInt32((Number(aLastWidth) * this.displayRatio));
                            aLastHeight = JMath.toInt32((Number(aLastHeight) * this.displayRatio));
                            this.scalableListener.scale(this.ratio);
                        } else {
                            this.ratio = 1.0;
                            this.scalableListener.scale(this.ratio);
                        }
                    } else {
                        if (Number(aLastWidth) > this.scaleLargestTo) {
                            this.displayRatio = this.scaleLargestTo / Number(aLastWidth);
                            this.ratio = Number(aLastWidth) / this.scaleLargestTo;
                            stringMaker.delete_(0, stringMaker.length());
                            this.logUtil.putF(stringMaker.append(this.ADJUSTING_FOR_SCALING_IN_LANDSCAPE).appendfloat(this.displayRatio).toString(), this, this.commonStrings.UPDATE);
                            aLastWidth = JMath.toInt32((Number(aLastWidth) * this.displayRatio));
                            aLastHeight = JMath.toInt32((Number(aLastHeight) * this.displayRatio));
                            this.scalableListener.scale(this.ratio);
                        } else {
                            this.ratio = 1.0;
                            this.scalableListener.scale(this.ratio);
                        }
                    }
                }
                stringMaker.delete_(0, stringMaker.length());
                this.logUtil.putF(stringMaker.append(this.UPDATE_FROM_ORIENTATION_CHANGE).append(this.LAST_WIDTH).appendint(aLastWidth).append(this.LAST_HEIGHT).appendint(aLastHeight).toString(), this, this.commonStrings.UPDATE);
                this.xOffset = int(aFullWidth - aLastWidth);
                this.yOffset = int(aFullHeight - aLastHeight);
                this.left = this.scalableListener.getLeft(this.xOffset);
                this.top = this.scalableListener.getTop(this.yOffset);
                this.full[this.WIDTH] = aFullWidth;
                this.full[this.HEIGHT] = aFullHeight;
                this.last[this.WIDTH] = aLastWidth;
                this.lastHalf[this.WIDTH] = (this.last[this.WIDTH] >> 1);
                this.last[this.HEIGHT] = aLastHeight;
                this.lastHalf[this.HEIGHT] = (this.last[this.HEIGHT] >> 1);
                SWTJOGLProcessor.getInstance().setCustom(aLastWidth, aLastHeight, this.ratio);
                this.add(this.commonStrings.UPDATE);
            }
        }
    }
    

    public function toString():String {
        var stringBuffer:StringMaker = new StringMaker();
        return this.toStringAppend(stringBuffer);
    }
    

    public function toStringAppend(stringBuffer:StringMaker):String {
        stringBuffer.append(this.DISPLAY_INFO);
        stringBuffer.append(this.FULL);
        stringBuffer.append(this.commonLabels.WIDTH_LABEL);
        stringBuffer.appendint(this.full[this.WIDTH]);
        stringBuffer.append(this.commonSeps.SPACE);
        stringBuffer.append(this.FULL);
        stringBuffer.append(this.commonLabels.HEIGHT_LABEL);
        stringBuffer.appendint(this.full[this.HEIGHT]);
        stringBuffer.append(this.commonSeps.SPACE);
        stringBuffer.append(this.LAST);
        stringBuffer.append(this.commonLabels.WIDTH_LABEL);
        stringBuffer.appendint(this.last[this.WIDTH]);
        stringBuffer.append(this.commonSeps.SPACE);
        stringBuffer.append(this.LAST);
        stringBuffer.append(this.commonLabels.HEIGHT_LABEL);
        stringBuffer.appendint(this.last[this.HEIGHT]);
        stringBuffer.append(this.commonSeps.SPACE);
        stringBuffer.append(this.LAST_HALF);
        stringBuffer.append(this.commonLabels.WIDTH_LABEL);
        stringBuffer.appendint(this.lastHalf[this.WIDTH]);
        stringBuffer.append(this.commonSeps.SPACE);
        stringBuffer.append(this.LAST_HALF);
        stringBuffer.append(this.commonLabels.HEIGHT_LABEL);
        stringBuffer.appendint(this.lastHalf[this.HEIGHT]);
        stringBuffer.append(this.commonSeps.SPACE);
        stringBuffer.append((this.isPortrait() ? this.PORTRAIT : this.LANDSCAPE));
        return stringBuffer.toString();
    }
    

    public function getTop():int {
        return this.top;
    }
    

    public function getLeft():int {
        return this.left;
    }
    

    public function getLastWidth():int {
        return this.last[this.WIDTH];
    }
    

    public function getLastHeight():int {
        return this.last[this.HEIGHT];
    }
    

    public function getLastHalfWidth():int {
        return this.lastHalf[this.WIDTH];
    }
    

    public function getLastHalfHeight():int {
        return this.lastHalf[this.HEIGHT];
    }
    

    public function getCustomLastWidth():int {
        return this.last[this.CUSTOM_WIDTH];
    }
    

    public function getCustomLastHeight():int {
        return this.last[this.CUSTOM_HEIGHT];
    }
    

    public function getRawLastWidth():int {
        return this.last[this.WIDTH];
    }
    

    public function getRawLastHeight():int {
        return this.last[this.HEIGHT];
    }
    

    public function setCustom(width:int, height:int):void {
        this.last[this.CUSTOM_WIDTH] = width;
        this.lastHalf[this.CUSTOM_WIDTH] = (this.last[this.CUSTOM_WIDTH] >> 1);
        this.last[this.CUSTOM_HEIGHT] = height;
        this.lastHalf[this.CUSTOM_HEIGHT] = (this.last[this.CUSTOM_HEIGHT] >> 1);
    }
    

    public function setScalableListener(scalableListener:BaseScalable):void {
        this.scalableListener = scalableListener;
    }
    

    public function getScalableListener():ScalableListener {
        return this.scalableListener;
    }
    

    public function getRatio():Number {
        return this.ratio;
    }
    

    public function getDisplayRatio():Number {
        return this.displayRatio;
    }
    

    public function setOffset(left:int, top:int):void {
        this.left = left;
    }
    

    public function getxOffset():int {
        return this.xOffset;
    }
    

    public function getyOffset():int {
        return this.yOffset;
    }
    }
}

