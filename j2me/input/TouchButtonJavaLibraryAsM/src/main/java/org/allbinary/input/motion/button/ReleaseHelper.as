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
    import org.allbinary.game.input.event.GameKeyEvent;

    public class ReleaseHelper {
        public var touchButtonRecognizer:TouchButtonRecognizer = null;

        // Java field initializers run after the base constructor
        private function initFieldsReleaseHelper():void {
    
        }
    

    public function ReleaseHelper(touchButtonRecognizer:TouchButtonRecognizer) {
        super();
        this.initFieldsReleaseHelper();
        this.touchButtonRecognizer = touchButtonRecognizer;
    }
    

    public function release(touchButtonInput:TouchButtonInput, deviceId:int):void {
        var nextTouchButtonInput:TouchButtonInput = null;
        var gameKeyEvent:GameKeyEvent = null;
        for (var index:int = int(this.touchButtonRecognizer.currentlyPressedTouchButtonSingleton.size() - 1); index >= 0; index--) {
            nextTouchButtonInput = this.touchButtonRecognizer.currentlyPressedTouchButtonSingleton.get_(index);
            gameKeyEvent = nextTouchButtonInput.getGameKeyEvent();
            this.touchButtonRecognizer.upGameKeyEventHandler.fireEvent(gameKeyEvent);
            this.touchButtonRecognizer.upGameKeyEventHandler.getInstanceForDevice(deviceId).fireEvent(gameKeyEvent);
            this.touchButtonRecognizer.currentlyPressedTouchButtonSingleton.removeAt(index);
        }
    }
    }
}

