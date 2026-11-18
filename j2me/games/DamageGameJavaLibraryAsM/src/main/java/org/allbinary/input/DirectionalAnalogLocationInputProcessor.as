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
package org.allbinary.input {
    import org.allbinary.android.input.motion.AnalogLocationInputProcessor;
    import org.allbinary.game.input.GameInputProcessor;
    import org.allbinary.game.input.GameKeyEventSourceInterface;
    import org.allbinary.game.input.GameKeyFactory;
    import org.allbinary.game.input.analog.AnalogLocationInput;
    import org.allbinary.game.input.event.GameKeyEvent;
    import org.allbinary.game.input.event.GameKeyEventFactory;
    import org.allbinary.graphics.CustomGPoint;
    import org.allbinary.layer.AllBinaryLayerManager;
    import org.allbinary.logic.communication.log.LogUtil;
    import org.allbinary.string.CommonStrings;

    public class DirectionalAnalogLocationInputProcessor extends AnalogLocationInputProcessor implements GameKeyEventSourceInterface {
        public var logUtil:LogUtil = null;
        private var inputProcessorArray:Vector.<GameInputProcessor> = null;
        private var gameKeyFactory:GameKeyFactory = null;
        private var leftGameKeyEvent:GameKeyEvent = null;
        private var rightGameKeyEvent:GameKeyEvent = null;
        private var upGameKeyEvent:GameKeyEvent = null;
        private var downGameKeyEvent:GameKeyEvent = null;
        private var leftTriggerGameKeyEvent:GameKeyEvent = null;
        private var rightTriggerGameKeyEvent:GameKeyEvent = null;

        // Java field initializers run after the base constructor
        private function initFieldsDirectionalAnalogLocationInputProcessor():void {
    this.logUtil = LogUtil.getInstance();
    
    this.gameKeyFactory = GameKeyFactory.getInstance();
    this.leftGameKeyEvent = GameKeyEvent.NONE;
    this.rightGameKeyEvent = GameKeyEvent.NONE;
    this.upGameKeyEvent = GameKeyEvent.NONE;
    this.downGameKeyEvent = GameKeyEvent.NONE;
    this.leftTriggerGameKeyEvent = GameKeyEvent.NONE;
    this.rightTriggerGameKeyEvent = GameKeyEvent.NONE;
        }
    

    public function DirectionalAnalogLocationInputProcessor(inputProcessorArray:Vector.<GameInputProcessor>) {
        super();
        this.initFieldsDirectionalAnalogLocationInputProcessor();
        this.inputProcessorArray = inputProcessorArray;
        try {
            this.leftGameKeyEvent = GameKeyEventFactory.getInstance().getInstanceForInput(this, this.gameKeyFactory.LEFT);
            this.rightGameKeyEvent = GameKeyEventFactory.getInstance().getInstanceForInput(this, this.gameKeyFactory.RIGHT);
            this.upGameKeyEvent = GameKeyEventFactory.getInstance().getInstanceForInput(this, this.gameKeyFactory.UP);
            this.downGameKeyEvent = GameKeyEventFactory.getInstance().getInstanceForInput(this, this.gameKeyFactory.DOWN);
            this.leftTriggerGameKeyEvent = GameKeyEventFactory.getInstance().getInstanceForInput(this, this.gameKeyFactory.KEY_NUM0);
            this.rightTriggerGameKeyEvent = GameKeyEventFactory.getInstance().getInstanceForInput(this, this.gameKeyFactory.KEY_NUM5);
        } catch (e:*) {
            var commonStrings:CommonStrings = CommonStrings.getInstance();
            this.logUtil.put(commonStrings.EXCEPTION, this, commonStrings.CONSTRUCTOR, e);
        }
    }
    

    override public function process(allbinaryLayerManager:AllBinaryLayerManager, analogLocationInput:AnalogLocationInput):void {
        try {
            var customGPoint:CustomGPoint = null;
            customGPoint = analogLocationInput.getCustomGPoint();
            var x:int = customGPoint.getX();
            var y:int = customGPoint.getY();
            var leftTrigger:int = analogLocationInput.getLeftTrigger();
            var rightTrigger:int = analogLocationInput.getRightTrigger();
            if (x < 0) {
                this.inputProcessorArray[this.leftGameKeyEvent.getKey()].processAnalog(allbinaryLayerManager, this.leftGameKeyEvent, x);
            } else if (x > 0) {
                this.inputProcessorArray[this.rightGameKeyEvent.getKey()].processAnalog(allbinaryLayerManager, this.rightGameKeyEvent, x);
            }
            if (y < 0) {
                this.inputProcessorArray[this.downGameKeyEvent.getKey()].processAnalog(allbinaryLayerManager, this.downGameKeyEvent, y);
            } else if (y > 0) {
                this.inputProcessorArray[this.upGameKeyEvent.getKey()].processAnalog(allbinaryLayerManager, this.upGameKeyEvent, y);
            }
            if (leftTrigger > 0) {
                this.inputProcessorArray[this.leftTriggerGameKeyEvent.getKey()].processAnalog(allbinaryLayerManager, this.leftTriggerGameKeyEvent, leftTrigger);
            }
            if (rightTrigger > 0) {
                this.inputProcessorArray[this.rightTriggerGameKeyEvent.getKey()].processAnalog(allbinaryLayerManager, this.rightTriggerGameKeyEvent, rightTrigger);
            }
        } catch (e:*) {
            var commonStrings:CommonStrings = CommonStrings.getInstance();
            this.logUtil.put("Unable to process analog input", this, commonStrings.PROCESS, e);
        }
    }
    

    public function getSourceId():int {
        return 0;
    }
    }
}

