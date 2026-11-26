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
package org.allbinary.game.displayable.canvas {
    import javax.microedition.lcdui.Canvas;
    import org.allbinary.game.input.GameInputStrings;
    import org.allbinary.game.input.event.GameKeyEvent;
    import org.allbinary.graphics.GPoint;
    import org.allbinary.graphics.Rectangle;
    import org.allbinary.graphics.displayable.MyCanvas;
    import org.allbinary.input.motion.gesture.MotionGestureInput;
    import org.allbinary.input.motion.gesture.TouchMotionGestureFactory;
    import org.allbinary.input.motion.gesture.observer.MotionGestureEvent;
    import org.allbinary.math.RectangleCollisionUtil;
    import org.allbinary.time.TimeDelayHelper;
    import org.allbinary.util.BasicArrayList;

    public class PopupMenuInputProcessor extends BasicMenuInputProcessor {
        private var rectangleCollisionUtil:RectangleCollisionUtil = null;
        private var CLICK_DELAY:int = 0;
        private var clickTimeHelper:TimeDelayHelper = null;
        private var rectangle:Rectangle = null;

        // Java field initializers run after the base constructor
        private function initFieldsPopupMenuInputProcessor():void {
    this.rectangleCollisionUtil = RectangleCollisionUtil.getInstance();
    this.CLICK_DELAY = 120;
    this.clickTimeHelper = new TimeDelayHelper(this.CLICK_DELAY);
    
        }
    

    public function PopupMenuInputProcessor(gameKeyEventList:BasicArrayList, playerInputId:int, gameCanvas:MyCanvas, rectangle:Rectangle) {
        super(gameKeyEventList, playerInputId, gameCanvas);
        this.initFieldsPopupMenuInputProcessor();
        this.rectangle = rectangle;
    }
    

    public function init(...args):void {
        if (args.length == 1) {
            this.init_jo1(args[0]);
            return;
        }
        throw new JException("IllegalArgumentException", "init");
    }

    private function init_jo1(rectangle:Rectangle):void {
        this.rectangle = rectangle;
    }
    

    public function processInput(key:int):int {
        if (key == Canvas.KEY_STAR) {
            var gameCanvas:AllBinaryGameCanvas = (this.getCanvas() as AllBinaryGameCanvas);
            gameCanvas.toggleMenu();
            return 1;
        }
        return 0;
    }
    

    override public function processInputList(...args):* {
        if (args.length == 0) {
            return this.processInputList_jo0();
        }
        return super.processInputList.apply(this, args);
    }

    private function processInputList_jo0():int {
        try {
            var motionInputsIndex:int = this.processMotionInputs();
            var list:BasicArrayList = this.getGameKeyEventList();
            var size:int = list.size();
            var key:int = 0;
            var gameKeyEvent:GameKeyEvent = null;
            for (var index:int = 0; index < size; index++) {
                gameKeyEvent = (list.objectArray[index] as GameKeyEvent);
                if (gameKeyEvent != null) {
                    key = gameKeyEvent.getKey();
                    if (this.processInput(key) == 1) {
                        break;
                    }
                }
            }
            this.clear();
            if (size > 0 || motionInputsIndex >= 0) {
                return 1;
            } else {
                return -1;
            }
        } catch (e:*) {
            this.logUtil.put(this.commonStrings.EXCEPTION, this, GameInputStrings.getInstance().PROCESS_INPUT, e);
            return -1;
        }
    }
    

    public function processMotionInputs():int {
        var lastIndex:int = int(this.motionGestureEventList.size() - 1);
        if (lastIndex >= 0) {
            var motionGestureEvent:MotionGestureEvent = (this.motionGestureEventList.objectArray[lastIndex] as MotionGestureEvent);
            this.processMotionInput(motionGestureEvent);
        }
        this.motionGestureEventList.clear();
        return lastIndex;
    }
    

    public function processMotionInput(motionGestureEvent:MotionGestureEvent):void {
        if (motionGestureEvent == null) {
            this.logUtil.putF("Exception: Bug", this, this.gameInputStrings.PROCESS_MOTION_INPUT);
            return;
        }
        var touchMotionGestureFactory:TouchMotionGestureFactory = TouchMotionGestureFactory.getInstance();
        var motionGestureInput:MotionGestureInput = motionGestureEvent.getMotionGesture();
        if (motionGestureInput == touchMotionGestureFactory.RELEASED) {
            var point:GPoint = motionGestureEvent.getCurrentPoint();
            var rectPoint:GPoint = this.rectangle.getPoint();
            if (this.rectangleCollisionUtil.isInside(rectPoint.getX(), rectPoint.getY(), int(this.rectangle.getMaxX() + 20), this.rectangle.getMaxY(), point.getX(), point.getY())) {
                if (this.clickTimeHelper.isTimeTNT()) {
                    var gameCanvas:AllBinaryGameCanvas = (this.getCanvas() as AllBinaryGameCanvas);
                    gameCanvas.toggleMenu();
                }
            }
        }
    }
    }
}

