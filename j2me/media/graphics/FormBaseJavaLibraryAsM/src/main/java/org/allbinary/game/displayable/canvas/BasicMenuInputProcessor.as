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
    import javax.microedition.lcdui.NullCanvas;
    import org.allbinary.game.input.PlayerGameInput;
    import org.allbinary.graphics.displayable.MyCanvas;
    import org.allbinary.input.motion.gesture.observer.BaseMotionGestureEventListener;
    import org.allbinary.input.motion.gesture.observer.MotionGestureEvent;
    import org.allbinary.util.BasicArrayList;
    import org.allbinary.util.BasicArrayListD;

    public class BasicMenuInputProcessor extends PlayerGameInput implements BaseMotionGestureEventListener {
        public var motionGestureEventList:BasicArrayList = null;
        private var canvas:Canvas = null;

        // Java field initializers run after the base constructor
        private function initFieldsBasicMenuInputProcessor():void {
    this.motionGestureEventList = new BasicArrayListD();
    this.canvas = NullCanvas.NULL_CANVAS;
        }
    

    public function BasicMenuInputProcessor(gameKeyEventList:BasicArrayList, playerInputId:int, gameCanvas:Canvas) {
        super(gameKeyEventList, new BasicArrayListD(), playerInputId);
        this.initFieldsBasicMenuInputProcessor();
        this.canvas = gameCanvas;
    }
    

    public function onMotionGestureEvent(motionGestureEvent:MotionGestureEvent):void {
        this.motionGestureEventList.add(motionGestureEvent);
    }
    

    public function onScrolledMotionGestureEvent(motionGestureEvent:MotionGestureEvent):void {
    }
    

    private function setCanvas(canvas:MyCanvas):void {
        this.canvas = canvas;
    }
    

    public function getCanvas():MyCanvas {
        return (this.canvas as MyCanvas);
    }
    

    public function processInputList(...args):* {
        if (args.length == 0) {
            return this.processInputList_jo0();
        }
        throw new JException("IllegalArgumentException", "processInputList");
    }

    private function processInputList_jo0():int {
        return -1;
    }
    }
}

