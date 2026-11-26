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
    import org.allbinary.graphics.GPoint;
    import org.allbinary.logic.string.StringMaker;
    import org.allbinary.logic.string.StringUtil;
    import org.allbinary.string.CommonSeps;

    public class CurrentlyPressedTouchButtonSingletonDebug extends CurrentlyPressedTouchButtonSingleton {
    private static var instanceC_value:CurrentlyPressedTouchButtonSingletonDebug;
    private static var instanceC_set:Boolean = false;
    private static function get instanceC():CurrentlyPressedTouchButtonSingletonDebug {
        if (!CurrentlyPressedTouchButtonSingletonDebug.instanceC_set) {
            CurrentlyPressedTouchButtonSingletonDebug.instanceC_set = true;
            CurrentlyPressedTouchButtonSingletonDebug.instanceC_value = new CurrentlyPressedTouchButtonSingletonDebug();
        }
        return CurrentlyPressedTouchButtonSingletonDebug.instanceC_value;
    }
        private var string:String = null;
        private var listString:String = null;
        private var appendText:String = null;
        private var PRESSED_AND_FIRED:String = null;
        private var PRESSED_AND_NOT_FIRED:String = null;
        private var ASSOCIATED_RELEASED_AND_FIRED:String = null;
        private var RELEASED_AND_FIRED:String = null;
        private var RELEASED_AND_FIRED_2:String = null;
        private var RELEASED_AND_NOT_FIRED:String = null;

        // Java field initializers run after the base constructor
        private function initFieldsCurrentlyPressedTouchButtonSingletonDebug():void {
    this.string = StringUtil.getInstance().EMPTY_STRING;
    this.listString = StringUtil.getInstance().EMPTY_STRING;
    this.appendText = StringUtil.getInstance().EMPTY_STRING;
    this.PRESSED_AND_FIRED = "pressed & fired";
    this.PRESSED_AND_NOT_FIRED = "pressed in button but not fired";
    this.ASSOCIATED_RELEASED_AND_FIRED = "assoc. rel & fired";
    this.RELEASED_AND_FIRED = "rel & fired 1";
    this.RELEASED_AND_FIRED_2 = "rel & fired 2";
    this.RELEASED_AND_NOT_FIRED = "rel & not fired";
        }

        public function CurrentlyPressedTouchButtonSingletonDebug() {
            super();
            this.initFieldsCurrentlyPressedTouchButtonSingletonDebug();
        }
    

    public static function getInstance():CurrentlyPressedTouchButtonSingleton {
        return CurrentlyPressedTouchButtonSingletonDebug.instanceC;
    }
    

    private function appendTouchButtonInput(append:String, touchButtonInput:TouchButtonInput):void {
        var stringBuffer:StringMaker = new StringMaker();
        stringBuffer.append(touchButtonInput.toString());
        stringBuffer.append(CommonSeps.getInstance().SPACE);
        stringBuffer.append(append);
        this.appendText = stringBuffer.toString();
        this.string = new StringMaker().append(this.listString).append(this.appendText).toString();
    }
    

    private function append(append:String):void {
        this.appendText = new StringMaker().append(this.appendText).append(append).toString();
        this.string = new StringMaker().append(this.listString).append(this.appendText).toString();
    }
    

    public function clearLog(x:int, y:int):void {
        this.appendText = new StringMaker().append(GPoint.toStringStatic(x, y, 0)).append(CommonSeps.getInstance().SPACE).toString();
        this.string = new StringMaker().append(this.listString).append(this.appendText).toString();
    }
    

    public function releaseAndNotFired():void {
        this.append(this.RELEASED_AND_NOT_FIRED);
    }
    

    public function releaseAndFired(touchButtonInput:TouchButtonInput):void {
        this.appendTouchButtonInput(this.RELEASED_AND_FIRED, touchButtonInput);
    }
    

    public function releaseAndFired2(touchButtonInput:TouchButtonInput):void {
        this.appendTouchButtonInput(this.RELEASED_AND_FIRED_2, touchButtonInput);
    }
    

    public function releaseAndFiredAssociated(touchButtonInput:TouchButtonInput):void {
        this.appendTouchButtonInput(this.ASSOCIATED_RELEASED_AND_FIRED, touchButtonInput);
    }
    

    public function pressedAndFired(touchButtonInput:TouchButtonInput):void {
        this.appendTouchButtonInput(this.PRESSED_AND_FIRED, touchButtonInput);
    }
    

    public function pressedAndNotFired(touchButtonInput:TouchButtonInput):void {
        this.appendTouchButtonInput(this.PRESSED_AND_NOT_FIRED, touchButtonInput);
    }
    

    override public function removeAt(index:int):TouchButtonInput {
        var touchButtonInput:TouchButtonInput = super.removeAt(index);
        this.listString = this.list.toString();
        this.string = new StringMaker().append(this.listString).append(this.appendText).toString();
        return touchButtonInput;
    }
    

    override public function remove(touchButtonInput:TouchButtonInput):Boolean {
        var isRemoved:Boolean = super.remove(touchButtonInput);
        this.listString = this.list.toString();
        this.string = new StringMaker().append(this.listString).append(this.appendText).toString();
        return isRemoved;
    }
    

    override public function add(touchButtonInput:TouchButtonInput):void {
        super.add(touchButtonInput);
        this.listString = this.list.toString();
        this.string = new StringMaker().append(this.listString).append(this.appendText).toString();
    }
    

    public function toString():String {
        return this.string;
    }
    }
}

