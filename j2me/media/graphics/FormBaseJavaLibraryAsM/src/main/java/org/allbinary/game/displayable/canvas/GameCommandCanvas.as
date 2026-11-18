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
    import org.allbinary.canvas.Processor;
    import org.allbinary.game.commands.GameCommandsFactory;
    import org.allbinary.game.configuration.feature.Features;
    import org.allbinary.game.configuration.feature.InputFeatureFactory;
    import org.allbinary.game.displayable.RepaintBehavior;
    import org.allbinary.game.input.GameInputStrings;
    import org.allbinary.game.input.GameKey;
    import org.allbinary.game.input.GameKeyFactory;
    import org.allbinary.game.input.PlatformInputMappingFactory;
    import org.allbinary.game.input.event.DownGameKeyEventHandler;
    import org.allbinary.game.input.event.GameKeyEvent;
    import org.allbinary.game.input.event.GameKeyEventFactory;
    import org.allbinary.game.input.event.GameKeyEventHandler;
    import org.allbinary.game.input.event.UpGameKeyEventHandler;
    import org.allbinary.game.input.mapping.InputToGameKeyMapping;
    import org.allbinary.graphics.PointFactory;
    import org.allbinary.graphics.Rectangle;
    import org.allbinary.graphics.color.BasicColor;
    import org.allbinary.graphics.displayable.CanvasStrings;
    import org.allbinary.graphics.displayable.DisplayInfoSingleton;
    import org.allbinary.graphics.displayable.MyCanvas;
    import org.allbinary.graphics.displayable.event.DisplayChangeEvent;
    import org.allbinary.graphics.displayable.event.DisplayChangeEventHandler;
    import org.allbinary.graphics.displayable.event.DisplayChangeEventListener;
    import org.allbinary.graphics.displayable.screen.ScreenRepaintProcessorFactory;
    import org.allbinary.graphics.font.MyFontProcessor;
    import org.allbinary.graphics.font.UpdateMyFontInterface;
    import org.allbinary.graphics.font.UpdateMyFontProcessor;
    import org.allbinary.graphics.form.CommandCurrentSelectionFormFactory;
    import org.allbinary.graphics.form.FormPaintable;
    import org.allbinary.graphics.form.FormTypeFactory;
    import org.allbinary.graphics.form.PaintableForm;
    import org.allbinary.graphics.form.ScrollSelectionForm;
    import org.allbinary.graphics.form.ScrollSelectionFormNoneFactory;
    import org.allbinary.graphics.form.item.CommandTextItemArrayFactory;
    import org.allbinary.graphics.form.item.ABCustomItem;
    import org.allbinary.graphics.form.item.validation.AllCommandsVisitor;
    import org.allbinary.graphics.paint.NullPaintable;
    import org.allbinary.graphics.paint.Paintable;
    import org.allbinary.input.motion.gesture.observer.BasicMotionGesturesHandler;
    import org.allbinary.logic.communication.log.ForcedLogUtil;
    import org.allbinary.logic.string.StringMaker;
    import org.allbinary.logic.string.StringUtil;
    import org.allbinary.logic.util.event.AllBinaryEventObject;
    import org.allbinary.logic.util.event.EventStrings;
    import org.allbinary.string.CommonSeps;
    import org.allbinary.util.BasicArrayListD;

    public class GameCommandCanvas extends MyCanvas implements MenuListener, DisplayChangeEventListener, UpdateMyFontInterface {
    private static const id:int = 0;
        private var repaintProcessor:Processor = null;
        public var gameInputStrings:GameInputStrings = null;
        public var foregroundBasicColor:BasicColor = null;
        public var backgroundBasicColor:BasicColor = null;
        public var inputToGameKeyMapping:InputToGameKeyMapping = null;
        public var gameKeyFactory:GameKeyFactory = null;
        private var gameKeyEventFactory:GameKeyEventFactory = null;
        private var downGameKeyEventHandler:DownGameKeyEventHandler = null;
        private var upGameKeyEventHandler:UpGameKeyEventHandler = null;
        public var repaintBehavior:RepaintBehavior = null;
        public var updateMyFontProcessor:MyFontProcessor = null;
        public var myFontProcessor:MyFontProcessor = null;
        public var foregroundColor:int = 0;
        public var backgroundColor:int = 0;
        private var menuInputProcessor:BasicMenuInputProcessor = null;
        private var menuPaintable:Paintable = null;
        private var menuForm:PaintableForm = null;
        private var isSingleKeyRepeatableProcessing:Boolean = false;
        public var fontHeight:int = 0;

        // Java field initializers run after the base constructor
        private function initFieldsGameCommandCanvas():void {
    this.repaintProcessor = ScreenRepaintProcessorFactory.getInstance().create(this);
    this.gameInputStrings = GameInputStrings.getInstance();
    
    
    this.inputToGameKeyMapping = PlatformInputMappingFactory.getInstance().getPersistentInputMappingInstance().getInputMapping();
    this.gameKeyFactory = GameKeyFactory.getInstance();
    this.gameKeyEventFactory = GameKeyEventFactory.getInstance();
    this.downGameKeyEventHandler = DownGameKeyEventHandler.getInstance();
    this.upGameKeyEventHandler = UpGameKeyEventHandler.getInstance();
    
    this.updateMyFontProcessor = new UpdateMyFontProcessor(this);
    this.myFontProcessor = this.updateMyFontProcessor;
    
    
    this.menuInputProcessor = NoMenuInputProcessor.getInstance();
    this.menuPaintable = NullPaintable.getInstance();
    this.menuForm = PaintableForm.getNullPaintableForm();
    this.isSingleKeyRepeatableProcessing = Features.getInstance().isFeature(InputFeatureFactory.getInstance().SINGLE_KEY_REPEAT_PRESS);
    this.fontHeight = 0;
        }
    

    public function GameCommandCanvas(cmdListener:CommandListener, name:String, backgroundBasicColor:BasicColor, foregroundBasicColor:BasicColor) {
        super(name, CanvasStrings.getInstance().EMPTY_CHILD_NAME_LIST);
        this.initFieldsGameCommandCanvas();
        this.repaintBehavior = RepaintBehavior.getInstance();
        this.foregroundBasicColor = foregroundBasicColor;
        this.backgroundBasicColor = backgroundBasicColor;
        this.foregroundColor = this.foregroundBasicColor.intValue();
        this.backgroundColor = this.backgroundBasicColor.intValue();
        this.initCommands(cmdListener);
        if (cmdListener != NullCommandListener.NULL_COMMAND_LISTENER) {
            try {
                this.initMenu();
                this.repaintProcessor.process();
            } catch (e:*) {
                throw new JException("RuntimeException", "");
            }
        }
    }
    

    override public function updateMeasurement(graphics:Graphics):void {
        try {
            var font:Font = graphics.getFont();
            this.logUtil.putF(new StringMaker().append(this.commonStrings.START).append(this.canvasStrings.FD_WIDTH).appendint(MyFontProcessor.defaultCharWidth(font)).append(this.canvasStrings.FD_HEIGHT).appendint(font.getHeight()).toString(), this, this.canvasStrings.UPDATE_MEASUREMENT);
            this.fontHeight = font.getHeight();
            var rectangle:Rectangle = this.createRectangle(this.menuForm.size());
            this.menuForm.init(rectangle, FormTypeFactory.getInstance().VERTICAL_CENTER_FORM);
            this.update();
        } catch (e:*) {
            this.logUtil.put(this.commonStrings.EXCEPTION, this, this.canvasStrings.ON_DISPLAY_CHANGE_EVENT, e);
        }
        this.myFontProcessor = MyFontProcessor.getInstance();
    }
    

    override public function onEvent(eventObject:AllBinaryEventObject):void {
        ForcedLogUtil.log(EventStrings.getInstance().PERFORMANCE_MESSAGE, this);
    }
    

    override public function onDisplayChangeEvent(displayChangeEvent:DisplayChangeEvent):void {
        this.logUtil.putF(new StringMaker().append(this.commonStrings.START).append(DisplayInfoSingleton.getInstance().toString()).toString(), this, this.canvasStrings.ON_DISPLAY_CHANGE_EVENT);
        this.myFontProcessor = this.updateMyFontProcessor;
    }
    

    public function initCommands(cmdListener:CommandListener):void {
        this.removeAllCommands();
        this.addCommand(GameCommandsFactory.getInstance().CLOSE_AND_SHOW_GAME_CANVAS);
        this.setCommandListener(cmdListener);
    }
    

    public function initMenu():void {
        var form:ScrollSelectionForm = this.createForm();
        this.menuForm = form;
        if (form != ScrollSelectionFormNoneFactory.getInstance()) {
            this.setMenuInputProcessor(new ImmediateCommandFormInputProcessor(new BasicArrayListD(), -1, this, form));
            this.menuPaintable = new FormPaintable(form);
        }
        this.repaintBehavior.onChangeRepaint(this);
    }
    

    public function createForm():ScrollSelectionForm {
        var items:Vector.<ABCustomItem> = new CommandTextItemArrayFactory(new AllCommandsVisitor()).getInstance3(this.getCommandStack(), this.backgroundBasicColor, this.foregroundBasicColor);
        var rectangle:Rectangle = this.createRectangle(items.length);
        return CommandCurrentSelectionFormFactory.getInstance8(StringUtil.getInstance().EMPTY_STRING, items, rectangle, FormTypeFactory.getInstance().VERTICAL_CENTER_FORM, 15, false, this.backgroundBasicColor, this.foregroundBasicColor);
    }
    

    public function createRectangle(size:int):Rectangle {
        var height:int = int(size * this.fontHeight);
        var startY:int = int((int(int(this.displayInfo.getLastHeight() * 2) / 3)) - height);
        var pointFactory:PointFactory = PointFactory.getInstance();
        var rectangle:Rectangle = new Rectangle(pointFactory.createXY(30, startY), int(this.displayInfo.getLastWidth() - 30), startY);
        return rectangle;
    }
    

    override public function open():void {
        this.logUtil.putF(this.commonStrings.START, this, "open");
        BasicMotionGesturesHandler.getInstance().addListenerInterface(this.getMenuInputProcessor());
        GameKeyEventHandler.getInstance().addListener(this.getMenuInputProcessor());
        DisplayChangeEventHandler.getInstance().addListenerInterface(this);
    }
    

    override public function close():void {
        this.logUtil.putF(this.commonStrings.START, this, this.commonStrings.CLOSE);
        BasicMotionGesturesHandler.getInstance().removeListener(this.getMenuInputProcessor());
        GameKeyEventHandler.getInstance().removeListener(this.getMenuInputProcessor());
        DisplayChangeEventHandler.getInstance().removeListener(this);
    }
    

    public function update():void {
        this.repaintProcessor.process();
    }
    

    override public function getSourceId():int {
        return GameCommandCanvas.id;
    }
    

    override public function keyPressed(keyCode:int):void {
        this.keyPressedByDevice(keyCode, 0);
    }
    

    override public function keyReleased(keyCode:int):void {
        this.keyReleasedByDevice(keyCode, 0);
    }
    

    override public function keyRepeated(keyCode:int):void {
        this.keyRepeatedByDevice(keyCode, 0);
    }
    

    override public function keyPressedByDevice(keyCode:int, deviceId:int):void {
        this.logUtil.putF(new StringMaker().append(CommonSeps.getInstance().SPACE).appendint(keyCode).toString(), this, this.gameInputStrings.KEY_PRESSED);
        this.addGameKeyEvent(keyCode, 0, false);
    }
    

    override public function keyReleasedByDevice(keyCode:int, deviceId:int):void {
        this.removeGameKeyEvent(keyCode, deviceId, false);
    }
    

    override public function keyRepeatedByDevice(keyCode:int, deviceId:int):void {
        if (this.isSingleKeyRepeatableProcessing) {
            this.addGameKeyEvent(keyCode, deviceId, true);
        }
    }
    

    private function addGameKeyEvent(keyCode:int, deviceId:int, repeated:Boolean):void {
        try {
            var gameKey:GameKey = this.inputToGameKeyMapping.getInstanceForCanvas(this, keyCode);
            if (gameKey != this.gameKeyFactory.NONE) {
                var gameKeyEvent:GameKeyEvent = this.gameKeyEventFactory.getInstanceForInput(this, gameKey);
                this.downGameKeyEventHandler.fireEvent(gameKeyEvent);
                this.downGameKeyEventHandler.getInstanceForDevice(deviceId).fireEvent(gameKeyEvent);
            } else {
                this.logUtil.putF(new StringMaker().append(this.gameInputStrings.NO_KEY).appendint(keyCode).toString(), this, this.gameInputStrings.ADD_KEY_EVENT);
            }
        } catch (e:*) {
            this.logUtil.put("Key Event Error", this, this.gameInputStrings.ADD_KEY_EVENT, e);
        }
    }
    

    private function removeGameKeyEvent(keyCode:int, deviceId:int, repeated:Boolean):void {
        try {
            var gameKey:GameKey = this.inputToGameKeyMapping.getInstanceForCanvas(this, keyCode);
            if (gameKey != this.gameKeyFactory.NONE) {
                var gameKeyEvent:GameKeyEvent = this.gameKeyEventFactory.getInstanceForInput(this, gameKey);
                this.upGameKeyEventHandler.fireEvent(gameKeyEvent);
                this.upGameKeyEventHandler.getInstanceForDevice(deviceId).fireEvent(gameKeyEvent);
            } else {
                this.logUtil.putF(new StringMaker().append(this.gameInputStrings.NO_KEY).appendint(keyCode).toString(), this, this.gameInputStrings.REMOVE_KEY_EVENT);
            }
        } catch (e:*) {
            this.logUtil.put("Key Event Error", this, this.gameInputStrings.REMOVE_KEY_EVENT, e);
        }
    }
    

    override public function paint(graphics:Graphics):void {
        this.myFontProcessor.process(graphics);
        this.menuPaintable.paint(graphics);
        this.repaintBehavior.repaint(this);
    }
    

    private function setMenuInputProcessor(menuInputProcessor:BasicMenuInputProcessor):void {
        this.menuInputProcessor = menuInputProcessor;
    }
    

    public function getMenuInputProcessor():BasicMenuInputProcessor {
        return this.menuInputProcessor;
    }
    }
}

