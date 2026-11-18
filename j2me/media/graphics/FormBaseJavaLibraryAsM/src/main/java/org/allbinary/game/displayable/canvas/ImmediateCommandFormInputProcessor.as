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
    import org.allbinary.game.input.event.GameKeyEvent;
    import org.allbinary.graphics.form.ScrollSelectionForm;
    import org.allbinary.input.motion.gesture.observer.MotionGestureEvent;
    import org.allbinary.time.TimeDelayHelper;
    import org.allbinary.util.BasicArrayList;

    public class ImmediateCommandFormInputProcessor extends CommandFormInputProcessor {
        private var timeHelper:TimeDelayHelper = null;
        public var gameCommandCanvas:GameCommandCanvas = null;

        // Java field initializers run after the base constructor
        private function initFieldsImmediateCommandFormInputProcessor():void {
    this.timeHelper = new TimeDelayHelper(25);
    
        }
    

    public function ImmediateCommandFormInputProcessor(gameKeyEventList:BasicArrayList, playerInputId:int, gameCommandCanvas:GameCommandCanvas, form:ScrollSelectionForm) {
        super(gameKeyEventList, playerInputId, gameCommandCanvas, form);
        this.initFieldsImmediateCommandFormInputProcessor();
        this.gameCommandCanvas = gameCommandCanvas;
    }
    

    override public function onPressGameKeyEvent(gameKeyEvent:GameKeyEvent):void {
        try {
            super.onPressGameKeyEvent(gameKeyEvent);
            if (this.timeHelper.isTimeTNT()) {
                this.processInputList();
                this.gameCommandCanvas.repaintBehavior.onChangeRepaint(this.getCanvas());
            }
        } catch (e:*) {
            this.logUtil.put(this.commonStrings.EXCEPTION, this, this.gameInputStrings.ON_PRESS_GAME_KEY, e);
        }
    }
    

    override public function onDownGameKeyEvent(gameKeyEvent:GameKeyEvent):void {
        try {
            super.onDownGameKeyEvent(gameKeyEvent);
            if (this.timeHelper.isTimeTNT()) {
                this.processInputList();
                this.gameCommandCanvas.repaintBehavior.onChangeRepaint(this.getCanvas());
            }
        } catch (e:*) {
            this.logUtil.put(this.commonStrings.EXCEPTION, this, this.gameInputStrings.ON_DOWN_GAME_KEY, e);
        }
    }
    

    override public function onUpGameKeyEvent(gameKeyEvent:GameKeyEvent):void {
        try {
            super.onUpGameKeyEvent(gameKeyEvent);
            if (this.timeHelper.isTimeTNT()) {
                this.processInputList();
                this.gameCommandCanvas.repaintBehavior.onChangeRepaint(this.getCanvas());
            }
        } catch (e:*) {
            this.logUtil.put(this.commonStrings.EXCEPTION, this, this.gameInputStrings.ON_UP_GAME_KEY, e);
        }
    }
    

    override public function onMotionGestureEvent(motionGestureEvent:MotionGestureEvent):void {
        try {
            super.onMotionGestureEvent(motionGestureEvent);
            if (this.timeHelper.isTimeTNT()) {
                this.processInputList();
                this.gameCommandCanvas.repaintBehavior.onChangeRepaint(this.getCanvas());
            }
        } catch (e:*) {
            this.logUtil.put(this.commonStrings.EXCEPTION, this, "onMotionGestureEvent", e);
        }
    }
    }
}

