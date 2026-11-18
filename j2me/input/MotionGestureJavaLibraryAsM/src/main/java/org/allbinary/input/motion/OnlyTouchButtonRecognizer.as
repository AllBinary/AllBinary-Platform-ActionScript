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
package org.allbinary.input.motion {
    import org.allbinary.input.motion.button.TouchButtonRecognizer;

    public class OnlyTouchButtonRecognizer extends MotionRecognizer {
        private var touchButtonRecognizer:TouchButtonRecognizer = null;
        private var touchButtonProcessing:Boolean = false;

        // Java field initializers run after the base constructor
        private function initFieldsOnlyTouchButtonRecognizer():void {
    
    this.touchButtonProcessing = false;
        }
    

    public function OnlyTouchButtonRecognizer() {
        super();
        this.initFieldsOnlyTouchButtonRecognizer();
        this.touchButtonRecognizer = new TouchButtonRecognizer();
    }
    

    override public function processStartMotionEvent(x:int, y:int, deviceId:int, modifiers:int):void {
        if (this.touchButtonRecognizer.pressTouchButtonInput(x, y, deviceId)) {
            this.touchButtonProcessing = true;
        }
    }
    

    override public function processEndMotionEvent(x:int, y:int, deviceId:int, modifiers:int):void {
        if (this.touchButtonProcessing) {
            this.touchButtonProcessing = false;
        }
        if (this.touchButtonRecognizer.releaseTouchButtonInput(x, y, deviceId)) {
            return;
        }
    }
    

    override public function processDraggedMotionEvent(x:int, y:int, deviceId:int, modifiers:int):void {
        if (this.touchButtonProcessing) {
            this.touchButtonRecognizer.pressTouchButtonInput(x, y, deviceId);
        }
    }
    }
}

