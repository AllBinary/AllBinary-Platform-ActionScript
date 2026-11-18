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
    import org.allbinary.game.input.event.DownGameKeyEventHandler;
    import org.allbinary.game.input.event.GameKeyEvent;
    import org.allbinary.game.input.event.UpGameKeyEventHandler;
    import org.allbinary.graphics.GPoint;
    import org.allbinary.graphics.Rectangle;
    import org.allbinary.logic.communication.log.LogUtil;
    import org.allbinary.math.RectangleCollisionUtil;
    import org.allbinary.util.BasicArrayList;

    public class TouchButtonRecognizer {
        public var logUtil:LogUtil = null;
        private var rectangleCollisionUtil:RectangleCollisionUtil = null;
        public var upGameKeyEventHandler:UpGameKeyEventHandler = null;
        private var downGameKeyEventHandler:DownGameKeyEventHandler = null;
        private var lastPressedTouchButtonInput:TouchButtonInput = null;
        public var currentlyPressedTouchButtonSingleton:CurrentlyPressedTouchButtonSingleton = null;
        private var releaseHelper:ReleaseHelper = null;

        // Java field initializers run after the base constructor
        private function initFieldsTouchButtonRecognizer():void {
    this.logUtil = LogUtil.getInstance();
    this.rectangleCollisionUtil = RectangleCollisionUtil.getInstance();
    this.upGameKeyEventHandler = UpGameKeyEventHandler.getInstance();
    this.downGameKeyEventHandler = DownGameKeyEventHandler.getInstance();
    this.lastPressedTouchButtonInput = BasicTouchInputFactory.getInstance().NONE;
    this.currentlyPressedTouchButtonSingleton = CurrentlyPressedTouchButtonSingleton.getInstance();
    this.releaseHelper = null;
        }
    

    public function TouchButtonRecognizer() {
        super();
        this.initFieldsTouchButtonRecognizer();
        if (TouchScreenFactory.getInstance().isMultiTouch()) {
            this.releaseHelper = new MultitouchReleaseHelper(this);
        } else {
            this.releaseHelper = new ReleaseHelper(this);
        }
    }
    

    private function processRelease(touchButtonInput:TouchButtonInput, deviceId:int):void {
        this.releaseHelper.release(touchButtonInput, deviceId);
        var gameKeyEvent:GameKeyEvent = touchButtonInput.getGameKeyEvent();
        this.upGameKeyEventHandler.fireEvent(gameKeyEvent);
        this.upGameKeyEventHandler.getInstanceForDevice(deviceId).fireEvent(gameKeyEvent);
        this.currentlyPressedTouchButtonSingleton.remove(touchButtonInput);
    }
    

    public function releaseTouchButtonInput(x:int, y:int, deviceId:int):Boolean {
        var touchButtonInput:TouchButtonInput = this.lastPressedTouchButtonInput;
        if (this.currentlyPressedTouchButtonSingleton.contains(touchButtonInput)) {
            this.lastPressedTouchButtonInput = BasicTouchInputFactory.getInstance().NONE;
            this.processRelease(touchButtonInput, deviceId);
            return true;
        } else {
            var list:BasicArrayList = TouchButtonFactory.getInstance().getList();
            var rectangle:Rectangle = null;
            var point:GPoint = null;
            var touchButton:TouchButton = null;
            for (var index:int = int(list.size() - 1); index >= 0; index--) {
                touchButton = (list.objectArray[index] as TouchButton);
                rectangle = touchButton.getRectangle();
                point = rectangle.getPoint();
                if (this.rectangleCollisionUtil.isInside(point.getX(), point.getY(), rectangle.getMaxX(), rectangle.getMaxY(), x, y)) {
                    touchButtonInput = touchButton.getTouchButtonInput();
                    this.processRelease(touchButtonInput, deviceId);
                    return true;
                }
            }
        }
        return false;
    }
    

    public function pressTouchButtonInput(x:int, y:int, deviceId:int):Boolean {
        var list:BasicArrayList = TouchButtonFactory.getInstance().getList();
        var rectangle:Rectangle = null;
        var point:GPoint = null;
        var touchButton:TouchButton = null;
        var touchButtonInput:TouchButtonInput = null;
        var gameKeyEvent:GameKeyEvent = null;
        for (var index:int = int(list.size() - 1); index >= 0; index--) {
            touchButton = (list.objectArray[index] as TouchButton);
            rectangle = touchButton.getRectangle();
            point = rectangle.getPoint();
            if (this.rectangleCollisionUtil.isInside(point.getX(), point.getY(), rectangle.getMaxX(), rectangle.getMaxY(), x, y)) {
                touchButtonInput = touchButton.getTouchButtonInput();
                if (!this.currentlyPressedTouchButtonSingleton.contains(touchButtonInput)) {
                    this.releaseHelper.release(touchButtonInput, deviceId);
                    this.lastPressedTouchButtonInput = touchButtonInput;
                    this.currentlyPressedTouchButtonSingleton.add(touchButtonInput);
                    gameKeyEvent = touchButtonInput.getGameKeyEvent();
                    this.downGameKeyEventHandler.fireEvent(gameKeyEvent);
                    this.downGameKeyEventHandler.getInstanceForDevice(deviceId).fireEvent(gameKeyEvent);
                }
                return true;
            }
        }
        return false;
    }
    }
}

