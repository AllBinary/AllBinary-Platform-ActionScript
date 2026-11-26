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
    import org.allbinary.game.input.GameKey;
    import org.allbinary.game.input.GameKeyEventSourceInterface;
    import org.allbinary.game.input.GameKeyFactory;
    import org.allbinary.game.input.InputProcessor;
    import org.allbinary.game.input.PlatformInputMappingFactory;
    import org.allbinary.game.input.event.DownGameKeyEventHandler;
    import org.allbinary.game.input.event.DownKeyEventHandler;
    import org.allbinary.game.input.event.GameKeyEvent;
    import org.allbinary.game.input.event.GameKeyEventFactory;
    import org.allbinary.game.input.event.UpGameKeyEventHandler;
    import org.allbinary.game.input.mapping.InputToGameKeyMapping;
    import org.allbinary.logic.communication.log.LogUtil;
    import org.allbinary.logic.math.SmallIntegerSingletonFactory;
    import org.allbinary.logic.string.StringMaker;
    import java.lang.JInteger;

    public class GameCanvasInputProcessor extends InputProcessor {
        public var logUtil:LogUtil = null;
        private var allBinaryGameCanvas:AllBinaryGameCanvas = null;
        private var downGameKeyEventHandler:DownGameKeyEventHandler = null;
        private var upGameKeyEventHandler:UpGameKeyEventHandler = null;
        private var downKeyEventHandler:DownKeyEventHandler = null;
        private var smallIntegerSingletonFactory:SmallIntegerSingletonFactory = null;
        private var inputToGameKeyMapping:InputToGameKeyMapping = null;
        private var NONE:GameKey = null;
        private var gameKeyEventFactory:GameKeyEventFactory = null;

        // Java field initializers run after the base constructor
        private function initFieldsGameCanvasInputProcessor():void {
    this.logUtil = LogUtil.getInstance();
    
    this.downGameKeyEventHandler = DownGameKeyEventHandler.getInstance();
    this.upGameKeyEventHandler = UpGameKeyEventHandler.getInstance();
    this.downKeyEventHandler = DownKeyEventHandler.getInstance();
    this.smallIntegerSingletonFactory = SmallIntegerSingletonFactory.getInstance();
    this.inputToGameKeyMapping = PlatformInputMappingFactory.getInstance().getPersistentInputMappingInstance().getInputMapping();
    this.NONE = GameKeyFactory.getInstance().NONE;
    this.gameKeyEventFactory = GameKeyEventFactory.getInstance();
        }
    

    public function GameCanvasInputProcessor(allBinaryGameCanvas:AllBinaryGameCanvas) {
        super();
        this.initFieldsGameCanvasInputProcessor();
        this.allBinaryGameCanvas = allBinaryGameCanvas;
        this.inputToGameKeyMapping.init(this.allBinaryGameCanvas);
    }
    

    override public function keyPressedByDevice(keyCode:int, deviceId:int):void {
        try {
            var gameKey:GameKey = this.inputToGameKeyMapping.getInstanceForCanvas(this.allBinaryGameCanvas, keyCode);
            if (gameKey !== this.NONE) {
                var gameKeyEvent:GameKeyEvent = this.gameKeyEventFactory.getInstanceForInput(this.allBinaryGameCanvas, gameKey);
                this.downGameKeyEventHandler.fireEvent(gameKeyEvent);
                this.downGameKeyEventHandler.getInstanceForDevice(deviceId).fireEvent(gameKeyEvent);
            } else {
                this.logUtil.putF(new StringMaker().append(this.gameInputStrings.NO_KEY).appendint(keyCode).toString(), this, this.gameInputStrings.ADD_KEY_EVENT);
            }
            var keyCodeAsInteger:* = this.smallIntegerSingletonFactory.getAtNoThrow(keyCode);
            this.downKeyEventHandler.fireEventI(keyCodeAsInteger);
            this.downKeyEventHandler.getInstanceForDevice(deviceId).fireEventI(keyCodeAsInteger);
        } catch (e:*) {
            this.logUtil.put("Key Event Error", this, this.gameInputStrings.ADD_KEY_EVENT, e);
        }
    }
    

    override public function keyReleasedByDevice(canvas:Canvas, keyCode:int, deviceId:int):void {
        this.removeGameKeyEvent(canvas, keyCode, deviceId, false);
    }
    

    private function removeGameKeyEvent(canvas:Canvas, keyCode:int, deviceId:int, repeated:Boolean):void {
        try {
            var gameKey:GameKey = this.inputToGameKeyMapping.getInstanceForCanvas(canvas, keyCode);
            if (gameKey !== this.NONE) {
                var gameKeyEventSourceInterface:GameKeyEventSourceInterface = (canvas as GameKeyEventSourceInterface);
                var gameKeyEvent:GameKeyEvent = this.gameKeyEventFactory.getInstanceForInput(gameKeyEventSourceInterface, gameKey);
                this.upGameKeyEventHandler.fireEvent(gameKeyEvent);
                this.upGameKeyEventHandler.getInstanceForDevice(deviceId).fireEvent(gameKeyEvent);
            } else {
                this.logUtil.putF(new StringMaker().append(this.gameInputStrings.NO_KEY).appendint(keyCode).toString(), this, this.gameInputStrings.REMOVE_KEY_EVENT);
            }
        } catch (e:*) {
            this.logUtil.put("Key Event Error", this, this.gameInputStrings.REMOVE_KEY_EVENT, e);
        }
    }
    }
}

