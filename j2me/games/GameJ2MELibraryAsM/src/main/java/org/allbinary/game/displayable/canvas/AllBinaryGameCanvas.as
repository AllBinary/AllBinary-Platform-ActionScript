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
    import javax.microedition.lcdui.ChoiceGroup;
    import javax.microedition.lcdui.CommandListener;
    import javax.microedition.lcdui.Font;
    import javax.microedition.lcdui.Graphics;
    import javax.microedition.lcdui.Item;
    import javax.microedition.lcdui.NullCommandListener;
    import org.allbinary.AndroidUtil;
    import org.allbinary.J2MEUtil;
    import org.allbinary.business.advertisement.GameAdStateFactory;
    import org.allbinary.canvas.BaseGameStatistics;
    import org.allbinary.canvas.GameStatisticsFactory;
    import org.allbinary.canvas.Processor;
    import org.allbinary.canvas.RunnableCanvas;
    import org.allbinary.debug.DebugFactory;
    import org.allbinary.debug.NoDebug;
    import org.allbinary.game.GameAdState;
    import org.allbinary.game.GameInfo;
    import org.allbinary.game.GameStrings;
    import org.allbinary.game.GameTypeFactory;
    import org.allbinary.game.Intermission;
    import org.allbinary.game.IntermissionCompositeInterface;
    import org.allbinary.game.IntermissionEnableListenerInterface;
    import org.allbinary.game.IntermissionInterface;
    import org.allbinary.game.PlayerTypesFactory;
    import org.allbinary.game.commands.GameCommandsFactory;
    import org.allbinary.game.configuration.InGameFeatures;
    import org.allbinary.game.configuration.InGameOptionsForm;
    import org.allbinary.game.configuration.event.ChangedGameFeatureListener;
    import org.allbinary.game.configuration.event.GameInitializedEvent;
    import org.allbinary.game.configuration.event.GameInitializedEventHandler;
    import org.allbinary.game.configuration.feature.Features;
    import org.allbinary.game.configuration.feature.GameFeatureFactory;
    import org.allbinary.game.configuration.feature.GameFeatureUtil;
    import org.allbinary.game.configuration.feature.InputFeatureFactory;
    import org.allbinary.game.configuration.feature.MainFeatureFactory;
    import org.allbinary.game.configuration.feature.SensorFeatureFactory;
    import org.allbinary.game.configuration.feature.TouchFeatureFactory;
    import org.allbinary.game.displayable.GameLevelDisplayChangeEventListenersFactory;
    import org.allbinary.game.init.BasicBuildGameInitializerFactory;
    import org.allbinary.game.init.GameInitializationUtil;
    import org.allbinary.game.input.GameInputStrings;
    import org.allbinary.game.input.InputProcessor;
    import org.allbinary.game.input.NoPlayerGameInput;
    import org.allbinary.game.input.PlayerGameInput;
    import org.allbinary.game.input.event.GameKeyEventHandler;
    import org.allbinary.game.layer.AllBinaryGameLayerManager;
    import org.allbinary.game.layer.SWTUtil;
    import org.allbinary.game.paint.ColorFillBasePaintable;
    import org.allbinary.game.paint.ColorFillPaintableFactory;
    import org.allbinary.game.resource.ResourceLoadingLevel;
    import org.allbinary.game.resource.ResourceLoadingLevelFactory;
    import org.allbinary.game.score.HighScore;
    import org.allbinary.game.score.HighScoresHelperBaseInterface;
    import org.allbinary.game.score.HighScoresFactoryInterface;
    import org.allbinary.game.score.HighScoresPaintable;
    import org.allbinary.game.score.NullHighScoresSingletonFactory;
    import org.allbinary.game.score.displayable.HighScoreTextBox;
    import org.allbinary.game.state.GameState;
    import org.allbinary.game.state.GameStateFactory;
    import org.allbinary.graphics.GraphicsStrings;
    import org.allbinary.graphics.Rectangle;
    import org.allbinary.graphics.ScreenCapture;
    import org.allbinary.graphics.ScreenCaptureFactory;
    import org.allbinary.graphics.canvas.transition.progress.ProgressCanvas;
    import org.allbinary.graphics.canvas.transition.progress.ProgressCanvasFactory;
    import org.allbinary.graphics.color.BasicColorFactory;
    import org.allbinary.graphics.color.BasicColorSetUtil;
    import org.allbinary.graphics.displayable.CanvasStrings;
    import org.allbinary.graphics.displayable.DisplayInfoSingleton;
    import org.allbinary.graphics.displayable.GameTickDisplayInfoSingleton;
    import org.allbinary.graphics.displayable.command.MyCommandsFactory;
    import org.allbinary.graphics.displayable.event.DisplayChangeEvent;
    import org.allbinary.graphics.displayable.event.DisplayChangeEventHandler;
    import org.allbinary.graphics.displayable.event.DisplayChangeEventListener;
    import org.allbinary.graphics.font.MyFontProcessor;
    import org.allbinary.graphics.font.UpdateMyFontInterface;
    import org.allbinary.graphics.font.UpdateMyFontProcessor;
    import org.allbinary.graphics.form.CommandCurrentSelectionFormFactory;
    import org.allbinary.graphics.form.FormPaintable;
    import org.allbinary.graphics.form.FormType;
    import org.allbinary.graphics.form.FormTypeFactory;
    import org.allbinary.graphics.form.ScrollSelectionForm;
    import org.allbinary.graphics.form.ScrollSelectionFormNoneFactory;
    import org.allbinary.graphics.form.item.CommandTextItemArrayFactory;
    import org.allbinary.graphics.form.item.ABCustomItem;
    import org.allbinary.graphics.opengles.CurrentDisplayableFactory;
    import org.allbinary.graphics.opengles.OpenGLFeatureFactory;
    import org.allbinary.graphics.opengles.OpenGLFeatureUtil;
    import org.allbinary.graphics.opengles.OpenGLThreadUtil;
    import org.allbinary.graphics.paint.InitUpdatePaintable;
    import org.allbinary.graphics.paint.NullInitUpdatePaintable;
    import org.allbinary.graphics.paint.NullPaintable;
    import org.allbinary.graphics.paint.Paintable;
    import org.allbinary.graphics.paint.PaintableInterface;
    import org.allbinary.image.opengles.OpenGLImageSpecificFactory;
    import org.allbinary.input.gyro.SensorGameUpdateProcessor;
    import org.allbinary.input.gyro.SingleSensorGameUpdateProcessor;
    import org.allbinary.input.motion.button.BaseTouchInput;
    import org.allbinary.input.motion.button.NoButtonsTouchInputFactory;
    import org.allbinary.input.motion.button.TouchButtonFactory;
    import org.allbinary.input.motion.button.TouchButtonsPaintableFactory;
    import org.allbinary.input.motion.button.TouchScreenFactory;
    import org.allbinary.input.motion.gesture.observer.BasicMotionGesturesHandler;
    import org.allbinary.logic.communication.log.ForcedLogUtil;
    import org.allbinary.logic.communication.log.PreLogUtil;
    import org.allbinary.logic.string.StringMaker;
    import org.allbinary.logic.string.StringUtil;
    import org.allbinary.logic.system.os.OperatingSystemFactory;
    import org.allbinary.logic.system.security.licensing.AbeClientInformationInterface;
    import org.allbinary.logic.util.event.AllBinaryEventObject;
    import org.allbinary.logic.util.event.EventStrings;
    import org.allbinary.media.audio.AllBinaryMediaManager;
    import org.allbinary.media.audio.PlayerQueue;
    import org.allbinary.media.audio.PrimaryPlayerQueueFactory;
    import org.allbinary.media.audio.SecondaryPlayerQueueFactory;
    import org.allbinary.media.audio.SelectSound;
    import org.allbinary.string.CommonSeps;
    import org.allbinary.thread.SecondaryThreadPool;
    import org.allbinary.time.GameTickTimeDelayHelper;
    import org.allbinary.time.GameTickTimeDelayHelperFactory;
    import org.allbinary.time.TimeDelayHelper;
    import org.allbinary.util.ABHashtable;
    import org.allbinary.util.BasicArrayList;
    import org.allbinary.util.BasicArrayListD;
    import org.allbinary.util.BasicArrayListUtil;
    import java.lang.JInteger;
    import java.lang.JThread;

    public class AllBinaryGameCanvas extends RunnableCanvas implements AllBinaryGameCanvasInterface, GameCanvasRunnableInterface, MenuListener, IntermissionCompositeInterface, IntermissionEnableListenerInterface, PopupMenuInterface, DisplayChangeEventListener, UpdateMyFontInterface {
    private static const id:int = 0;
    public static const TYPE:int = 2;
        public var basicColorFactory:BasicColorFactory = null;
        public var basicSetColorUtil:BasicColorSetUtil = null;
        public var touchFeatureFactory:TouchFeatureFactory = null;
        public var openGLFeatureFactory:OpenGLFeatureFactory = null;
        public var touchButtonFactory:TouchButtonFactory = null;
        public var gameAdStateFactory:GameAdStateFactory = null;
        public var gameStrings:GameStrings = null;
        public var gameInputStrings:GameInputStrings = null;
        public var gameStateFactory:GameStateFactory = null;
        private var gameTickTimeDelayHelper:GameTickTimeDelayHelper = null;
        private var gameTickDisplayInfoSingleton:GameTickDisplayInfoSingleton = null;
        public var gameRunnable:GameCanvasRunnable = null;
        public var gamePauseRunnable:GameCanvasPauseRunnable = null;
        public var formUtil:FormUtil = null;
        public var myFormUtil:MyFormUtil = null;
        private var updateMyFontProcessor:MyFontProcessor = null;
        private var myFontProcessor:MyFontProcessor = null;
        public var gameSpecificPaintable:Paintable = null;
        private var sensorGameUpdateProcessor:SensorGameUpdateProcessor = null;
        public var endGameInfo:EndGameInfo = null;
        private var startIntermissionInterface:IntermissionInterface = null;
        private var endLevelIntermissionInterface:IntermissionInterface = null;
        public var gameLayerManager:AllBinaryGameLayerManager = null;
        private var gameState:GameState = null;
        private var gameOver:Boolean = false;
        private var initialized:Boolean = false;
        private var gameStateTimeHelper:TimeDelayHelper = null;
        public var highScoresHelper:HighScoresHelperBaseInterface = null;
        private var highScoreSubmitted:Boolean = false;
        private var realHighScoresPaintable:HighScoresPaintable = null;
        private var highScoresPaintable:Paintable = null;
        private var localPlayerGameInputList:BasicArrayList = null;
        private var isCheating:Boolean = false;
        private var hashtable:ABHashtable = null;
        private var isSingleKeyRepeatableProcessing:Boolean = false;
        private var gameInitializationInterfaceFactoryInterface:BasicBuildGameInitializerFactory = null;
        private var touchButtonsPaintable:Paintable = null;
        public var touchPaintable:Paintable = null;
        private var cheatProcessor:PlayerGameInput = null;
        private var gameInputProcessor:Processor = null;
        private var endGameProcessor:Processor = null;
        private var realEndGameProcessor:Processor = null;
        private var startIntermissionProcessor:Processor = null;
        private var realStartIntermissionProcessor:Processor = null;
        private var endGamePaintable:Paintable = null;
        private var endGameStatePaintable:Paintable = null;
        public var nonBotPaintable:Paintable = null;
        private var intermissionPaintable:Paintable = null;
        private var startIntermissionPaintable:InitUpdatePaintable = null;
        private var mainStateProcessor:Processor = null;
        private var processGameProcessor:Processor = null;
        private var highScoresFactoryInterface:HighScoresFactoryInterface = null;
        private var startLevel:int = 0;
        private var mainMenuInputProcessor:BasicMenuInputProcessor = null;
        private var popupMenuInputProcessor:BasicMenuInputProcessor = null;
        private var menuInputProcessor:BasicMenuInputProcessor = null;
        private var menuForm:ScrollSelectionForm = null;
        private var formPaintable:Paintable = null;
        private var openMenuPaintable:Paintable = null;
        private var menuPaintable:Paintable = null;
        private var currentTouchInputFactory:BaseTouchInput = null;
        public var colorFillPaintable:ColorFillBasePaintable = null;
        private var baseGameStatistics:BaseGameStatistics = null;
        private var primaryPlayerQueue:PlayerQueue = null;
        private var secondaryPlayerQueue:PlayerQueue = null;
        public var BUILD_GAME:String = null;
        public var gameTypeFactory:GameTypeFactory = null;
        public var screenCapture:ScreenCapture = null;
        private var basicMotionGesturesHandler:BasicMotionGesturesHandler = null;
        private var gameKeyEventHandler:GameKeyEventHandler = null;
        private var gameBehavior:DemoGameBehavior = null;
        private var menuBehavior:BaseMenuBehavior = null;
        private var progressPaintable:PaintableInterface = null;
        public var fontHeightP:int = 0;
        private var gameCanvasStartListener:DemoPaintableInterface = null;
        private var rawGameInputProcessor:InputProcessor = null;
        private var rawInputProcessor:InputProcessor = null;
        private var inputProcessor:InputProcessor = null;
        private var YIELD_SLEEP:Number = 0;

        // Java field initializers run after the base constructor
        private function initFieldsAllBinaryGameCanvas():void {
    this.basicColorFactory = BasicColorFactory.getInstance();
    this.basicSetColorUtil = BasicColorSetUtil.getInstance();
    this.touchFeatureFactory = TouchFeatureFactory.getInstance();
    this.openGLFeatureFactory = OpenGLFeatureFactory.getInstance();
    this.touchButtonFactory = TouchButtonFactory.getInstance();
    this.gameAdStateFactory = GameAdStateFactory.getInstance();
    this.gameStrings = GameStrings.getInstance();
    this.gameInputStrings = GameInputStrings.getInstance();
    this.gameStateFactory = GameStateFactory.getInstance();
    this.gameTickTimeDelayHelper = GameTickTimeDelayHelperFactory.getInstance();
    this.gameTickDisplayInfoSingleton = GameTickDisplayInfoSingleton.getInstance();
    this.gameRunnable = new GameCanvasRunnable(this);
    this.gamePauseRunnable = new GameCanvasPauseRunnable(this);
    this.formUtil = FormUtil.getInstance();
    this.myFormUtil = MyFormUtil.getInstance();
    this.updateMyFontProcessor = new UpdateMyFontProcessor(this);
    this.myFontProcessor = this.updateMyFontProcessor;
    this.gameSpecificPaintable = NullPaintable.getInstance();
    this.sensorGameUpdateProcessor = new SingleSensorGameUpdateProcessor();
    this.endGameInfo = new EndGameInfo();
    this.startIntermissionInterface = new Intermission();
    this.endLevelIntermissionInterface = new Intermission();
    this.gameLayerManager = AllBinaryGameLayerManager.getNullInstance();
    this.gameState = this.gameStateFactory.NO_GAME_STATE;
    this.gameOver = false;
    this.initialized = false;
    this.gameStateTimeHelper = new TimeDelayHelper(0);
    
    this.highScoreSubmitted = false;
    this.realHighScoresPaintable = new HighScoresPaintable();
    this.highScoresPaintable = NullPaintable.getInstance();
    this.localPlayerGameInputList = new BasicArrayListD();
    this.isCheating = false;
    this.hashtable = this.stdUtil.NULL_TABLE;
    this.isSingleKeyRepeatableProcessing = false;
    this.gameInitializationInterfaceFactoryInterface = BasicBuildGameInitializerFactory.NULL_BASE_BUILD_GMAE_INITIALIZER_FACTORY;
    this.touchButtonsPaintable = NullPaintable.getInstance();
    this.touchPaintable = NullPaintable.getInstance();
    this.cheatProcessor = NoPlayerGameInput.getInstance();
    this.gameInputProcessor = Processor.getInstance();
    this.endGameProcessor = Processor.getInstance();
    this.realEndGameProcessor = Processor.getInstance();
    this.startIntermissionProcessor = Processor.getInstance();
    this.realStartIntermissionProcessor = Processor.getInstance();
    this.endGamePaintable = NullPaintable.getInstance();
    this.endGameStatePaintable = NullPaintable.getInstance();
    this.nonBotPaintable = NullPaintable.getInstance();
    this.intermissionPaintable = NullPaintable.getInstance();
    this.startIntermissionPaintable = NullInitUpdatePaintable.getInstance();
    this.mainStateProcessor = Processor.getInstance();
    this.processGameProcessor = Processor.getInstance();
    
    this.startLevel = 0;
    this.mainMenuInputProcessor = NoMenuInputProcessor.getInstance();
    this.popupMenuInputProcessor = NoMenuInputProcessor.getInstance();
    this.menuInputProcessor = NoMenuInputProcessor.getInstance();
    this.menuForm = ScrollSelectionForm.getNullScrollSelectionForm();
    this.formPaintable = NullPaintable.getInstance();
    this.openMenuPaintable = NullPaintable.getInstance();
    this.menuPaintable = NullPaintable.getInstance();
    this.currentTouchInputFactory = NoButtonsTouchInputFactory.getInstance();
    this.colorFillPaintable = ColorFillPaintableFactory.getInstance().getInstance2(this.basicColorFactory.BLACK, true);
    this.baseGameStatistics = GameStatisticsFactory.getInstance();
    this.primaryPlayerQueue = PrimaryPlayerQueueFactory.getInstance();
    this.secondaryPlayerQueue = SecondaryPlayerQueueFactory.getInstance();
    this.BUILD_GAME = "buildGame";
    this.gameTypeFactory = GameTypeFactory.getInstance();
    this.screenCapture = ScreenCaptureFactory.getInstance();
    this.basicMotionGesturesHandler = BasicMotionGesturesHandler.getInstance();
    this.gameKeyEventHandler = GameKeyEventHandler.getInstance();
    this.gameBehavior = null;
    this.menuBehavior = null;
    this.progressPaintable = ProgressCanvasFactory.getLazyInstance();
    this.fontHeightP = 0;
    this.gameCanvasStartListener = NullDemoPaintable.NULL_DEMO_PAINTABLE;
    this.rawGameInputProcessor = new GameCanvasInputProcessor(this);
    this.rawInputProcessor = new FormInputProcessor(this);
    this.inputProcessor = this.getRawGameInputProcessor();
    this.YIELD_SLEEP = 100;
        }
    

    public function AllBinaryGameCanvas(commandListener:CommandListener, gameLayerManager:AllBinaryGameLayerManager, highScoresFactoryInterface:HighScoresFactoryInterface, gameInitializationInterfaceFactoryInterface:BasicBuildGameInitializerFactory, buffered:Boolean) {
        super(commandListener, CanvasStrings.getInstance().EMPTY_CHILD_NAME_LIST, true);
        this.initFieldsAllBinaryGameCanvas();
        this.highScoresHelper = highScoresFactoryInterface.createHighScoresHelper();
        this.gameInitializationInterfaceFactoryInterface = gameInitializationInterfaceFactoryInterface;
        this.init(gameLayerManager, buffered);
        this.highScoresFactoryInterface = highScoresFactoryInterface;
        if (this.gameLayerManager.getGameInfo().getGameType() == this.gameTypeFactory.BOT || this.gameLayerManager.getGameInfo().getGameType() == this.gameTypeFactory.NONE) {
            this.gameBehavior = DemoGameBehavior.getInstance();
            this.menuBehavior = BaseMenuBehavior.getInstance();
        } else {
            this.gameBehavior = BaseGameBehavior.getInstance();
            this.menuBehavior = this.getInGameMenuBehavior();
        }
        this.initPopupMenu();
        this.initMenu();
        this.initSpecialPaint();
        DisplayChangeEventHandler.getInstance().addListenerInterface(this);
    }
    

    public function updateMeasurement(graphics:Graphics):void {
        try {
            var font:Font = graphics.getFont();
            this.logUtil.putF(new StringMaker().append(this.commonStrings.START).append(this.canvasStrings.FD_WIDTH).appendint(MyFontProcessor.defaultCharWidth(font)).append(this.canvasStrings.FD_HEIGHT).appendint(font.getHeight()).toString(), this, this.canvasStrings.UPDATE_MEASUREMENT);
            this.fontHeightP = font.getHeight();
            this.myFormUtil.updateMeasurement(graphics);
            var popupMenuRectangle:Rectangle = this.myFormUtil.getPopupMenuRectangle();
            var basicPopupMenuPaintable:BasicPopupMenuPaintable = ((this.getOpenMenuPaintable() as BasicPopupMenuPaintable));
            basicPopupMenuPaintable.init(popupMenuRectangle);
            if (this.getPopupMenuInputProcessor() != NoMenuInputProcessor.getInstance()) {
                var popupMenuInputProcessor:PopupMenuInputProcessor = ((this.getPopupMenuInputProcessor() as PopupMenuInputProcessor));
                popupMenuInputProcessor.init(popupMenuRectangle);
            }
            this.myFontProcessor = MyFontProcessor.getInstance();
        } catch (e:*) {
            this.logUtil.put(this.commonStrings.EXCEPTION, this, this.canvasStrings.ON_DISPLAY_CHANGE_EVENT, e);
        }
    }
    

    public function getInGameMenuBehavior():BaseMenuBehavior {
        return InGameMenuBehavior.getInstance();
    }
    

    override public function setCurrentThread():void {
        if (J2MEUtil.isHTML()) {
            super.setCurrentThreadFake();
        } else {
            super.setCurrentThread();
        }
    }
    

    public function onEvent(eventObject:AllBinaryEventObject):void {
        ForcedLogUtil.log(EventStrings.getInstance().PERFORMANCE_MESSAGE, this);
    }
    

    public function onDisplayChangeEvent(displayChangeEvent:DisplayChangeEvent):void {
        try {
            this.logUtil.putF(new StringMaker().append(this.commonStrings.START).append(DisplayInfoSingleton.getInstance().toString()).toString(), this, this.canvasStrings.UPDATE_MEASUREMENT);
            this.myFontProcessor = this.updateMyFontProcessor;
            this.menuBehavior.onDisplayChangeEvent(this, displayChangeEvent);
        } catch (e:*) {
            this.logUtil.put(this.commonStrings.EXCEPTION, this, this.canvasStrings.ON_DISPLAY_CHANGE_EVENT, e);
        }
    }
    

    public function updateMenuFromEvent(displayChangeEvent:DisplayChangeEvent):void {
        var formType:FormType = FormTypeFactory.getInstance().getFormType();
        var rectangle:Rectangle = this.formUtil.createFormRectangle();
        this.menuForm.init(rectangle, formType);
        if (this.currentTouchInputFactory != NoButtonsTouchInputFactory.getInstance()) {
            this.touchButtonFactory.toggle(this.isPaused(), this.currentTouchInputFactory.getList());
        }
        this.myFontProcessor = this.updateMyFontProcessor;
    }
    

    override public function processSleep():void {
        super.processSleep();
        if (AllBinaryMediaManager.update()) {
            if (!this.primaryPlayerQueue.process()) {
                this.secondaryPlayerQueue.process();
            }
        }
        if (this.menuInputProcessor.processInputList() != -1) {
            this.runnableCanvasRefreshHelper.process();
        }
    }
    

    public function initPopupMenu():void {
        if (this.popupMenuInputProcessor == NoMenuInputProcessor.getInstance()) {
            var features:Features = Features.getInstance();
            var popupMenuRectangle:Rectangle = this.myFormUtil.getPopupMenuRectangle();
            if (features.isFeature(this.touchFeatureFactory.TOUCH_ENABLED)) {
                this.setOpenMenuPaintable(new BasicPopupMenuPaintable(popupMenuRectangle, this.gameLayerManager.getBackgroundBasicColor(), this.gameLayerManager.getForegroundBasicColor()));
                this.setPopupMenuInputProcessor(new PopupMenuInputProcessor(new BasicArrayListD(), -1, this, popupMenuRectangle));
            }
        } else {
        }
    }
    

    public function initMenu():void {
        try {
            this.menuBehavior.initMenu(this);
        } catch (e:*) {
            this.logUtil.put(this.commonStrings.EXCEPTION, this, "initMenu", e);
        }
    }
    

    public function initMenu2():void {
        this.closeMenu();
        var formType:FormType = FormTypeFactory.getInstance().getFormType();
        var gameLimitedCommandTextItemArrayFactory:GameLimitedCommandTextItemArrayFactory = GameLimitedCommandTextItemArrayFactory.getInstance();
        var commandTextItemArrayFactory:CommandTextItemArrayFactory = gameLimitedCommandTextItemArrayFactory.getCommandTextItemArrayFactory();
        var items:Vector.<ABCustomItem> = commandTextItemArrayFactory.getInstance3(this.getCommandStack(), this.gameLayerManager.getBackgroundBasicColor(), this.gameLayerManager.getForegroundBasicColor());
        var rectangle:Rectangle = this.formUtil.createFormRectangle();
        this.setMenuForm(CommandCurrentSelectionFormFactory.getInstance8(StringUtil.getInstance().EMPTY_STRING, items, rectangle, formType, 25, false, this.gameLayerManager.getBackgroundBasicColor(), this.gameLayerManager.getForegroundBasicColor()));
        var scrollSelectionForm:ScrollSelectionForm = this.getMenuForm();
        var features:Features = Features.getInstance();
        if (features.isFeature(this.touchFeatureFactory.TOUCH_ENABLED)) {
            this.mainMenuInputProcessor = new PopupCommandFormInputProcessor(new BasicArrayListD(), -1, this, scrollSelectionForm, (this.getPopupMenuInputProcessor() as PopupMenuInputProcessor));
        } else {
        }
        this.setMenuInputProcessor(this.getPopupMenuInputProcessor());
        if (scrollSelectionForm != ScrollSelectionFormNoneFactory.getInstance()) {
            this.setFormPaintable(new FormPaintable(scrollSelectionForm));
        } else {
        }
        this.closeMenu();
    }
    

    public function updateMenu():void {
        try {
            this.menuBehavior.updateMenu(this);
        } catch (e:*) {
            this.logUtil.put(this.commonStrings.EXCEPTION, this, "initMenu", e);
        }
    }
    

    public function updateMenu2():void {
        var scrollSelectionForm:ScrollSelectionForm = this.getMenuForm();
        scrollSelectionForm.deleteAll();
        var gameLimitedCommandTextItemArrayFactory:GameLimitedCommandTextItemArrayFactory = GameLimitedCommandTextItemArrayFactory.getInstance();
        var commandTextItemArrayFactory:CommandTextItemArrayFactory = gameLimitedCommandTextItemArrayFactory.getCommandTextItemArrayFactory();
        var items:Vector.<ABCustomItem> = commandTextItemArrayFactory.getInstance3(this.getCommandStack(), this.gameLayerManager.getBackgroundBasicColor(), this.gameLayerManager.getForegroundBasicColor());
        var size:int = items.length;
        for (var index:int = 0; index < size; index++) {
            scrollSelectionForm.append(items[index]);
        }
        var formType:FormType = FormTypeFactory.getInstance().getFormType();
        var rectangle:Rectangle = this.formUtil.createFormRectangle();
        scrollSelectionForm.init(rectangle, formType);
    }
    

    override public function pause():void {
        this.gameBehavior.pause(this);
        this.closeMenu();
        super.pause();
        this.touchButtonFactory.toggle(this.isPaused(), BasicArrayListUtil.getInstance().getImmutableInstance());
        this.tsUtil.gc();
    }
    

    override public function unPause():void {
        this.logUtil.putF(this.commonStrings.START, this, this.gameStrings.UNPAUSE);
        this.closeMenu();
        this.tsUtil.gc();
        super.unPause();
        this.touchButtonFactory.toggle(this.isPaused(), BasicArrayListUtil.getInstance().getImmutableInstance());
        this.gameBehavior.unPause(this);
    }
    

    override public function isPausable():Boolean {
        if (CurrentDisplayableFactory.getInstance().getUsedRunnable() == NullWaitGameRunnable.getInstance()) {
            return true;
        } else {
            return false;
        }
    }
    

    public function popupMenu():void {
        this.menuBehavior.popupMenu(this);
    }
    

    public function popupMenu2():void {
        this.primaryPlayerQueue.add(SelectSound.getInstance());
        this.setMenuPaintable(this.getFormPaintable());
        this.setMenuInputProcessor(this.mainMenuInputProcessor);
        this.basicMotionGesturesHandler.addListenerInterface(this.mainMenuInputProcessor);
        this.gameKeyEventHandler.addListener(this.mainMenuInputProcessor);
    }
    

    public function toggleMenu():void {
        this.logUtil.putF(this.commonStrings.START, this, this.gameStrings.TOGGLE_MENU);
        if (this.getMenuPaintable() === this.getOpenMenuPaintable()) {
            this.pause();
            this.updateMenu();
            this.popupMenu();
        } else if (this.getMenuPaintable() === this.getFormPaintable()) {
            this.primaryPlayerQueue.add(SelectSound.getInstance());
            this.unPause();
        }
    }
    

    public function closeMenu():void {
        this.menuBehavior.closeMenu(this);
    }
    

    public function closeMenu2():void {
        this.setMenuPaintable(this.getOpenMenuPaintable());
        this.basicMotionGesturesHandler.removeListener(this.mainMenuInputProcessor);
        this.gameKeyEventHandler.removeListener(this.mainMenuInputProcessor);
        this.setMenuInputProcessor(this.getPopupMenuInputProcessor());
    }
    

    public function open():void {
        this.basicMotionGesturesHandler.addListenerInterface(this.menuInputProcessor);
        this.gameKeyEventHandler.addListener(this.menuInputProcessor);
    }
    

    public function close():void {
        this.basicMotionGesturesHandler.removeListener(this.menuInputProcessor);
        this.gameKeyEventHandler.removeListener(this.menuInputProcessor);
        this.primaryPlayerQueue.clear();
        this.secondaryPlayerQueue.clear();
    }
    

    public function processorInit():void {
        this.setMainStateProcessor(Processor.getInstance());
        this.setProcessGameProcessorInit();
    }
    

    public function setProcessGameProcessorInit():void {
        this.setProcessGameProcessor(new GameProcessor(this));
    }
    

    public function initSpecialPaint():void {
        this.menuBehavior.initSpecialPaint(this);
    }
    

    private function init(gameLayerManager:AllBinaryGameLayerManager, buffered:Boolean):void {
        this.gameStateTimeHelper.setStartTimeTNT();
        this.setHighScoreSubmitted(false);
        this.setLayerManager(gameLayerManager);
        if (!buffered) {
            var BUFF_MESSAGE:String = "XXX Not Buffering Causes Concurrency Issues XXX";
            this.logUtil.putF(BUFF_MESSAGE, this, this.commonStrings.CONSTRUCTOR);
        } else {
            throw new JException("Exception", "Buffering is disabled");
        }
        this.setGameInputProcessor(Processor.getInstance());
        var features:Features = Features.getInstance();
        if (features.isFeature(GameFeatureFactory.getInstance().CHEATING)) {
            this.isCheating = true;
            this.cheatProcessor = new CheatGameInputProcessor(this);
            this.gameKeyEventHandler.addListener(this.cheatProcessor);
        } else {
            this.isCheating = false;
            this.cheatProcessor = NoPlayerGameInput.getInstance();
        }
        this.realEndGameProcessor = new EndGameProcessor(this);
        this.setEndGameProcessor(Processor.getInstance());
        this.realStartIntermissionProcessor = new StartIntermissionProcessor(this);
        this.startIntermissionProcessor = Processor.getInstance();
        this.setEndGameStatePaintable(new EndGamePaintable(this));
        this.setEndGamePaintable(NullPaintable.getInstance());
        this.setIntermissionPaintable(NullPaintable.getInstance());
        this.getStartIntermissionInterface().setListener(this);
    }
    

    public function notifyIntermission(enable:Boolean):void {
        if (enable) {
            this.startIntermissionProcessor = this.realStartIntermissionProcessor;
        } else {
            this.startIntermissionProcessor = Processor.getInstance();
        }
        if (enable) {
            this.setIntermissionPaintable(this.getStartIntermissionPaintable());
        } else {
            this.setIntermissionPaintable(NullPaintable.getInstance());
        }
    }
    

    public function mediaInit():void {
        ForcedLogUtil.log(this.commonStrings.NOT_IMPLEMENTED, this);
    }
    

    public function initConfigurable(abeClientInformation:AbeClientInformationInterface):void {
        var progressCanvas:ProgressCanvas = ProgressCanvasFactory.getInstance();
        progressCanvas.addNormalPortion(50, "Setting Configurables");
        GameInitializationUtil.getInstance().initGame(abeClientInformation, this, this.gameInitializationInterfaceFactoryInterface);
        var gameFeatureFactory:GameFeatureFactory = GameFeatureFactory.getInstance();
        var changedGameFeatureListener:ChangedGameFeatureListener = ChangedGameFeatureListener.getInstance();
        if (changedGameFeatureListener.isChangedFeature(gameFeatureFactory.SOUND)) {
            var features:Features = Features.getInstance();
            this.logUtil.putF(new StringMaker().append("Sound Changing To: ").appendboolean(features.isFeature(gameFeatureFactory.SOUND)).toString(), this, "initConfigurable");
            this.mediaInit();
            changedGameFeatureListener.remove(gameFeatureFactory.SOUND);
        }
        var sensorFeatureFactory:SensorFeatureFactory = SensorFeatureFactory.getInstance();
        if (changedGameFeatureListener.isChangedFeature(sensorFeatureFactory.ORIENTATION_SENSORS) || changedGameFeatureListener.isChangedFeature(sensorFeatureFactory.NO_ORIENTATION) || changedGameFeatureListener.isChangedFeature(sensorFeatureFactory.SIMULATED_ORIENTATION_SENSORS)) {
            changedGameFeatureListener.remove(sensorFeatureFactory.NO_ORIENTATION);
            changedGameFeatureListener.remove(sensorFeatureFactory.ORIENTATION_SENSORS);
            changedGameFeatureListener.remove(sensorFeatureFactory.SIMULATED_ORIENTATION_SENSORS);
        }
        var resourceLoadingLevelFactory:ResourceLoadingLevelFactory = ResourceLoadingLevelFactory.getInstance();
        this.loadResourceLoadingLevel(resourceLoadingLevelFactory.LOAD_GAME);
    }
    

    public function initApp(abeClientInformation:AbeClientInformationInterface):void {
        this.initConfigurable(abeClientInformation);
        this.processorInit();
        this.sensorGameUpdateProcessor.process(this.gameLayerManager);
        this.sensorGameUpdateProcessor.sendNotifications(this.gameLayerManager);
        this.initTouch();
    }
    

    public function initTouch():void {
        var gameInitializedEvent:GameInitializedEvent = GameInitializationUtil.getInstance().EVENT;
        var resourceLoadingLevelFactory:ResourceLoadingLevelFactory = ResourceLoadingLevelFactory.getInstance();
        gameInitializedEvent.setResourceLoadingLevel(resourceLoadingLevelFactory.LOAD_TOUCH);
        GameInitializedEventHandler.getInstance().fireEvent(gameInitializedEvent);
        this.touchButtonFactory.defaultList();
        this.updateTouch();
        this.postInitTouch();
    }
    

    public function updateCurrentTouchInputFactory(nextTouchInput:BaseTouchInput):void {
        if (nextTouchInput !== this.currentTouchInputFactory) {
            this.currentTouchInputFactory = nextTouchInput;
            PreLogUtil.put(this.currentTouchInputFactory.toString(), this, this.gameInputStrings.UDPATE_CURRENT_TOUCH_INPUT_FACTORY);
            this.touchButtonFactory.toggle(this.isPaused(), this.currentTouchInputFactory.getList());
        }
    }
    

    public function updateTouch():void {
        this.gameBehavior.updateTouch(this);
    }
    

    public function updateTouch2():void {
        var features:Features = Features.getInstance();
        if (features.isFeature(this.touchFeatureFactory.AUTO_HIDE_SHOW_SCREEN_BUTTONS)) {
            if (int(this.gameLayerManager.getGameInfo().getCurrentLevel() - this.getStartLevel()) == 1) {
                this.setTouchPaintableP(NullPaintable.getInstance());
            }
        }
    }
    

    public function postInitTouch():void {
        this.setTouchButtonsPaintable(TouchButtonsPaintableFactory.getInstance1(this.gameLayerManager.getForegroundBasicColor()));
        this.updateScreenButtonPaintable();
    }
    

    override public function initCommands(cmdListener:CommandListener):void {
        this.removeAllCommands();
        this.addCommands();
        this.setCommandListener(cmdListener);
    }
    

    public function addCommands():void {
        var gameCommandsFactory:GameCommandsFactory = GameCommandsFactory.getInstance();
        var myCommandsFactory:MyCommandsFactory = MyCommandsFactory.getInstance();
        if (DebugFactory.getInstance() != NoDebug.getInstance()) {
            this.addCommand(gameCommandsFactory.START_TRACE);
        }
        this.addCommand(gameCommandsFactory.RESTART_COMMAND);
        this.addCommand(myCommandsFactory.PAUSE_COMMAND);
        this.addCommand(gameCommandsFactory.QUIT_COMMAND);
        var isOverScan:Boolean = OperatingSystemFactory.getInstance().getOperatingSystemInstance().isOverScan();
        if (J2MEUtil.isHTML()) {
        } else if (SWTUtil.isSWT) {
        } else if (!isOverScan) {
            if (TouchScreenFactory.getInstance().isTouch() && new InGameFeatures().isAny()) {
                this.addCommand(InGameOptionsForm.DISPLAY);
            }
            this.addCommand(gameCommandsFactory.SAVE);
            this.addCommand(gameCommandsFactory.DISPLAY_LOAD_FORM);
        }
    }
    

    public function itemStateChanged(item:Item):void {
        try {
            var itemLabel:String = item.getLabel();
            this.logUtil.putF(new StringMaker().append(this.commonLabels.ITEM_LABEL).append(itemLabel).toString(), this, "itemStateChanged");
            if ((item is ChoiceGroup)) {
                var gameFeatureUtil:GameFeatureUtil = GameFeatureUtil.getInstance();
                if (gameFeatureUtil.isExclusive(itemLabel)) {
                    gameFeatureUtil.updateExclusiveForChoiceGroup((item as ChoiceGroup));
                } else {
                    gameFeatureUtil.updateMultiple((item as ChoiceGroup));
                }
            }
            this.sensorGameUpdateProcessor.process(this.gameLayerManager);
            this.updateTouch();
            this.updateScreenButtonPaintable();
            this.sensorGameUpdateProcessor.sendNotifications(this.gameLayerManager);
        } catch (e:*) {
            this.logUtil.put(this.commonStrings.EXCEPTION, this, "itemStateChanged", e);
        }
    }
    

    public function updateScreenButtonPaintable():void {
        this.gameBehavior.updateScreenButtonPaintable(this);
    }
    

    public function updateScreenButtonPaintable2():void {
        var features:Features = Features.getInstance();
        if (features.isFeature(this.touchFeatureFactory.AUTO_HIDE_SHOW_SCREEN_BUTTONS)) {
            this.setTouchPaintableP(this.getTouchButtonsPaintable());
            this.setStartLevel(this.gameLayerManager.getGameInfo().getCurrentLevel());
        } else if (features.isFeature(this.touchFeatureFactory.SHOW_SCREEN_BUTTONS)) {
            this.setTouchPaintableP(this.getTouchButtonsPaintable());
        } else if (features.isFeature(this.touchFeatureFactory.HIDE_SCREEN_BUTTONS)) {
            this.setTouchPaintableP(NullPaintable.getInstance());
        } else {
            this.setTouchPaintableP(NullPaintable.getInstance());
        }
    }
    

    public function getLayerManager():AllBinaryGameLayerManager {
        return this.gameLayerManager;
    }
    

    public function setLayerManager(layerManager:AllBinaryGameLayerManager):void {
        this.gameLayerManager = layerManager;
    }
    

    public function isGameOver():Boolean {
        return this.gameOver;
    }
    

    public function setGameOver(gameOver:Boolean):void {
        this.gameOver = gameOver;
    }
    

    public function processGameOver():void {
        PreLogUtil.put(this.commonStrings.START, this, this.gameStrings.SET_GAME_OVER);
        this.setGameOver(true);
        this.removePauseCommand();
        this.setGameState(this.gameStateFactory.SHOW_END_RESULT_GAME_STATE);
        this.setEndGamePaintable(this.getEndGameStatePaintable());
    }
    

    public function isHighScoreSubmitted():Boolean {
        return this.highScoreSubmitted;
    }
    

    public function setHighScoreSubmitted(highScoreSubmitted:Boolean):void {
        this.highScoreSubmitted = highScoreSubmitted;
        if (highScoreSubmitted) {
            this.highScoresHelper.setSelectedHighScores(NullHighScoresSingletonFactory.getInstance());
        }
        this.logUtil.putF(new StringMaker().append("isHighScoreSubmitted: ").appendboolean(highScoreSubmitted).toString(), this, "setHighScoreSubmitted");
    }
    

    public function getGameState():GameState {
        return this.gameState;
    }
    

    public function setGameState(gameState:GameState):void {
        this.logUtil.putF(new StringMaker().append(this.gameStrings.GAME_STATE).append(this.stringUtil.toString1(gameState)).toString(), this, this.gameStrings.SET_GAME_STATE);
        this.gameState = gameState;
        this.gameStateTimeHelper.setStartTimeTNT();
        this.updateEndGameProcessor();
        this.updateGameKeyEventProcessor();
        this.gameBehavior.setGameState(this);
    }
    

    public function updateGameState():void {
        var gameAdState:GameAdState = this.gameAdStateFactory.getCurrentInstance();
        gameAdState.processAdState(this.gameState, this.gameLayerManager.getGameInfo().getGameType());
        if (this.gameState != this.gameStateFactory.PLAYING_GAME_STATE) {
            gameAdState.processPageAdState();
        }
    }
    

    private function updateGameKeyEventProcessor():void {
        if (this.getGameState() != this.gameStateFactory.PLAYING_GAME_STATE || this.isCheating) {
        } else {
        }
    }
    

    public function removeAllGameKeyInputListenersOnBuild():void {
        this.removeAllGameKeyInputListeners();
    }
    

    public function removeAllGameKeyInputListeners():void {
        this.gameBehavior.removeAllGameKeyInputListeners(this);
    }
    

    public function removeAllGameKeyInputListeners2():void {
        this.logUtil.putF("Remove PlayerInput Listeners", this, "removeAllGameKeyInputListeners");
        for (var index:int = int(this.localPlayerGameInputList.size() - 1); index >= 0; index--) {
            var playerGameInput:PlayerGameInput = (this.localPlayerGameInputList.get_(index) as PlayerGameInput);
            this.removeKeyInputListener(playerGameInput);
            playerGameInput.removeNonAIInputGameKeyEvents();
        }
    }
    

    public function removeKeyInputListener(playerGameInput:PlayerGameInput):void {
        this.gameKeyEventHandler.removeListener(playerGameInput);
    }
    

    public function updateEndGameProcessor():void {
        this.gameBehavior.updateEndGameProcessor(this);
    }
    

    public function updateEndGameProcessor2():void {
        if (this.getGameState() == this.gameStateFactory.SHOW_END_RESULT_GAME_STATE || this.getGameState() == this.gameStateFactory.SHOW_HIGH_SCORE_GAME_STATE) {
            this.setEndGameProcessor(this.realEndGameProcessor);
        } else {
            this.setEndGameProcessor(Processor.getInstance());
        }
    }
    

    public function buildGameInit(isPortion:Boolean):void {
    }
    

    public function cleanupGame():void {
        this.logUtil.putF(this.commonStrings.START, this, this.commonStrings.CLEANUP);
        var progressCanvas:ProgressCanvas = ProgressCanvasFactory.getInstance();
        progressCanvas.addNormalPortion(10, "Cleaning Up");
        this.primaryPlayerQueue.clear();
        this.secondaryPlayerQueue.clear();
        GameLevelDisplayChangeEventListenersFactory.getInstance().clear();
    }
    

    public function loadResourceLoadingLevel(resourceLoadingLevel:ResourceLoadingLevel):void {
        var gameInitializedEvent:GameInitializedEvent = GameInitializationUtil.getInstance().EVENT;
        gameInitializedEvent.setResourceLoadingLevel(resourceLoadingLevel);
        GameInitializedEventHandler.getInstance().fireEvent(gameInitializedEvent);
    }
    

    public function loadResources(level:int):void {
        var gameInitializedEvent:GameInitializedEvent = GameInitializationUtil.getInstance().EVENT;
        gameInitializedEvent.setLevel(level);
        GameInitializedEventHandler.getInstance().fireEvent(gameInitializedEvent);
    }
    

    public function updateColor():void {
    }
    

    public function buildGame(portion:int):void {
        this.screenCapture.endRecording();
        this.screenCapture.startRecording();
        var progressCanvas:ProgressCanvas = ProgressCanvasFactory.getInstance();
        var features:Features = Features.getInstance();
        progressCanvas.addNormalPortion(portion, "Generic Build");
        this.removeAllGameKeyInputListenersOnBuild();
        this.updateTouch();
        progressCanvas.addNormalPortion(portion, "High Scores");
        this.highScoresFactoryInterface.fetchHighScores(this.gameLayerManager.getGameInfo(), this.highScoresHelper);
        this.setHighScoresPaintable(NullPaintable.getInstance());
        progressCanvas.addNormalPortion(portion, "Finishing.");
        this.getEndGameInfoP().update(this.getLayerManager().getGameInfo(), this);
        this.isSingleKeyRepeatableProcessing = features.isFeature(InputFeatureFactory.getInstance().SINGLE_KEY_REPEAT_PRESS);
        this.setGameOver(false);
        progressCanvas.addNormalPortion(portion, "Finishing..");
        this.updateColor();
        this.getStartIntermissionPaintable().update();
        if (!this.isRunningInAnotherThread()) {
            return;
        }
        progressCanvas.addNormalPortion(portion, "Finishing...");
        if (this.isMainCanvas() || !this.isInitialized()) {
            if (features.isFeature(MainFeatureFactory.getInstance().LOAD_ONDEMAND)) {
                if (this.getCustomCommandListener() != null) {
                    progressCanvas.end();
                }
            } else {
                progressCanvas.end();
            }
            this.setInitialized(true);
        }
        if (this.getCustomCommandListener() == NullCommandListener.NULL_COMMAND_LISTENER) {
            this.logUtil.putF("Show Game Paintable in DemoCanvas Thread", this, this.BUILD_GAME);
            this.gameCanvasStartListener.showGamePaintable();
        } else {
            this.logUtil.putF("No GameCanvasStartListener", this, this.BUILD_GAME);
        }
        this.colorFillPaintable.setBasicColorP(this.gameLayerManager.getBackgroundBasicColor());
        this.gameBehavior.buildGame(this);
    }
    

    public function buildGame2():void {
        PreLogUtil.put(new StringMaker().append(this.gameInputStrings.ENABLE_PLAYER_GAME_INPUTS).appendint(this.localPlayerGameInputList.size()).toString(), this, this.BUILD_GAME);
        var playerGameInput:PlayerGameInput = null;
        for (var index:int = int(this.localPlayerGameInputList.size() - 1); index >= 0; index--) {
            playerGameInput = (this.localPlayerGameInputList.get_(index) as PlayerGameInput);
            PreLogUtil.put(new StringMaker().append(this.gameInputStrings.ENABLE_PLAYER_GAME_INPUT).append(playerGameInput.toString()).toString(), this, this.BUILD_GAME);
            playerGameInput.removeNonAIInputGameKeyEvents();
            this.addKeyInputListener(playerGameInput);
        }
    }
    

    public function addKeyInputListener(playerGameInput:PlayerGameInput):void {
        GameKeyEventHandler.getInstance().addListenerForPlayer(playerGameInput, playerGameInput.getPlayerInputId());
    }
    

    public function setGameCanvasStartListener(gameCanvasStartListener:DemoPaintableInterface):void {
        this.gameCanvasStartListener = gameCanvasStartListener;
    }
    

    public function loadState():void {
        this.logUtil.putF(this.commonStrings.START, this, this.commonStrings.LOAD);
        var hashtable:ABHashtable = this.getLoadStateHashtable();
        if (hashtable != null && hashtable.size() > 0) {
            var levelAsString:String = (hashtable.get_((GameInfo.LEVEL_NAME as Object)) as String);
            var level:int = int(int(parseInt(levelAsString)));
            var gameInfo:GameInfo = this.gameLayerManager.getGameInfo();
            gameInfo.setCurrentLevel(level);
        }
    }
    

    public function getLoadStateHashtable():ABHashtable {
        this.logUtil.putF(new StringMaker().append(this.commonLabels.START_LABEL).append(this.stringUtil.toString1(this.hashtable)).toString(), this, "getLoadStateHashtable");
        return this.hashtable;
    }
    

    public function setLoadStateHashtable(hashtable:ABHashtable):void {
        this.logUtil.putF(new StringMaker().append(this.commonLabels.START_LABEL).append(this.stringUtil.toString1(hashtable)).toString(), this, "setLoadStateHashtable");
        this.hashtable = hashtable;
    }
    

    public function getCurrentStateHashtable():ABHashtable {
        var hashtable:ABHashtable = this.stdUtil.createHashtable();
        var level:int = this.gameLayerManager.getGameInfo().getCurrentLevel();
        hashtable.put(GameInfo.LEVEL_NAME, String(level));
        this.logUtil.putF(new StringMaker().append("End: ").append(this.stringUtil.toString1(hashtable)).toString(), this, "getCurrentStateHashtable");
        return hashtable;
    }
    

    public function paintGameOver(graphics:Graphics):void {
        ForcedLogUtil.log(this.commonStrings.NOT_IMPLEMENTED, this);
    }
    

    override public function draw(...args):void {
        if (args.length == 1) {
            this.draw_jo1(args[0]);
            return;
        }
        super.draw.apply(this, args);
    }

    private function draw_jo1(graphics:Graphics):void {
        this.colorFillPaintable.paint(graphics);
        this.basicSetColorUtil.setBasicColorP(graphics, this.gameLayerManager.getForegroundBasicColor());
        this.gameSpecificPaintable.paint(graphics);
    }
    

    public function clear(...args):void {
        if (args.length == 1) {
            this.clear_jo1(args[0]);
            return;
        }
        throw new JException("IllegalArgumentException", "clear");
    }

    private function clear_jo1(graphics:Graphics):void {
        this.colorFillPaintable.paint(graphics);
    }
    

    override public function paint(...args):void {
        if (args.length == 1) {
            this.paint_jo1(args[0]);
            return;
        }
        super.paint.apply(this, args);
    }

    private function paint_jo1(graphics:Graphics):void {
        this.myFontProcessor.process(graphics);
        this.baseGameStatistics.nextRefresh();
        this.draw(graphics);
        this.menuPaintable.paint(graphics);
        this.progressPaintable.paint(graphics);
    }
    

    public function paintThreed(graphics:Graphics):void {
    }
    

    public function processEndLevelIntermissionGameState():void {
    }
    

    public function nonBotPaint(graphics:Graphics):void {
        this.endGamePaintable.paint(graphics);
        this.intermissionPaintable.paint(graphics);
        this.paintIntermission(graphics);
        this.touchPaintable.paint(graphics);
    }
    

    public function paintIntermission(graphics:Graphics):void {
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
        this.inputProcessor.keyPressedByDevice(keyCode, deviceId);
    }
    

    override public function keyRepeatedByDevice(keyCode:int, deviceId:int):void {
        if (this.isSingleKeyRepeatableProcessing) {
            this.inputProcessor.keyPressedByDevice(keyCode, deviceId);
        }
    }
    

    override public function keyReleasedByDevice(keyCode:int, deviceId:int):void {
        this.inputProcessor.keyReleasedByDevice(this, keyCode, deviceId);
    }
    

    public function handleRawKey(keyCode:int, deviceId:int, repeated:Boolean):void {
    }
    

    public function endProgress(isProgress:Boolean):int {
        var portion:int = 30;
        if (isProgress && this.isMainCanvas()) {
            var myCommandsFactory:MyCommandsFactory = MyCommandsFactory.getInstance();
            var progressCanvas:ProgressCanvas = ProgressCanvasFactory.getInstance();
            progressCanvas.start();
            this.getCustomCommandListener().commandAction(myCommandsFactory.SET_DISPLAYABLE, progressCanvas);
            portion = 4;
        }
        return portion;
    }
    

    public function processPlayingGame():void {
        this.cheatProcessor.update();
        this.sensorGameUpdateProcessor.getInputSensor().update();
        this.gameInputProcessor.process();
        this.gameLayerManager.process();
        this.startIntermissionProcessor.process();
    }
    

    public function threadInit():void {
    }
    

    public function processGame():void {
        super.process();
        if (AllBinaryMediaManager.update()) {
            if (!this.primaryPlayerQueue.process()) {
                this.secondaryPlayerQueue.process();
            }
        }
        this.mainStateProcessor.process();
        this.menuInputProcessor.processInputList();
        this.endGameProcessor.process();
        this.baseGameStatistics.nextFrame();
    }
    

    public function notifyDonePainting():void {
        {
            this.threadObjectUtil.notifyObject(this);
        }
    }
    

    public function shouldWait():void {
        var features:Features = Features.getInstance();
        if (AndroidUtil.isAndroid()) {
        } else if (features.isFeature(this.openGLFeatureFactory.OPENGL_2D)) {
        } else {
            if (features.isDefault(this.openGLFeatureFactory.OPENGL)) {
                var openGLImageSpecificFactory:OpenGLImageSpecificFactory = OpenGLImageSpecificFactory.getInstance();
                while (openGLImageSpecificFactory.updating) {
                    JThread.sleep(this.YIELD_SLEEP);
                }
            }
        }
    }
    

    override public function run():void {
        try {
            this.logUtil.putF(this.commonStrings.START_RUNNABLE, this, this.commonStrings.RUN);
            var progressCanvas:ProgressCanvas = ProgressCanvasFactory.getInstance();
            progressCanvas.addNormalPortion(50, "Game Thread");
            this.setCurrentThread();
            this.setRunning(true);
            if (this.getCustomCommandListener() == NullCommandListener.NULL_COMMAND_LISTENER) {
                JThread.sleep(this.YIELD_SLEEP);
            }
            this.shouldWait();
            this.threadInit();
            if (this.getCustomCommandListener() == NullCommandListener.NULL_COMMAND_LISTENER) {
                JThread.sleep(this.YIELD_SLEEP);
            }
            this.open();
            var gameAdState:GameAdState = this.gameAdStateFactory.getCurrentInstance();
            gameAdState.init();
            gameAdState.setGameIsReady(true);
            this.gameBehavior.run(this);
            this.logUtil.putF(this.commonStrings.END_RUNNABLE, this, this.commonStrings.RUN);
        } catch (e:*) {
            this.logUtil.put(this.commonStrings.EXCEPTION, this, this.commonStrings.RUN, e);
        }
    }
    

    public function run2():void {
        var features:Features = Features.getInstance();
        if (features.isDefault(this.openGLFeatureFactory.OPENGL_AS_GAME_THREAD) || J2MEUtil.isHTML()) {
            if (features.isDefault(this.openGLFeatureFactory.OPENGL_AS_GAME_THREAD)) {
                this.logUtil.putF(this.openGLFeatureFactory.OPENGL_AS_GAME_THREAD.getName(), this, this.commonStrings.RUN);
            }
            if (J2MEUtil.isHTML()) {
                this.logUtil.putF(GraphicsStrings.getInstance().HTML, this, this.commonStrings.RUN);
            }
            var currentDisplayableFactory:CurrentDisplayableFactory = CurrentDisplayableFactory.getInstance();
            currentDisplayableFactory.setRunnable(this.gameRunnable);
            currentDisplayableFactory.setDisplayable(this);
            OpenGLThreadUtil.getInstance().onResume();
        } else if (features.isDefault(this.openGLFeatureFactory.OPENGL_AND_GAME_HAVE_DIFFERENT_THREADS)) {
            this.logUtil.putF(this.openGLFeatureFactory.OPENGL_AND_GAME_HAVE_DIFFERENT_THREADS.getName(), this, this.commonStrings.RUN);
            OpenGLThreadUtil.getInstance().onResume();
            while (this.isRunning()) {
                this.run3();
            }
            this.end();
        } else {
            this.logUtil.putF("this thread", this, this.commonStrings.RUN);
            while (this.isRunning()) {
                this.run3();
            }
            this.end();
        }
    }
    

    public function run3():void {
        this.loopTimeHelper.setStartTime(this.gameTickTimeDelayHelper.setStartTime());
        this.gameTickDisplayInfoSingleton.update();
        this.processGame();
        this.processLoopSleep();
    }
    

    override public function setRunning(running:Boolean):void {
        super.setRunning(running);
        try {
            var features:Features = Features.getInstance();
            if (running) {
            } else {
                if (features.isDefault(this.openGLFeatureFactory.OPENGL) || SWTUtil.isSWT) {
                    if (this.gameLayerManager.getGameInfo().getGameType() != this.gameTypeFactory.BOT) {
                        var currentDisplayableFactory:CurrentDisplayableFactory = CurrentDisplayableFactory.getInstance();
                        currentDisplayableFactory.clearRunnable();
                    }
                    this.end();
                }
            }
        } catch (e:*) {
            this.logUtil.put(this.commonStrings.EXCEPTION, this, this.SET_RUNNING, e);
        }
    }
    

    public function end():void {
        this.screenCapture.endRecording();
        this.baseGameStatistics.add(new StringMaker().append(this.baseGameStatistics.toString()).append(CommonSeps.getInstance().NEW_LINE).toString());
        this.baseGameStatistics.init();
        this.gameKeyEventHandler.removeListener(this.cheatProcessor);
        this.close();
        this.removeAllGameKeyInputListeners();
        this.endGameThread();
    }
    

    public function endGameThread():void {
        DisplayChangeEventHandler.getInstance().removeListener(this);
        GameLevelDisplayChangeEventListenersFactory.getInstance().clear();
        var gameAdState:GameAdState = this.gameAdStateFactory.getCurrentInstance();
        gameAdState.notPlayingAdState();
    }
    

    public function createHighScore(score:Number):HighScore {
        var gameInfo:GameInfo = this.gameLayerManager.getGameInfo();
        return new HighScore(0, "NONE", new GameInfo(gameInfo.getGameType(), gameInfo.getGameMode(), PlayerTypesFactory.getInstance().PLAYER_TYPE_ONE, 0, 0), score);
    }
    

    public function setHighScore(abeClientInformation:AbeClientInformationInterface, name:String, score:Number, autoSubmit:Boolean, isLast:Boolean):void {
        this.gameBehavior.setHighScore(abeClientInformation, this, name, score, autoSubmit, isLast);
    }
    

    public function setHighScore2(abeClientInformation:AbeClientInformationInterface, name:String, score:Number, autoSubmit:Boolean, isLast:Boolean):void {
        var highScore:HighScore = this.createHighScore(score);
        var textBox:HighScoreTextBox = new HighScoreTextBox(this.highScoresFactoryInterface, this.highScoresHelper, abeClientInformation, this.gameLayerManager.getGameInfo(), this.getCustomCommandListener(), name, highScore, this.gameLayerManager.getBackgroundBasicColor(), this.gameLayerManager.getForegroundBasicColor());
        if (isLast) {
            this.getCustomCommandListener().commandAction(GameCommandsFactory.getInstance().SET_MENU_DISPLAYABLE, textBox);
        }
        if (autoSubmit) {
            SecondaryThreadPool.getInstance().runTask(new SaveHighScoreRunnable(isLast, textBox));
        }
    }
    

    public function getGameStateTimeHelper():TimeDelayHelper {
        return this.gameStateTimeHelper;
    }
    

    public function setInitialized(initialized:Boolean):void {
        this.initialized = initialized;
    }
    

    public function isInitialized():Boolean {
        return this.initialized;
    }
    

    public function getSourceId():int {
        return AllBinaryGameCanvas.id;
    }
    

    public function setProgressPaintable(paintable:PaintableInterface):void {
        this.progressPaintable = paintable;
    }
    

    public function getStartIntermissionInterface():IntermissionInterface {
        return this.startIntermissionInterface;
    }
    

    public function getEndLevelIntermissionInterface():IntermissionInterface {
        return this.endLevelIntermissionInterface;
    }
    

    public function setTouchPaintableP(paintable:Paintable):void {
        this.touchPaintable = paintable;
    }
    

    public function getTouchPaintableP():Paintable {
        return this.touchPaintable;
    }
    

    public function setEndGamePaintable(endGamePaintable:Paintable):void {
        this.endGamePaintable = endGamePaintable;
    }
    

    public function getEndGamePaintable():Paintable {
        return this.endGamePaintable;
    }
    

    public function setIntermissionPaintable(intermissionPaintable:Paintable):void {
        this.intermissionPaintable = intermissionPaintable;
    }
    

    public function getIntermissionPaintable():Paintable {
        return this.intermissionPaintable;
    }
    

    public function getEndGameInfoP():EndGameInfo {
        return this.endGameInfo;
    }
    

    public function setHighScoresPaintable(highScoresPaintable:Paintable):void {
        this.highScoresPaintable = highScoresPaintable;
    }
    

    public function getHighScoresPaintable():Paintable {
        return this.highScoresPaintable;
    }
    

    public function getRealHighScoresPaintable():HighScoresPaintable {
        return this.realHighScoresPaintable;
    }
    

    public function clearPlayerGameInputList():void {
        var playerGameInput:PlayerGameInput = null;
        for (var index:int = int(this.localPlayerGameInputList.size() - 1); index >= 0; index--) {
            playerGameInput = (this.localPlayerGameInputList.get_(index) as PlayerGameInput);
            this.gameKeyEventHandler.removeListener(playerGameInput);
        }
        this.localPlayerGameInputList.clear();
    }
    

    public function addPlayerGameInput(playerGameInput:PlayerGameInput):void {
        this.localPlayerGameInputList.add(playerGameInput);
    }
    

    public function setMenuInputProcessor(menuInputProcessor:BasicMenuInputProcessor):void {
        this.menuInputProcessor = menuInputProcessor;
    }
    

    public function getMenuInputProcessor():BasicMenuInputProcessor {
        return this.menuInputProcessor;
    }
    

    public function getMenuForm():ScrollSelectionForm {
        return this.menuForm;
    }
    

    public function setMenuForm(menuForm:ScrollSelectionForm):void {
        this.menuForm = menuForm;
    }
    

    public function getStartLevel():int {
        return this.startLevel;
    }
    

    public function setStartLevel(startLevel:int):void {
        this.startLevel = startLevel;
    }
    

    public function setTouchButtonsPaintable(touchButtonsPaintable:Paintable):void {
        this.touchButtonsPaintable = touchButtonsPaintable;
    }
    

    public function getTouchButtonsPaintable():Paintable {
        return this.touchButtonsPaintable;
    }
    

    public function setGameInputProcessor(gameInputProcessor:Processor):void {
        this.gameInputProcessor = gameInputProcessor;
    }
    

    public function getGameInputProcessor():Processor {
        return this.gameInputProcessor;
    }
    

    public function setEndGameProcessor(endGameProcessor:Processor):void {
        this.endGameProcessor = endGameProcessor;
    }
    

    public function getEndGameProcessor():Processor {
        return this.endGameProcessor;
    }
    

    public function setEndGameStatePaintable(endGameStatePaintable:Paintable):void {
        this.endGameStatePaintable = endGameStatePaintable;
    }
    

    public function getEndGameStatePaintable():Paintable {
        return this.endGameStatePaintable;
    }
    

    public function setNonBotPaintableP(nonBotPaintable:Paintable):void {
        this.nonBotPaintable = nonBotPaintable;
    }
    

    public function getNonBotPaintableP():Paintable {
        return this.nonBotPaintable;
    }
    

    public function setStartIntermissionPaintable(startIntermissionPaintable:InitUpdatePaintable):void {
        this.startIntermissionPaintable = startIntermissionPaintable;
    }
    

    public function getStartIntermissionPaintable():InitUpdatePaintable {
        return this.startIntermissionPaintable;
    }
    

    public function setMainStateProcessor(mainStateProcessor:Processor):void {
        this.mainStateProcessor = mainStateProcessor;
    }
    

    public function getMainStateProcessor():Processor {
        return this.mainStateProcessor;
    }
    

    public function setProcessGameProcessor(processGameProcessor:Processor):void {
        this.processGameProcessor = processGameProcessor;
    }
    

    public function getProcessGameProcessor():Processor {
        return this.processGameProcessor;
    }
    

    public function setOpenMenuPaintable(openMenuPaintable:Paintable):void {
        this.openMenuPaintable = openMenuPaintable;
    }
    

    public function getOpenMenuPaintable():Paintable {
        return this.openMenuPaintable;
    }
    

    public function setPopupMenuInputProcessor(popupMenuInputProcessor:BasicMenuInputProcessor):void {
        this.popupMenuInputProcessor = popupMenuInputProcessor;
    }
    

    public function getPopupMenuInputProcessor():BasicMenuInputProcessor {
        return this.popupMenuInputProcessor;
    }
    

    public function getSensorGameUpdateProcessor():SensorGameUpdateProcessor {
        return this.sensorGameUpdateProcessor;
    }
    

    public function getRawGameInputProcessor():InputProcessor {
        return this.rawGameInputProcessor;
    }
    

    public function getRawInputProcessor():InputProcessor {
        return this.rawInputProcessor;
    }
    

    public function setInputProcessor(inputProcessor:InputProcessor):void {
        this.inputProcessor = inputProcessor;
    }
    

    public function getInputProcessor():InputProcessor {
        return this.inputProcessor;
    }
    

    public function setMenuPaintable(menuPaintable:Paintable):void {
        this.menuPaintable = menuPaintable;
    }
    

    public function getMenuPaintable():Paintable {
        return this.menuPaintable;
    }
    

    private function setFormPaintable(formPaintable:Paintable):void {
        this.formPaintable = formPaintable;
    }
    

    public function getFormPaintable():Paintable {
        return this.formPaintable;
    }
    

    public function setGameSpecificPaintableP(gameSpecificPaintable:Paintable):void {
        this.gameSpecificPaintable = gameSpecificPaintable;
    }
    

    public function getGameSpecificPaintableP():Paintable {
        return this.gameSpecificPaintable;
    }
    

    override public function isSingleThread():Boolean {
        return OpenGLFeatureUtil.getInstance().isAnyThreed() || SWTUtil.isSWT;
    }
    

    public function isRunningInAnotherThread():Boolean {
        var features:Features = Features.getInstance();
        var openGLFeatureFactory:OpenGLFeatureFactory = OpenGLFeatureFactory.getInstance();
        if (features.isDefault(openGLFeatureFactory.OPENGL_AS_GAME_THREAD)) {
            return true;
        } else {
            return this.isRunning();
        }
    }
    

    override public function getType():int {
        return AllBinaryGameCanvas.TYPE;
    }
    

    override public function getTitle():String {
        return super.getTitle();
    }
    

    override public function isPaused():Boolean {
        return super.isPaused();
    }
    }
}

