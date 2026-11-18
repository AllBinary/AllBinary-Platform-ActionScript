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
    import org.allbinary.J2MEUtil;
    import org.allbinary.animation.Animation;
    import org.allbinary.animation.IndexedAnimationBehavior;
    import org.allbinary.animation.special.SpecialAnimation;
    import org.allbinary.business.advertisement.GameAdStateFactory;
    import org.allbinary.canvas.BaseGameStatistics;
    import org.allbinary.canvas.CustomGameMenuUtil;
    import org.allbinary.canvas.FullScreenUtil;
    import org.allbinary.canvas.GameStatisticsFactory;
    import org.allbinary.canvas.RunnableCanvas;
    import org.allbinary.game.GameAdState;
    import org.allbinary.game.commands.GameCommandsFactory;
    import org.allbinary.game.configuration.event.ChangedGameFeatureListener;
    import org.allbinary.game.configuration.feature.Features;
    import org.allbinary.game.configuration.feature.GameFeatureFactory;
    import org.allbinary.game.configuration.feature.InputFeatureFactory;
    import org.allbinary.game.configuration.feature.MainFeatureFactory;
    import org.allbinary.game.init.BasicBuildGameInitializerFactory;
    import org.allbinary.game.init.GameInitializationUtil;
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
    import org.allbinary.game.layer.AllBinaryGameLayerManager;
    import org.allbinary.game.layer.SWTUtil;
    import org.allbinary.game.midlet.DemoGameMidlet;
    import org.allbinary.game.score.HighScoreCommands;
    import org.allbinary.game.score.HighScores;
    import org.allbinary.game.score.HighScoresFactoryInterface;
    import org.allbinary.game.score.HighScoresHelper;
    import org.allbinary.game.score.HighScoresPaintable;
    import org.allbinary.game.score.NullHighScoresSingletonFactory;
    import org.allbinary.game.state.GameState;
    import org.allbinary.game.state.GameStateFactory;
    import org.allbinary.graphics.Rectangle;
    import org.allbinary.graphics.ResizableListenerHandler;
    import org.allbinary.graphics.canvas.transition.progress.ProgressCanvas;
    import org.allbinary.graphics.canvas.transition.progress.ProgressCanvasFactory;
    import org.allbinary.graphics.color.BasicColorFactory;
    import org.allbinary.graphics.displayable.command.MyCommandsFactory;
    import org.allbinary.graphics.displayable.event.DisplayChangeEvent;
    import org.allbinary.graphics.displayable.event.DisplayChangeEventHandler;
    import org.allbinary.graphics.displayable.event.DisplayChangeEventListener;
    import org.allbinary.graphics.form.FormType;
    import org.allbinary.graphics.form.FormTypeFactory;
    import org.allbinary.graphics.form.ScrollSelectionForm;
    import org.allbinary.graphics.opengles.CurrentDisplayableFactory;
    import org.allbinary.graphics.opengles.OpenGLFeatureFactory;
    import org.allbinary.graphics.opengles.OpenGLFeatureUtil;
    import org.allbinary.graphics.opengles.OpenGLThreadUtil;
    import org.allbinary.graphics.paint.InitUpdatePaintable;
    import org.allbinary.graphics.paint.NullPaintable;
    import org.allbinary.graphics.paint.Paintable;
    import org.allbinary.graphics.paint.PaintableInterface;
    import org.allbinary.graphics.paint.StatePaintable;
    import org.allbinary.graphics.paint.StatePaintableFactory;
    import org.allbinary.input.motion.gesture.observer.BasicMotionGesturesHandler;
    import org.allbinary.logic.communication.log.ForcedLogUtil;
    import org.allbinary.logic.communication.log.PreLogUtil;
    import org.allbinary.logic.math.SmallIntegerSingletonFactory;
    import org.allbinary.logic.string.StringMaker;
    import org.allbinary.logic.system.os.OperatingSystemFactory;
    import org.allbinary.logic.system.security.licensing.AbeClientInformationInterface;
    import org.allbinary.logic.system.security.licensing.InApplicationPurchaseFactory;
    import org.allbinary.logic.system.security.licensing.LockableFeature;
    import org.allbinary.logic.system.security.licensing.LockableFeatureFactory;
    import org.allbinary.logic.util.event.AllBinaryEventObject;
    import org.allbinary.logic.util.event.EventStrings;
    import org.allbinary.media.audio.AllBinaryMediaManager;
    import org.allbinary.media.audio.EarlySoundsFactory;
    import org.allbinary.string.CommonSeps;
    import org.allbinary.time.TimeDelayHelper;
    import org.allbinary.util.ABHashtable;
    import org.allbinary.util.BasicArrayList;
    import org.allbinary.util.BasicArrayListD;

    public class StartCanvas extends RunnableCanvas implements GameCanvasRunnableInterface, MenuListener, DisplayChangeEventListener {
    private static const id:int = 0;
    private static const BOT_GAME_STATS:String = "Bot Game Statistics: ";
        public var basicColorFactory:BasicColorFactory = null;
        public var features:Features = null;
        public var openGLFeatureFactory:OpenGLFeatureFactory = null;
        public var myCommandsFactory:MyCommandsFactory = null;
        public var gameAdStateFactory:GameAdStateFactory = null;
        public var gameStateFactory:GameStateFactory = null;
        public var gameInputStrings:GameInputStrings = null;
        public var formUtil:FormUtil = null;
        private var basicGameDemoPaintable:StatePaintable = null;
        private var specialAnimationInterface:SpecialAnimation = null;
        public var paintedSpecialAnimationInterface:Animation = null;
        private var fullScreenUtil:FullScreenUtil = null;
        private var highScoresHelper:HighScoresHelper = null;
        private var realHighScoresPaintable:HighScoresPaintable = null;
        private var highScoresPaintable:Paintable = null;
        private var state:int = 0;
        private var timeDelayHelper:TimeDelayHelper = null;
        private var highScoresFactoryInterface:HighScoresFactoryInterface = null;
        private var menuInputProcessor:BasicMenuInputProcessor = null;
        private var menuForm:ScrollSelectionForm = null;
        private var gameInitializationInterfaceFactoryInterface:BasicBuildGameInitializerFactory = null;
        private var initialized:Boolean = false;
        private var defaultPaintableInterface:Paintable = null;
        private var paintableInterface:PaintableInterface = null;
        private var overlayPaintable:InitUpdatePaintable = null;
        private var tempWait:int = 0;
        private var inputToGameKeyMapping:InputToGameKeyMapping = null;
        public var gameRunnable:GameRunnable = null;
        private var progressPaintable:PaintableInterface = null;
        private var isSingleKeyRepeatableProcessing:Boolean = false;
        private var NONE:GameKey = null;
        private var gameKeyEventFactory:GameKeyEventFactory = null;
        private var SET_STATE:String = null;
        private var baseGameStatistics:BaseGameStatistics = null;

        // Java field initializers run after the base constructor
        private function initFieldsStartCanvas():void {
    this.basicColorFactory = BasicColorFactory.getInstance();
    this.features = Features.getInstance();
    this.openGLFeatureFactory = OpenGLFeatureFactory.getInstance();
    this.myCommandsFactory = MyCommandsFactory.getInstance();
    this.gameAdStateFactory = GameAdStateFactory.getInstance();
    this.gameStateFactory = GameStateFactory.getInstance();
    this.gameInputStrings = GameInputStrings.getInstance();
    this.formUtil = FormUtil.getInstance();
    this.basicGameDemoPaintable = StatePaintableFactory.getInstance();
    this.specialAnimationInterface = SpecialAnimation.getInstance();
    this.paintedSpecialAnimationInterface = SpecialAnimation.getInstance();
    this.fullScreenUtil = FullScreenUtil.getInstance();
    this.highScoresHelper = new HighScoresHelper();
    this.realHighScoresPaintable = new HighScoresPaintable();
    this.highScoresPaintable = NullPaintable.getInstance();
    this.state = 0;
    this.timeDelayHelper = new TimeDelayHelper(6000);
    
    this.menuInputProcessor = NoMenuInputProcessor.getInstance();
    this.menuForm = ScrollSelectionForm.getNullScrollSelectionForm();
    
    this.initialized = false;
    this.defaultPaintableInterface = NullPaintable.getInstance();
    this.paintableInterface = NullPaintable.getInstance();
    
    this.tempWait = NullWaitGameRunnable.getInstance().WAIT;
    this.inputToGameKeyMapping = PlatformInputMappingFactory.getInstance().getPersistentInputMappingInstance().getInputMapping();
    this.gameRunnable = NullWaitGameRunnable.getInstance();
    this.progressPaintable = ProgressCanvasFactory.getLazyInstance();
    this.isSingleKeyRepeatableProcessing = this.features.isFeature(InputFeatureFactory.getInstance().SINGLE_KEY_REPEAT_PRESS);
    this.NONE = GameKeyFactory.getInstance().NONE;
    this.gameKeyEventFactory = GameKeyEventFactory.getInstance();
    this.SET_STATE = "setState";
    this.baseGameStatistics = GameStatisticsFactory.getInstance();
        }
    

    public function StartCanvas(abeClientInformation:AbeClientInformationInterface, commandListener:CommandListener, highScoresFactoryInterface:HighScoresFactoryInterface, paintable:Paintable, overlayPaintable:InitUpdatePaintable, gameInitializationInterfaceFactoryInterface:BasicBuildGameInitializerFactory, isContinue:Boolean) {
        super(commandListener, CurrentDisplayableFactory.getInstance().DEFAULT_CHILD_NAME_LIST, true);
        this.initFieldsStartCanvas();
        this.setWait(NullWaitGameRunnable.getInstance().WAIT);
        this.gameInitializationInterfaceFactoryInterface = gameInitializationInterfaceFactoryInterface;
        GameInitializationUtil.getInstance().initDemo(abeClientInformation, this, gameInitializationInterfaceFactoryInterface);
        ResizableListenerHandler.getInstance().fireEvent(false);
        this.overlayPaintable = overlayPaintable;
        this.highScoresFactoryInterface = highScoresFactoryInterface;
        this.setDefaultPaintableInterface(paintable);
        this.setPaintableInterface(this.getDefaultPaintableInterface());
        if (isContinue) {
            this.addCommand(GameCommandsFactory.getInstance().CONTINUE_COMMAND);
        }
        if (ChangedGameFeatureListener.getInstance().isChangedFeature(GameFeatureFactory.getInstance().SOUND)) {
            this.mediaInit();
        }
        DisplayChangeEventHandler.getInstance().addListenerInterface(this);
    }
    

    override public function onEvent(eventObject:AllBinaryEventObject):void {
        ForcedLogUtil.log(EventStrings.getInstance().PERFORMANCE_MESSAGE, this);
    }
    

    override public function onDisplayChangeEvent(displayChangeEvent:DisplayChangeEvent):void {
        try {
            var scrollSelectionForm:ScrollSelectionForm = this.getMenuForm();
            if (scrollSelectionForm != null) {
                var formType:FormType = FormTypeFactory.getInstance().getFormType();
                var rectangle:Rectangle = this.formUtil.createFormRectangle();
                scrollSelectionForm.init(rectangle, formType);
            }
            this.overlayPaintable.init();
        } catch (e:*) {
            this.logUtil.put(this.commonStrings.EXCEPTION, this, this.canvasStrings.ON_DISPLAY_CHANGE_EVENT, e);
        }
    }
    

    public function getCustomCommands():Vector.<Object> {
        var gameCommandsFactory:GameCommandsFactory = GameCommandsFactory.getInstance();
        if (J2MEUtil.isHTML()) {
            commandArray = new <Object>[gameCommandsFactory.START_COMMAND, HighScoreCommands.getInstance().DISPLAY, GameInputMappingCanvas.DISPLAY, gameCommandsFactory.DISPLAY_ABOUT];
            return commandArray;
        } else {
            var commandList:BasicArrayList = new BasicArrayListD();
            commandList.add(gameCommandsFactory.START_COMMAND);
            var inApplicationPurchaseFactory:InApplicationPurchaseFactory = InApplicationPurchaseFactory.getInstance();
            if (inApplicationPurchaseFactory.isEnabled()) {
                var list:BasicArrayList = LockableFeatureFactory.getInstance().getList();
                if (list.size() > 0 && !inApplicationPurchaseFactory.isPurchased((list.get_(0) as LockableFeature))) {
                    commandList.add(gameCommandsFactory.BUY_COMMAND);
                }
            }
            commandList.add(HighScoreCommands.getInstance().DISPLAY);
            try {
                var isOverScan:Boolean = OperatingSystemFactory.getInstance().getOperatingSystemInstance().isOverScan();
                if (SWTUtil.isSWT) {
                    commandList.add(GameInputMappingCanvas.DISPLAY);
                } else if (!isOverScan) {
                    commandList.add(gameCommandsFactory.DISPLAY_OPTIONS);
                    commandList.add(gameCommandsFactory.DISPLAY_LOAD_FORM);
                    commandList.add(GameInputMappingCanvas.DISPLAY);
                }
            } catch (e:*) {
            }
            commandList.add(gameCommandsFactory.DISPLAY_ABOUT);
            var commandArray:Vector.<Object> = commandList.toArray();
            return commandArray;
        }
    }
    

    override public function initCommands(cmdListener:CommandListener):void {
        this.removeAllCommands();
        var commandArray:Vector.<Object> = this.getCustomCommands();
        var size:int = commandArray.length;
        for (var index:int = 0; index < size; index++) {
            this.addCommand((commandArray[index] as Command));
        }
        CustomGameMenuUtil.add(this);
        this.setCommandListener(cmdListener);
    }
    

    public function initPostPaint():void {
    }
    

    public function mediaInit():void {
        AllBinaryMediaManager.init(EarlySoundsFactory.getInstance());
    }
    

    override public function itemStateChanged(item:Item):void {
        ForcedLogUtil.log(this.commonStrings.NOT_IMPLEMENTED, this);
    }
    

    public function initMenu():void {
        this.close();
        this.open();
    }
    

    override public function open():void {
        BasicMotionGesturesHandler.getInstance().addListenerInterface(this.getMenuInputProcessor());
        GameKeyEventHandler.getInstance().addListener(this.getMenuInputProcessor());
    }
    

    override public function close():void {
        BasicMotionGesturesHandler.getInstance().removeListener(this.getMenuInputProcessor());
        GameKeyEventHandler.getInstance().removeListener(this.getMenuInputProcessor());
    }
    

    override public function getSourceId():int {
        return StartCanvas.id;
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
        this.addGameKeyEvent(keyCode, false);
    }
    

    override public function keyReleasedByDevice(keyCode:int, deviceId:int):void {
        this.removeGameKeyEvent(keyCode, false);
    }
    

    override public function keyRepeatedByDevice(keyCode:int, deviceId:int):void {
        if (this.isSingleKeyRepeatableProcessing) {
            this.addGameKeyEvent(keyCode, true);
        }
    }
    

    private function addGameKeyEvent(keyCode:int, repeated:Boolean):void {
        try {
            var gameKey:GameKey = this.inputToGameKeyMapping.getInstanceForCanvas(this, keyCode);
            if (gameKey !== this.NONE) {
                var gameKeyEvent:GameKeyEvent = this.gameKeyEventFactory.getInstanceForInput(this, gameKey);
                DownGameKeyEventHandler.getInstance().fireEvent(gameKeyEvent);
            } else {
                this.logUtil.putF(new StringMaker().append(this.gameInputStrings.NO_KEY).appendint(keyCode).toString(), this, this.gameInputStrings.ADD_KEY_EVENT);
            }
        } catch (e:*) {
            this.logUtil.put("Key Event Error", this, this.gameInputStrings.ADD_KEY_EVENT, e);
        }
    }
    

    private function removeGameKeyEvent(keyCode:int, repeated:Boolean):void {
        try {
            var gameKey:GameKey = this.inputToGameKeyMapping.getInstanceForCanvas(this, keyCode);
            if (gameKey !== this.NONE) {
                var gameKeyEvent:GameKeyEvent = this.gameKeyEventFactory.getInstanceForInput(this, gameKey);
                UpGameKeyEventHandler.getInstance().fireEvent(gameKeyEvent);
            } else {
                this.logUtil.putF(new StringMaker().append(this.gameInputStrings.NO_KEY).appendint(keyCode).toString(), this, this.gameInputStrings.REMOVE_KEY_EVENT);
            }
        } catch (e:*) {
            this.logUtil.put("Key Event Error", this, this.gameInputStrings.REMOVE_KEY_EVENT, e);
        }
    }
    

    override public function pause():void {
        this.close();
        this.setPaused(true);
    }
    

    override public function unPause():void {
        this.open();
        this.setPaused(false);
    }
    

    override public function isPausable():Boolean {
        if (CurrentDisplayableFactory.getInstance().getUsedRunnable() == NullWaitGameRunnable.getInstance()) {
            return true;
        } else {
            return false;
        }
    }
    

    override public function isGameOver():Boolean {
        this.logUtil.putF(new StringMaker().append(this.commonStrings.NOT_IMPLEMENTED).append(" since not a game").toString(), this, "isGameOver");
        return false;
    }
    

    override public function setLoadStateHashtable(hashtable:ABHashtable):void {
        this.logUtil.putF("Trying to continue a demo lol - only continue a game canvas not the demo", this, "setLoadStateHashtable");
    }
    

    override public function getLoadStateHashtable():ABHashtable {
        this.logUtil.putF("Trying to continue a demo lol - only continue a game canvas not the demo", this, "getLoadStateHashtable");
        return this.stdUtil.NULL_TABLE;
    }
    

    override public function getCurrentStateHashtable():ABHashtable {
        this.logUtil.putF("Trying to save the AI lol", this, "getCurrentStateHashtable");
        return this.stdUtil.NULL_TABLE;
    }
    

    override public function setHighScoreSubmitted(isNotUsed:Boolean):void {
    }
    

    override public function paint(graphics:Graphics):void {
        this.paintableInterface.paint(graphics);
        this.paintedSpecialAnimationInterface.paintXY(graphics, 0, 0);
        this.highScoresPaintable.paint(graphics);
        this.getBasicGameDemoPaintable().paint(graphics);
        this.overlayPaintable.paint(graphics);
        this.progressPaintable.paint(graphics);
    }
    

    override public function paintThreed(graphics:Graphics):void {
        this.paintableInterface.paintThreed(graphics);
        this.paintedSpecialAnimationInterface.paintThreedXYZ(graphics, 0, 0, 0);
    }
    

    override public function processGameOver():void {
        this.logUtil.putF("Not Implemented since not a game", this, "setGameOver");
    }
    

    public function demoStateChange():void {
        var newState:int = int(this.state + 1);
        if (newState > 2) {
            newState = 0;
        } else if (newState == 2) {
            if (!this.highScoresHelper.isAnyHighScores()) {
                newState = 0;
            } else {
                var highScores:HighScores = this.highScoresHelper.getNextHighScores();
                if (highScores == NullHighScoresSingletonFactory.getInstance()) {
                    newState = 0;
                } else {
                    this.getRealHighScoresPaintable().setHighScores(highScores);
                }
            }
        }
        this.setState(newState);
        this.updateDemoState();
    }
    

    public function updateDemoState():void {
        PreLogUtil.put(SmallIntegerSingletonFactory.getInstance().createInstance(this.state).toString(), this, this.SET_STATE);
        this.getBasicGameDemoPaintable().setState(this.state);
        if (this.state == 0) {
            this.highScoresPaintable = NullPaintable.getInstance();
            this.paintedSpecialAnimationInterface = this.getSpecialAnimationInterface();
            this.getSpecialAnimationInterface().reset();
        } else if (this.state == 1) {
            this.paintedSpecialAnimationInterface = SpecialAnimation.getInstance();
        } else if (this.state == 2) {
            this.highScoresPaintable = this.getRealHighScoresPaintable();
        }
        var gameAdState:GameAdState = this.gameAdStateFactory.getCurrentInstance();
        gameAdState.processPageAdState();
    }
    

    public function getNextRandom():int {
        throw new JException("Exception", this.commonStrings.NOT_IMPLEMENTED);
    }
    

    public function createGameLayerManager(randomValue:int):AllBinaryGameLayerManager {
        throw new JException("Exception", this.commonStrings.NOT_IMPLEMENTED);
    }
    

    public function createRunnable(randomLevel:int):GameCanvasRunnableInterface {
        throw new JException("Exception", this.commonStrings.NOT_IMPLEMENTED);
    }
    

    public function createCanvas():void {
        this.highScoresPaintable = NullPaintable.getInstance();
        var randomLevel:int = this.getNextRandom();
    }
    

    public function start():void {
    }
    

    public function preDemoProcess():void {
        this.overlayPaintable.update();
    }
    

    override public function process():void {
        this.getMenuInputProcessor().processInputList();
        this.preDemoProcess();
        if (this.state == 0) {
            var indexedAnimationBehavior:IndexedAnimationBehavior = (this.getSpecialAnimationInterface().getAnimationBehavior() as IndexedAnimationBehavior);
            if (indexedAnimationBehavior.loopIndex < 1) {
                this.timeDelayHelper.setStartTimeTNT();
            }
            var demoGameMidlet:DemoGameMidlet = (this.getCustomCommandListener() as DemoGameMidlet);
        }
    }
    

    public function startDemoGame():void {
    }
    

    public function processGame():void {
        this.gameRunnable.run();
        this.specialAnimationInterface.nextFrame();
        this.process();
    }
    

    override public function run():void {
        this.logUtil.putF(this.commonStrings.START_RUNNABLE, this, this.commonStrings.RUN);
        try {
            var progressCanvas:ProgressCanvas = ProgressCanvasFactory.getInstance();
            progressCanvas.addNormalPortion(50, "Demo Thread");
            this.setCurrentThread();
            this.setRunning(true);
            if (this.features.isFeature(MainFeatureFactory.getInstance().LOAD_ONDEMAND)) {
                progressCanvas.end();
            } else {
                progressCanvas.addNormalPortion(50, "Demo Thread Running");
            }
            this.fullScreenUtil.initOnRun(this, this.getCustomCommandListener());
            this.initMenu();
            this.initPostPaint();
            this.updateDemoState();
            if (this.features.isDefault(this.openGLFeatureFactory.OPENGL_AS_GAME_THREAD)) {
                OpenGLThreadUtil.getInstance().onResume();
            }
            if (this.features.isDefault(this.openGLFeatureFactory.OPENGL_AS_GAME_THREAD) || J2MEUtil.isHTML()) {
            } else {
                while (this.isRunning()) {
                    this.loopTimeHelper.setStartTimeTNT();
                    this.processGame();
                    this.processLoopSleep();
                }
                this.end();
            }
        } catch (e:*) {
            this.logUtil.put(this.commonStrings.EXCEPTION, this, this.commonStrings.RUN, e);
        }
        this.logUtil.putF(this.commonStrings.END_RUNNABLE, this, this.commonStrings.RUN);
    }
    

    override public function setRunning(running:Boolean):void {
        super.setRunning(running);
        try {
            if ((this.features.isDefault(this.openGLFeatureFactory.OPENGL) || J2MEUtil.isHTML()) && !running) {
                var currentDisplayableFactory:CurrentDisplayableFactory = CurrentDisplayableFactory.getInstance();
                currentDisplayableFactory.clearRunnable();
                this.end();
            }
        } catch (e:*) {
            this.logUtil.put(this.commonStrings.EXCEPTION, this, this.SET_RUNNING, e);
        }
    }
    

    public function end():void {
        var progressCanvas:ProgressCanvas = ProgressCanvasFactory.getInstance();
        this.baseGameStatistics.add(new StringMaker().append(StartCanvas.BOT_GAME_STATS).append(this.baseGameStatistics.toString()).append(CommonSeps.getInstance().NEW_LINE).toString());
        this.baseGameStatistics.init();
        if (this.features.isFeature(MainFeatureFactory.getInstance().LOAD_ONDEMAND)) {
            progressCanvas.start();
        }
        this.logUtil.putF("Demo End", this, this.commonStrings.RUN);
        this.close();
        DisplayChangeEventHandler.getInstance().removeListener(this);
    }
    

    override public function setGameState(gameState:GameState):void {
    }
    

    override public function getGameState():GameState {
        return this.gameStateFactory.PLAYING_GAME_STATE;
    }
    

    public function getState():int {
        return this.state;
    }
    

    public function setState(state:int):void {
        this.state = state;
    }
    

    override public function isHighScoreSubmitted():Boolean {
        this.logUtil.putF("Wow the AI got a high score!", this, "isHighScoreSubmitted");
        return false;
    }
    

    public function getRealHighScoresPaintable():HighScoresPaintable {
        return this.realHighScoresPaintable;
    }
    

    public function setSpecialAnimationInterface(specialAnimationInterface:SpecialAnimation):void {
        specialAnimationInterface.setFrame(0);
        this.specialAnimationInterface = specialAnimationInterface;
    }
    

    public function getSpecialAnimationInterface():SpecialAnimation {
        return this.specialAnimationInterface;
    }
    

    public function setPaintableInterface(paintableInterface:PaintableInterface):void {
        this.paintableInterface = paintableInterface;
    }
    

    public function getPaintableInterface():PaintableInterface {
        return this.paintableInterface;
    }
    

    public function setDefaultPaintableInterface(defaultPaintableInterface:Paintable):void {
        this.defaultPaintableInterface = defaultPaintableInterface;
    }
    

    public function getDefaultPaintableInterface():Paintable {
        return this.defaultPaintableInterface;
    }
    

    public function getHighScoresFactoryInterface():HighScoresFactoryInterface {
        return this.highScoresFactoryInterface;
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
    

    override public function isInitialized():Boolean {
        return this.initialized;
    }
    

    public function getOverlayPaintable():Paintable {
        return this.overlayPaintable;
    }
    

    public function setBasicGameDemoPaintable(basicGameDemoPaintable:StatePaintable):void {
        this.basicGameDemoPaintable = basicGameDemoPaintable;
    }
    

    public function getBasicGameDemoPaintable():StatePaintable {
        return this.basicGameDemoPaintable;
    }
    

    public function setTempWait(tempWait:int):void {
        this.tempWait = tempWait;
    }
    

    public function getTempWait():int {
        return this.tempWait;
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
    

    public function getGameInitializationInterfaceFactoryInterface():BasicBuildGameInitializerFactory {
        return this.gameInitializationInterfaceFactoryInterface;
    }
    

    override public function getTitle():String {
        return super.getTitle();
    }
    

    override public function isPaused():Boolean {
        return super.isPaused();
    }
    

    override public function getType():int {
        return super.getType();
    }
    }
}

