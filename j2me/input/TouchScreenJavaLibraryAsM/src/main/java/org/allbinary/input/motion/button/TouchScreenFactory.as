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
package org.allbinary.input.motion.button {
    import org.allbinary.logic.communication.log.LogUtil;
    import org.allbinary.logic.string.StringMaker;
    import org.allbinary.logic.string.StringUtil;
    import org.allbinary.string.CommonStrings;

    public class TouchScreenFactory {
    private static var SINGLETON_value:TouchScreenFactory;
    private static var SINGLETON_set:Boolean = false;
    private static function get SINGLETON():TouchScreenFactory {
        if (!TouchScreenFactory.SINGLETON_set) {
            TouchScreenFactory.SINGLETON_set = true;
            TouchScreenFactory.SINGLETON_value = new TouchScreenFactory();
        }
        return TouchScreenFactory.SINGLETON_value;
    }
        public var logUtil:LogUtil = null;
        private var touch:Boolean = false;
        private var multiTouch:Boolean = false;
        private var multiTouchDistinct:Boolean = false;
        private var touchScreenType:TouchScreenType = null;

        // Java field initializers run after the base constructor
        private function initFieldsTouchScreenFactory():void {
    this.logUtil = LogUtil.getInstance();
    this.touch = false;
    this.multiTouch = false;
    this.multiTouchDistinct = false;
    this.touchScreenType = TouchScreenTypesFactory.getInstance().NOTOUCH;
        }
    

    public function TouchScreenFactory() {
        super();
        this.initFieldsTouchScreenFactory();
        try {
            this.setTouch(true);
            this.setMultiTouch(false);
        } catch (e:*) {
            var commonStrings:CommonStrings = CommonStrings.getInstance();
            this.logUtil.put(commonStrings.EXCEPTION, TouchScreenFactory.SINGLETON, commonStrings.GET_INSTANCE, e);
        }
    }
    

    public static function getInstance():TouchScreenFactory {
        return TouchScreenFactory.SINGLETON;
    }
    

    public function setMultiTouch(multiTouch:Boolean):void {
        this.multiTouch = multiTouch;
    }
    

    public function isMultiTouch():Boolean {
        return this.multiTouch;
    }
    

    public function setTouch(touch:Boolean):void {
        this.touch = touch;
    }
    

    public function isTouch():Boolean {
        return this.touch;
    }
    

    public function setMultiTouchDistinct(multiTouchDistinct:Boolean):void {
        this.multiTouchDistinct = multiTouchDistinct;
    }
    

    public function isMultiTouchDistinct():Boolean {
        return this.multiTouchDistinct;
    }
    

    public function setTouchScreenType(touchScreenType:TouchScreenType):void {
        this.touchScreenType = touchScreenType;
    }
    

    public function getTouchScreenType():TouchScreenType {
        return this.touchScreenType;
    }
    

    public function toString():String {
        var stringBuffer:StringMaker = new StringMaker();
        stringBuffer.append("TouchScreen: ");
        stringBuffer.appendboolean(this.isTouch());
        stringBuffer.append(" MultiTouch: ");
        stringBuffer.appendboolean(this.isMultiTouch());
        stringBuffer.append(" Distinct MultiTouch: ");
        stringBuffer.appendboolean(this.isMultiTouchDistinct());
        stringBuffer.append(" TouchScreenType: ");
        stringBuffer.append(StringUtil.getInstance().toString1(this.getTouchScreenType()));
        return stringBuffer.toString();
    }
    }
}

