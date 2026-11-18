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
    import org.allbinary.game.input.GameKey;
    import org.allbinary.game.input.GameKeyEventSourceInterface;
    import org.allbinary.game.input.GameKeyFactory;
    import org.allbinary.game.input.Input;
    import org.allbinary.game.input.InputFactory;
    import org.allbinary.game.input.InputProcessor;
    import org.allbinary.game.input.PlatformKeyFactory;
    import org.allbinary.game.input.event.DownKeyEventHandler;
    import org.allbinary.game.input.event.GameKeyEvent;
    import org.allbinary.game.input.event.GameKeyEventFactory;
    import org.allbinary.game.input.event.UpGameKeyEventHandler;
    import org.allbinary.logic.communication.log.LogUtil;
    import org.allbinary.logic.communication.log.PreLogUtil;
    import org.allbinary.logic.string.StringMaker;
    import org.allbinary.string.CommonSeps;
    import org.allbinary.string.CommonStrings;

    public class FormInputProcessor extends InputProcessor {
        public var logUtil:LogUtil = null;
        public var commonStrings:CommonStrings = null;
        private var gameKeyEventFactory:GameKeyEventFactory = null;
        private var downKeyEventHandler:DownKeyEventHandler = null;
        private var upGameKeyEventHandler:UpGameKeyEventHandler = null;
        private var inputFactory:InputFactory = null;
        private var platformKeyFactory:PlatformKeyFactory = null;
        private var allBinaryGameCanvas:AllBinaryGameCanvas = null;

        // Java field initializers run after the base constructor
        private function initFieldsFormInputProcessor():void {
    this.logUtil = LogUtil.getInstance();
    this.commonStrings = CommonStrings.getInstance();
    this.gameKeyEventFactory = GameKeyEventFactory.getInstance();
    this.downKeyEventHandler = DownKeyEventHandler.getInstance();
    this.upGameKeyEventHandler = UpGameKeyEventHandler.getInstance();
    this.inputFactory = InputFactory.getInstance();
    this.platformKeyFactory = PlatformKeyFactory.getInstance();
    
        }
    

    public function FormInputProcessor(allBinaryGameCanvas:AllBinaryGameCanvas) {
        super();
        this.initFieldsFormInputProcessor();
        this.allBinaryGameCanvas = allBinaryGameCanvas;
    }
    

    override public function keyPressedByDevice(keyCode:int, deviceId:int):void {
        try {
            PreLogUtil.put(new StringMaker().append(this.inputFactory.KEY_CODE_LABEL).appendint(keyCode).append(CommonSeps.getInstance().SPACE).append(this.inputFactory.DEVICE_ID_LABEL).appendint(deviceId).toString(), this, this.gameInputStrings.KEY_PRESSED);
            var input:Input = this.inputFactory.getInstanceById(keyCode);
            var gameKeyEvent:GameKeyEvent = this.gameKeyEventFactory.getInstanceForInput(this.allBinaryGameCanvas, input);
            this.downKeyEventHandler.fireEventForGameKeyEvent(gameKeyEvent);
        } catch (e:*) {
            this.logUtil.put(this.commonStrings.EXCEPTION, this, this.gameInputStrings.ADD_KEY_EVENT, e);
        }
    }
    

    override public function keyReleasedByDevice(canvas:Canvas, keyCode:int, deviceId:int):void {
        try {
            var input:Input = this.inputFactory.getInstanceById(keyCode);
            if (this.platformKeyFactory.isEnter(input)) {
                PreLogUtil.put(new StringMaker().append(this.inputFactory.KEY_CODE_LABEL).appendint(keyCode).append(CommonSeps.getInstance().SPACE).append(this.inputFactory.DEVICE_ID_LABEL).appendint(deviceId).toString(), this, this.gameInputStrings.KEY_RELEASED);
                var gameKey:GameKey = GameKeyFactory.getInstance().KEY_NUM0;
                var gameKeyEventSourceInterface:GameKeyEventSourceInterface = (canvas as GameKeyEventSourceInterface);
                var gameKeyEvent:GameKeyEvent = this.gameKeyEventFactory.getInstanceForInput(gameKeyEventSourceInterface, gameKey);
                this.upGameKeyEventHandler.fireEvent(gameKeyEvent);
                this.upGameKeyEventHandler.getInstanceForDevice(deviceId).fireEvent(gameKeyEvent);
            }
        } catch (e:*) {
            this.logUtil.put(this.commonStrings.EXCEPTION, this, this.gameInputStrings.ADD_KEY_EVENT, e);
        }
    }
    }
}

