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
    import javax.microedition.lcdui.Command;
    import org.allbinary.game.commands.GameCommandsFactory;
    import org.allbinary.game.configuration.feature.Features;
    import org.allbinary.game.configuration.feature.InputFeatureFactory;
    import org.allbinary.game.input.event.GameKeyEvent;
    import org.allbinary.game.input.event.GameKeyEventFactory;
    import org.allbinary.game.layer.SWTUtil;
    import org.allbinary.graphics.GPoint;
    import org.allbinary.graphics.displayable.MyCanvas;
    import org.allbinary.graphics.form.CommandCurrentSelectionForm;
    import org.allbinary.graphics.form.ScrollSelectionForm;
    import org.allbinary.graphics.opengles.OpenGLFeatureFactory;
    import org.allbinary.input.motion.gesture.MotionGestureInput;
    import org.allbinary.input.motion.gesture.TouchMotionGestureFactory;
    import org.allbinary.input.motion.gesture.observer.MotionGestureEvent;
    import org.allbinary.logic.string.StringMaker;
    import org.allbinary.media.audio.PrimaryPlayerQueueFactory;
    import org.allbinary.media.audio.SelectSound;
    import org.allbinary.thread.PrimaryThreadPool;
    import org.allbinary.time.TimeDelayHelper;
    import org.allbinary.util.BasicArrayList;

    //In general allow scrolling of the menu and selection the center item
    public class CommandFormInputProcessor extends BasicMenuInputProcessor {
        private var MOTION_GESTURE_SOURCE_ID:int = 0;
        private var CLICK_DELAY:int = 0;
        private var clickTimeHelper:TimeDelayHelper = null;
        private var DOUBLE_CLICK_DELAY:int = 0;
        private var doubleClickTimeHelper:TimeDelayHelper = null;
        public var isSingleKeyProcessing:Boolean = false;
        private var form:ScrollSelectionForm = null;
        private var hasPressed:Boolean = false;
        private var PROCESS_COMMAND:String = null;
        private var NAME_LABEL:String = null;

        // Java field initializers run after the base constructor
        private function initFieldsCommandFormInputProcessor():void {
    this.MOTION_GESTURE_SOURCE_ID = GameKeyEventFactory.getInstance().MOTION_GESTURE_SOURCE_ID;
    this.CLICK_DELAY = 150;
    this.clickTimeHelper = new TimeDelayHelper(this.CLICK_DELAY);
    this.DOUBLE_CLICK_DELAY = 1200;
    this.doubleClickTimeHelper = new TimeDelayHelper(this.DOUBLE_CLICK_DELAY);
    this.isSingleKeyProcessing = InputFeatureFactory.getInstance().isSingleKeyProcessing();
    
    this.hasPressed = false;
    this.PROCESS_COMMAND = "processCommand";
    this.NAME_LABEL = " ScrollSelectionForm: ";
        }
    

    public function CommandFormInputProcessor(gameKeyEventList:BasicArrayList, playerInputId:int, gameCanvas:MyCanvas, form:ScrollSelectionForm) {
        super(gameKeyEventList, playerInputId, gameCanvas);
        this.initFieldsCommandFormInputProcessor();
        this.form = form;
    }
    

    public function processInput(key:int):int {
        if (key == Canvas.LEFT || key == Canvas.RIGHT || key == Canvas.UP || key == Canvas.DOWN) {
            PrimaryPlayerQueueFactory.getInstance().add(SelectSound.getInstance());
            this.form.processInputKey(key);
            return 1;
        } else if (key == Canvas.FIRE) {
            PrimaryPlayerQueueFactory.getInstance().add(SelectSound.getInstance());
            return this.processCommand();
        }
        return 0;
    }
    

    private function processCommand():int {
        var commandCurrentSelectionForm:CommandCurrentSelectionForm = (this.form as CommandCurrentSelectionForm);
        var command:Command = commandCurrentSelectionForm.getSelectedCommand();
        this.logUtil.putF(command.toString(), this, this.PROCESS_COMMAND);
        var features:Features = Features.getInstance();
        var openGLFeatureFactory:OpenGLFeatureFactory = OpenGLFeatureFactory.getInstance();
        if (SWTUtil.isSWT && features.isFeature(openGLFeatureFactory.OPENGL) && command != GameCommandsFactory.getInstance().EXIT_COMMAND) {
            new CommandRunnable(this, command).run();
        } else {
            PrimaryThreadPool.getInstance().runTask(new CommandRunnable(this, command));
        }
        if (command == GameCommandsFactory.getInstance().QUIT_COMMAND) {
            return -1;
        } else {
            return 1;
        }
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
                key = gameKeyEvent.getKey();
                if (gameKeyEvent.getSourceId() != this.MOTION_GESTURE_SOURCE_ID) {
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
            this.logUtil.put(this.commonStrings.EXCEPTION, this, this.gameInputStrings.PROCESS_INPUT, e);
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
        var touchMotionGestureFactory:TouchMotionGestureFactory = TouchMotionGestureFactory.getInstance();
        var motionGestureInput:MotionGestureInput = motionGestureEvent.getMotionGesture();
        if (motionGestureInput == touchMotionGestureFactory.RELEASED) {
            var point:GPoint = motionGestureEvent.getCurrentPoint();
            if (this.form.isInForm(point)) {
                var index:int = this.form.getSelectedIndexForPoint(point);
                if (index != -1) {
                    PrimaryPlayerQueueFactory.getInstance().add(SelectSound.getInstance());
                    if (index == this.form.getSelectedIndex()) {
                        if (this.clickTimeHelper.isTimeTNT()) {
                            this.processCommand();
                        }
                    } else {
                        this.form.setSelectedIndex(index);
                    }
                } else {
                }
            }
            if (this.hasPressed) {
                if (!this.doubleClickTimeHelper.isTimeTNT()) {
                    this.logUtil.putF("Double Press", this, this.gameInputStrings.PROCESS_MOTION_INPUT);
                    this.processCommand();
                }
                this.doubleClickTimeHelper.delay = this.DOUBLE_CLICK_DELAY;
                this.doubleClickTimeHelper.setStartTimeTNT();
            }
            this.hasPressed = false;
        } else if (motionGestureInput == touchMotionGestureFactory.PRESSED) {
            this.doubleClickTimeHelper.delay = 0;
            this.hasPressed = true;
        }
    }
    

    public function toString():String {
        return new StringMaker().append(JSystem.objectToString(this)).append(this.NAME_LABEL).append(this.form.toString()).toString();
    }
    }
}

