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
package org.allbinary.game.midlet {
    import java.util.JEnumeration;
    import javax.microedition.lcdui.Canvas;
    import javax.microedition.lcdui.Command;
    import javax.microedition.lcdui.CommandListener;
    import javax.microedition.lcdui.Displayable;
    import javax.microedition.lcdui.NullCanvas;
    import javax.microedition.midlet.MIDletStateChangeException;
    import org.allbinary.J2MEUtil;
    import org.allbinary.TsUtil;
    import org.allbinary.business.advertisement.GameAdStateFactory;
    import org.allbinary.canvas.FullScreenUtil;
    import org.allbinary.canvas.GameStatisticsFactory;
    import org.allbinary.debug.DebugFactory;
    import org.allbinary.debug.DebugInterface;
    import org.allbinary.game.GameAdState;
    import org.allbinary.game.GameInfo;
    import org.allbinary.game.GameMode;
    import org.allbinary.game.GameStrings;
    import org.allbinary.game.GameTypeFactory;
    import org.allbinary.game.PlayerTypesFactory;
    import org.allbinary.game.commands.GameCommandsFactory;
    import org.allbinary.game.configuration.GameOptionsForm;
    import org.allbinary.game.configuration.GameOptionsFormFactory;
    import org.allbinary.game.configuration.InGameFeatures;
    import org.allbinary.game.configuration.InGameOptionsForm;
    import org.allbinary.game.configuration.InGameOptionsFormFactory;
    import org.allbinary.game.configuration.LoadGameForm;
    import org.allbinary.game.configuration.event.ChangedGameFeatureListener;
    import org.allbinary.game.configuration.event.GameFeatureEventHandler;
    import org.allbinary.game.configuration.feature.Features;
    import org.allbinary.game.configuration.feature.GameFeatureFormUtil;
    import org.allbinary.game.configuration.feature.MainFeatureFactory;
    import org.allbinary.game.configuration.persistance.GamePersistanceSingleton;
    import org.allbinary.game.configuration.persistance.KeyValuePersistance;
    import org.allbinary.game.displayable.canvas.AllBinaryGameCanvas;
    import org.allbinary.game.displayable.canvas.BasicPaintablesCanvas;
    import org.allbinary.game.displayable.canvas.DemoCanvas;
    import org.allbinary.game.displayable.canvas.GameCanvasRunnableInterface;
    import org.allbinary.game.displayable.canvas.GameEventHandlerUtil;
    import org.allbinary.game.displayable.canvas.GameInputMappingCanvas;
    import org.allbinary.game.displayable.canvas.GameInputMappingInstructionsCanvas;
    import org.allbinary.game.displayable.canvas.MenuListener;
    import org.allbinary.game.displayable.canvas.NullGameCanvasRunnable;
    import org.allbinary.game.input.TextNotificationUtil;
    import org.allbinary.game.layer.AllBinaryGameLayerManager;
    import org.allbinary.game.layer.hud.event.GameNotificationEventHandler;
    import org.allbinary.game.paint.help.HelpPaintable;
    import org.allbinary.game.score.HighScoreCommands;
    import org.allbinary.game.score.HighScoreCommandsFactory;
    import org.allbinary.game.score.displayable.HighScoreTextBox;
    import org.allbinary.game.score.displayable.HighScoreUtil;
    import org.allbinary.game.score.displayable.HighScoresCanvas;
    import org.allbinary.game.state.GameStateFactory;
    import org.allbinary.graphics.ResizableListenerHandler;
    import org.allbinary.graphics.canvas.transition.progress.ProgressCanvas;
    import org.allbinary.graphics.canvas.transition.progress.ProgressCanvasFactory;
    import org.allbinary.graphics.color.BasicColorFactory;
    import org.allbinary.graphics.color.ColorChangeEventHandler;
    import org.allbinary.graphics.displayable.CanvasStrings;
    import org.allbinary.graphics.displayable.MyCanvas;
    import org.allbinary.graphics.displayable.command.MyCommandsFactory;
    import org.allbinary.graphics.displayable.screen.AboutCommandProcessor;
    import org.allbinary.graphics.displayable.screen.AboutPaintableFactory;
    import org.allbinary.graphics.displayable.screen.CommandForm;
    import org.allbinary.graphics.displayable.screen.WebCommandProcessor;
    import org.allbinary.input.AllBinarySensorManager;
    import org.allbinary.input.event.VirtualKeyboardEventHandler;
    import org.allbinary.input.motion.gesture.observer.BasicMotionGesturesHandler;
    import org.allbinary.logic.communication.log.ForcedLogUtil;
    import org.allbinary.logic.communication.log.PreLogUtil;
    import org.allbinary.logic.math.SmallIntegerSingletonFactory;
    import org.allbinary.logic.string.StringMaker;
    import org.allbinary.logic.system.security.licensing.ClientInformationFactory;
    import org.allbinary.logic.system.security.licensing.InApplicationPurchaseFactory;
    import org.allbinary.logic.system.security.licensing.LockableFeature;
    import org.allbinary.logic.system.security.licensing.LockableFeatureFactory;
    import org.allbinary.logic.util.event.AllBinaryEventObject;
    import org.allbinary.logic.util.event.EventStrings;
    import org.allbinary.media.audio.AllBinaryMediaManager;
    import org.allbinary.midlet.MidletStrings;
    import org.allbinary.midlet.ProgressMidlet;
    import org.allbinary.thread.NullThread;
    import org.allbinary.thread.ThreadFactoryUtil;
    import org.allbinary.thread.ThreadUtil;
    import org.allbinary.time.TimeDelayHelper;
    import org.allbinary.util.BasicArrayList;
    import org.allbinary.util.EnumerationUtil;
    import org.allbinary.logic.StdUtil;
    import org.allbinary.util.ABHashtable;
    import java.lang.JThread;

    public class GameMidlet extends ProgressMidlet implements CommandListener {
        private var enumerationUtil:EnumerationUtil = null;
        public var basicColorFactory:BasicColorFactory = null;
        public var features:Features = null;
        public var midletStrings:MidletStrings = null;
        public var myCommandsFactory:MyCommandsFactory = null;
        public var gameStrings:GameStrings = null;
        public var gameAdStateFactory:GameAdStateFactory = null;
        public var gameStateFactory:GameStateFactory = null;
        public var tsUtil:TsUtil = null;
        private var DISPLAYABLE:String = null;
        private var COMMAND_NAME:String = null;
        private var NO_COMMAND:String = null;
        private var NO_DISPLAYABLE:String = null;
        private var COMMAND_ACTION:String = null;
        private var PAUSE_APP_BACKGROUND:String = null;
        private var UN_PAUSE_APP_BACKGROUND:String = null;
        private var aboutCommandProcessor:AboutCommandProcessor = null;
        private var webCommandProcessor:WebCommandProcessor = null;
        private var gameMidletStateFactory:GameMidletStateFactory = null;
        public var gameStartTimeHelper:TimeDelayHelper = null;
        private var fullScreenUtil:FullScreenUtil = null;
        private var debugInterface:DebugInterface = null;
        private var allbinaryGameCanvasRunnableInterface:GameCanvasRunnableInterface = null;
        private var thread:JThread = null;
        private var loadGameForm:CommandForm = null;
        private var isFullScreen:Boolean = false;
        private var resized:Boolean = false;
        private var startedBefore:Boolean = false;

        // Java field initializers run after the base constructor
        private function initFieldsGameMidlet():void {
    this.enumerationUtil = EnumerationUtil.getInstance();
    this.basicColorFactory = BasicColorFactory.getInstance();
    this.features = Features.getInstance();
    this.midletStrings = MidletStrings.getInstance();
    this.myCommandsFactory = MyCommandsFactory.getInstance();
    this.gameStrings = GameStrings.getInstance();
    this.gameAdStateFactory = GameAdStateFactory.getInstance();
    this.gameStateFactory = GameStateFactory.getInstance();
    this.tsUtil = TsUtil.getInstance();
    this.DISPLAYABLE = " Displayable: ";
    this.COMMAND_NAME = "command Name/Label: ";
    this.NO_COMMAND = "No Command";
    this.NO_DISPLAYABLE = "No Displayable";
    this.COMMAND_ACTION = new StringMaker().append("GameMidlet::").append(this.midletStrings.COMMAND_ACTION).toString();
    this.PAUSE_APP_BACKGROUND = "pauseAppBackground";
    this.UN_PAUSE_APP_BACKGROUND = "unPauseAppBackground";
    this.aboutCommandProcessor = AboutCommandProcessor.getInstance();
    this.webCommandProcessor = WebCommandProcessor.getInstance();
    this.gameMidletStateFactory = GameMidletStateFactory.getInstance();
    this.gameStartTimeHelper = new TimeDelayHelper(240);
    this.fullScreenUtil = FullScreenUtil.getInstance();
    
    this.allbinaryGameCanvasRunnableInterface = NullGameCanvasRunnable.NULL_GAME_CANVAS_RUNNABLE;
    this.thread = NullThread.NULL_THREAD;
    
    this.isFullScreen = false;
    this.resized = false;
    this.startedBefore = false;
        }
    

    public function GameMidlet(clientInformationFactory:ClientInformationFactory) {
        super(clientInformationFactory);
        this.initFieldsGameMidlet();
        SmallIntegerSingletonFactory.getInstance().initWithRange(0x291, 6);
        this.loadGameForm = CommandForm.getNullCommandForm();
        var progressCanvas:ProgressCanvas = ProgressCanvasFactory.getInstance();
        progressCanvas.init(this);
        GameFeatureEventHandler.getInstance().addListenerInterface(ChangedGameFeatureListener.getInstance());
        GamePersistanceSingleton.getInstance().clear();
        this.debugInterface = DebugFactory.getInstance();
        this.init();
    }
    

    public function init():void {
    }
    

    public function setDemo():void {
        throw new JException("Exception", this.commonStrings.NOT_IMPLEMENTED);
    }
    

    public function createGame():void {
        throw new JException("Exception", this.commonStrings.NOT_IMPLEMENTED);
    }
    

    public function mediaShutdown():void {
        throw new JException("Exception", this.commonStrings.NOT_IMPLEMENTED);
    }
    

    public function stopAll():void {
    }
    

    override public function pauseApp():void {
        this.pauseAppBackground(true);
        var gameAdState:GameAdState = this.gameAdStateFactory.getCurrentInstance();
        gameAdState.getAdvertisements().stopAll();
    }
    

    public function pauseAppBackground(background:Boolean):void {
        this.logUtil.putF(this.commonStrings.START, this, this.PAUSE_APP_BACKGROUND);
        if (this.allbinaryGameCanvasRunnableInterface != NullGameCanvasRunnable.NULL_GAME_CANVAS_RUNNABLE) {
            this.allbinaryGameCanvasRunnableInterface.pause();
        } else {
            this.logUtil.putF("<<<<<< Null", this, this.PAUSE_APP_BACKGROUND);
        }
        AllBinarySensorManager.getInstance().shutdown();
    }
    

    public function unPauseApp():void {
        this.unPauseAppBackground(true);
        var gameAdState:GameAdState = this.gameAdStateFactory.getCurrentInstance();
        gameAdState.getAdvertisements().startAll();
    }
    

    public function unPauseAppBackground(background:Boolean):void {
        this.logUtil.putF(this.commonStrings.START, this, this.UN_PAUSE_APP_BACKGROUND);
        AllBinarySensorManager.getInstance().init();
        var gameCanvasRunnableInterface:GameCanvasRunnableInterface = this.allbinaryGameCanvasRunnableInterface;
        if (gameCanvasRunnableInterface != NullGameCanvasRunnable.NULL_GAME_CANVAS_RUNNABLE) {
            gameCanvasRunnableInterface.unPause();
        } else {
            this.logUtil.putF("<<<<<< Null", this, this.UN_PAUSE_APP_BACKGROUND);
        }
    }
    

    override public function destroyAppInRunnable(unconditional:Boolean, isProgress:Boolean):void {
        var progressCanvas:ProgressCanvas = ProgressCanvasFactory.getInstance();
        if (isProgress) {
            progressCanvas.start();
            this.commandAction(this.myCommandsFactory.SET_DISPLAYABLE, progressCanvas);
        }
        this.destroyApp(unconditional);
        if (isProgress) {
            progressCanvas.end();
        }
    }
    

    override public function destroyApp(unconditional:Boolean):void {
        var METHOD_NAME:String = "GameMidlet::destroyApp";
        try {
            PreLogUtil.put(GameStatisticsFactory.getInstance().toString(), this, METHOD_NAME);
            var gameAdState:GameAdState = this.gameAdStateFactory.getCurrentInstance();
            gameAdState.getAdvertisements().stopAll();
            if (!this.isDestroyed()) {
                this.stopGameCanvasRunnableInterface();
                this.setGameCanvasRunnableInterface(NullGameCanvasRunnable.NULL_GAME_CANVAS_RUNNABLE);
                this.mediaShutdown();
            } else {
                this.logUtil.putF("Midlet Managment Error: Midlet Should Only Be Destroyed Once", this, METHOD_NAME);
            }
            super.destroyApp(true);
            PreLogUtil.put(this.commonStrings.END, this, METHOD_NAME);
        } catch (e:*) {
            this.logUtil.put(this.commonStrings.EXCEPTION, this, METHOD_NAME, e);
        }
        this.logUtil.putF(this.commonStrings.END, this, METHOD_NAME);
    }
    

    override public function startApp():void {
        try {
            var gameAdState:GameAdState = this.gameAdStateFactory.getCurrentInstance();
            gameAdState.getAdvertisements().startAll();
            var START_APP:String = "startApp";
            this.logUtil.putF(this.commonStrings.START, this, START_APP);
            var gameCanvasRunnableInterface:Object = this.allbinaryGameCanvasRunnableInterface;
            if (gameCanvasRunnableInterface == NullGameCanvasRunnable.NULL_GAME_CANVAS_RUNNABLE) {
                this.gameMidletStateFactory.setCurrentGameState(this.gameStateFactory.NO_GAME_STATE);
                this.setDemo();
            } else {
                this.logUtil.putF("GameCanvasRunnableInterface is available", this, START_APP);
                if (gameCanvasRunnableInterface == this.getCurrentDisplayable()) {
                    this.unPauseAppBackground(false);
                } else {
                    this.logUtil.putF("GameCanvasRunnableInterface is not current displayable", this, START_APP);
                }
            }
        } catch (e:*) {
            this.logUtil.put(this.commonStrings.EXCEPTION, this, "startApp", e);
            this.destroyApp(false);
            this.notifyDestroyed();
        }
    }
    

    override public function commandAction(command:Command, displayable:Displayable):void {
        try {
            var displayableAsString:String = this.NO_DISPLAYABLE;
            if (displayable != null) {
                displayableAsString = displayable.toString();
            }
            var label:String = this.NO_COMMAND;
            if (command != null) {
                label = command.getLabel();
            }
            PreLogUtil.put(new StringMaker().append(this.COMMAND_NAME).append(label).append(this.DISPLAYABLE).append(displayableAsString).toString(), this, this.COMMAND_ACTION);
            var gameCommandsFactory:GameCommandsFactory = GameCommandsFactory.getInstance();
            var allbinaryGameCanvasRunnableInterface:GameCanvasRunnableInterface = this.allbinaryGameCanvasRunnableInterface;
            var gameCanvasRunnableInterface:Object = allbinaryGameCanvasRunnableInterface;
            if (command == gameCommandsFactory.SHOW_GAME_CANVAS) {
                if (this.getDisplay().getCurrent() != gameCanvasRunnableInterface && allbinaryGameCanvasRunnableInterface.getType() != NullGameCanvasRunnable.NULL_GAME_CANVAS_RUNNABLE.getType()) {
                    this.setDisplay((gameCanvasRunnableInterface as Displayable));
                }
                this.unPauseAppBackground(false);
            } else if (command == gameCommandsFactory.CLOSE_AND_SHOW_GAME_CANVAS) {
                menuListener = (displayable as MenuListener);
                menuListener.close();
                this.setDisplay((gameCanvasRunnableInterface as Displayable));
                this.unPauseAppBackground(false);
            } else if (command == gameCommandsFactory.EXIT_COMMAND) {
                if (GameMidletEventHandler.getInstance().getEventListenerInterfaceListP().size() == 0) {
                    this.exitProgress(true);
                }
                GameMidletEventHandler.getInstance().fireEvent(new DemoGameMidletEvent(this, DemoGameMidletStateFactory.getInstance().NONE));
            } else if (command == gameCommandsFactory.EXIT_WITHOUT_PROGRESS_COMMAND) {
                this.exitProgress(false);
            } else if (command == gameCommandsFactory.START_COMMAND || command == gameCommandsFactory.RESTART_COMMAND || command == gameCommandsFactory.CONTINUE_COMMAND) {
                if (this.gameMidletStateFactory.getCurrentGameState() != this.gameStateFactory.PLAYING_GAME_STATE || command == gameCommandsFactory.RESTART_COMMAND) {
                    if (this.gameStartTimeHelper.isTimeTNT()) {
                        if (command == gameCommandsFactory.START_COMMAND && this.isDemoLoading()) {
                            this.logUtil.putF("Trying to Start Game Before Loading Complete", this, this.midletStrings.COMMAND_ACTION);
                        } else {
                            this.startedBefore = true;
                            this.createGame();
                            this.gameMidletStateFactory.setCurrentGameState(this.gameStateFactory.PLAYING_GAME_STATE);
                        }
                    } else {
                        this.logUtil.putF("Starting Game Too Often", this, this.midletStrings.COMMAND_ACTION);
                    }
                } else {
                    this.logUtil.putF("Already in playing state", this, this.COMMAND_ACTION);
                }
            } else if (command == gameCommandsFactory.BUY_COMMAND) {
                var inApplicationPurchaseFactory:InApplicationPurchaseFactory = InApplicationPurchaseFactory.getInstance();
                var list:BasicArrayList = LockableFeatureFactory.getInstance().getList();
                var lockableFeature:LockableFeature = (list.get_(0) as LockableFeature);
                if (list.size() > 0 && !inApplicationPurchaseFactory.isPurchased(lockableFeature)) {
                    inApplicationPurchaseFactory.purchase(lockableFeature);
                } else {
                    TextNotificationUtil.getInstance().fireSuccess("Already Purchased");
                }
            } else if (command == gameCommandsFactory.QUIT_COMMAND) {
                if (this.gameStartTimeHelper.isTimeTNT()) {
                    if ((displayable is HighScoreTextBox)) {
                        menuListener = (displayable as MenuListener);
                        menuListener.close();
                    }
                    this.stopGameCanvasRunnableInterface();
                    this.gameMidletStateFactory.setCurrentGameState(this.gameStateFactory.NO_GAME_STATE);
                    this.setDemo();
                }
            } else if (command == this.myCommandsFactory.RESUME_COMMAND) {
                this.unPauseAppBackground(false);
            } else if (command == this.myCommandsFactory.PAUSE_COMMAND) {
                this.pauseAppBackground(false);
            } else if (command == this.myCommandsFactory.SET_DISPLAYABLE) {
                this.pauseAppBackground(false);
                this.setDisplay(displayable);
            } else if (command == gameCommandsFactory.SET_MENU_DISPLAYABLE) {
                this.pauseAppBackground(false);
                menuListener = (displayable as MenuListener);
                menuListener.open();
                this.setDisplay(displayable);
            } else if (command == gameCommandsFactory.START_TRACE) {
                this.debugInterface.start();
                gameCanvas = (allbinaryGameCanvasRunnableInterface as AllBinaryGameCanvas);
                gameCanvas.addCommand(gameCommandsFactory.STOP_TRACE);
                gameCanvas.removeCommand(gameCommandsFactory.START_TRACE);
            } else if (command == gameCommandsFactory.STOP_TRACE) {
                this.pauseAppBackground(false);
                this.debugInterface.stop();
                this.unPauseAppBackground(false);
                var gameCanvas:AllBinaryGameCanvas = (allbinaryGameCanvasRunnableInterface as AllBinaryGameCanvas);
                gameCanvas.addCommand(gameCommandsFactory.START_TRACE);
                gameCanvas.removeCommand(gameCommandsFactory.STOP_TRACE);
            } else if (command == gameCommandsFactory.DEFAULT_OPTIONS) {
                tempDisplayable = displayable;
                if ((tempDisplayable is GameOptionsForm)) {
                    GameFeatureFormUtil.getInstance().setDefault((tempDisplayable as CommandForm));
                }
            } else if (command == GameInputMappingInstructionsCanvas.DISPLAY) {
                tempDisplayable = displayable;
                if ((tempDisplayable is GameInputMappingCanvas)) {
                    gameInputMappingCanvas = (tempDisplayable as GameInputMappingCanvas);
                    gameInputMappingCanvas.update();
                }
                this.commandAction(gameCommandsFactory.SET_MENU_DISPLAYABLE, this.getInputMappingInstructionsCanvas());
            } else if (HighScoreCommandsFactory.getInstance().isHighScoreCommand(command)) {
                tempDisplayable = displayable;
                if ((tempDisplayable is HighScoresCanvas)) {
                    var highScoresCanvas:HighScoresCanvas = (tempDisplayable as HighScoresCanvas);
                    highScoresCanvas.updateCommand(command);
                }
            } else if (command == HighScoreCommands.getInstance().DISPLAY) {
                this.commandAction(gameCommandsFactory.SET_MENU_DISPLAYABLE, this.createHighScoresCanvas());
            } else if (command == GameInputMappingInstructionsCanvas.CLOSE) {
                menuListener = (displayable as MenuListener);
                menuListener.close();
                this.commandAction(GameInputMappingCanvas.DISPLAY, NullCanvas.NULL_CANVAS);
            } else if (command == GameInputMappingCanvas.DISPLAY) {
                if (J2MEUtil.isHTML()) {
                    this.pauseAppBackground(false);
                }
                this.commandAction(gameCommandsFactory.SET_MENU_DISPLAYABLE, this.getInputMappingCanvas());
            } else if (command == GameInputMappingCanvas.DEFAULT) {
                var tempDisplayable:Displayable = displayable;
                if ((tempDisplayable is GameInputMappingCanvas)) {
                    var gameInputMappingCanvas:GameInputMappingCanvas = (tempDisplayable as GameInputMappingCanvas);
                    gameInputMappingCanvas.setDefault();
                }
            } else if (command == InGameOptionsForm.DISPLAY) {
                this.pauseAppBackground(false);
                var progressCanvas:ProgressCanvas = ProgressCanvasFactory.getInstance();
                progressCanvas.addNormalPortion(50, "In Game Options");
                layerManager = this.createGameLayerManager();
                var inGameOptionsFormFactory:InGameOptionsFormFactory = InGameOptionsFormFactory.getInstance();
                inGameOptionsFormFactory.init(this, new InGameFeatures(), "Options In Game", layerManager.getBackgroundBasicColor(), layerManager.getForegroundBasicColor());
                inGameOptionsForm = inGameOptionsFormFactory.get_();
                inGameOptionsForm.setItemStateListener(allbinaryGameCanvasRunnableInterface);
                this.commandAction(gameCommandsFactory.SET_MENU_DISPLAYABLE, inGameOptionsForm);
            } else if (command == InGameOptionsForm.DEFAULT) {
                var inGameOptionsForm:* = (InGameOptionsFormFactory.getInstance().get_() as InGameOptionsForm);
                GameFeatureFormUtil.getInstance().setDefault(inGameOptionsForm);
            } else if (command == gameCommandsFactory.DISPLAY_OPTIONS) {
                AllBinaryMediaManager.setMuted(true);
                this.stopAll();
                mainFeatureFactory = MainFeatureFactory.getInstance();
                this.isFullScreen = this.features.isFeature(mainFeatureFactory.FULL_SCREEN);
                ResizableListenerHandler.getInstance().fireEvent(true);
                this.setResized(false);
                this.commandAction(gameCommandsFactory.SET_MENU_DISPLAYABLE, this.getGameOptionsForm());
            } else if (command == gameCommandsFactory.CLOSE_OPTIONS) {
                ResizableListenerHandler.getInstance().fireEvent(false);
                this.commandAction(gameCommandsFactory.CLOSE_AND_SHOW_GAME_CANVAS, displayable);
                var stringBuffer:StringMaker = new StringMaker();
                stringBuffer.append("Close isFullScreen/change: ");
                stringBuffer.appendboolean(this.isFullScreen);
                stringBuffer.appendboolean(this.fullScreenUtil.isScreenChange(this.isFullScreen));
                stringBuffer.append(" isResized: ");
                stringBuffer.appendboolean(this.isResized());
                PreLogUtil.put(stringBuffer.toString(), this, this.COMMAND_ACTION);
                if (this.isResized() || this.fullScreenUtil.isScreenChange(this.isFullScreen)) {
                    this.updateFullScreen();
                }
                AllBinaryMediaManager.setMuted(false);
            } else if (command == gameCommandsFactory.DISPLAY_LOAD_FORM) {
                this.pauseAppBackground(false);
                keyValuePersistance = GamePersistanceSingleton.getInstance();
                keyValuePersistance.clear();
                keyValuePersistance.loadAll(this.abeClientInformation);
                if (this.getLoadGameForm() == CommandForm.getNullCommandForm()) {
                    var layerManager:AllBinaryGameLayerManager = this.createGameLayerManager();
                    this.setLoadGameForm(new LoadGameForm(this, "Load Game", layerManager.getBackgroundBasicColor(), layerManager.getForegroundBasicColor()));
                } else {
                    this.getLoadGameForm().update();
                }
                this.commandAction(gameCommandsFactory.SET_MENU_DISPLAYABLE, this.getLoadGameForm());
            } else if (command == gameCommandsFactory.LOAD_FILE) {
                loadGameForm = (this.getLoadGameForm() as LoadGameForm);
                index = loadGameForm.getSelectedId();
                if (index != -1) {
                    keyValuePersistance = GamePersistanceSingleton.getInstance();
                    this.setStartStateHashtable(keyValuePersistance.get_(index));
                    var menuListener:MenuListener = this.getLoadGameForm();
                    menuListener.close();
                    PreLogUtil.put(BasicMotionGesturesHandler.getInstance().toString(), this, this.COMMAND_ACTION);
                    this.commandAction(gameCommandsFactory.START_COMMAND, NullCanvas.NULL_CANVAS);
                    PreLogUtil.put(BasicMotionGesturesHandler.getInstance().toString(), this, this.COMMAND_ACTION);
                }
            } else if (command == gameCommandsFactory.DELETE_FILE) {
                var loadGameForm:LoadGameForm = (this.getLoadGameForm() as LoadGameForm);
                var index:int = loadGameForm.getSelectedText();
                if (index != -1) {
                    keyValuePersistance = GamePersistanceSingleton.getInstance();
                    keyValuePersistance.delete_(this.abeClientInformation, index);
                    keyValuePersistance.clear();
                    keyValuePersistance.loadAllSize(this.abeClientInformation, 1);
                    this.getLoadGameForm().update();
                }
            } else if (command == gameCommandsFactory.SAVE) {
                var keyValuePersistance:KeyValuePersistance = GamePersistanceSingleton.getInstance();
                this.pauseAppBackground(false);
                keyValuePersistance.save(this.abeClientInformation, this.getCurrentStateHashtable());
                this.unPauseAppBackground(false);
            } else if (command == HighScoreUtil.SUBMIT_TEXTBOX_COMMAND) {
                this.logUtil.putF("Submitted Score", this, this.COMMAND_ACTION);
                if ((displayable is HighScoreTextBox)) {
                    var highScoreTextBox:HighScoreTextBox = (displayable as HighScoreTextBox);
                    highScoreTextBox.submitted = true;
                }
                allbinaryGameCanvasRunnableInterface.setHighScoreSubmitted(true);
                this.commandAction(gameCommandsFactory.CLOSE_AND_SHOW_GAME_CANVAS, displayable);
            } else if (command == gameCommandsFactory.DISPLAY_ABOUT) {
                this.aboutCommandProcessor.process(this, gameCommandsFactory.SET_MENU_DISPLAYABLE, this.getAboutCanvas());
            } else if (command == gameCommandsFactory.OPEN_WEB_URL) {
                this.webCommandProcessor.process(this, gameCommandsFactory.OPEN_WEB_URL, NullCanvas.NULL_CANVAS);
            } else if (command == gameCommandsFactory.TOGGLE_KEYBOARD) {
                var virtualKeyboardEventHandler:VirtualKeyboardEventHandler = VirtualKeyboardEventHandler.getInstance();
                virtualKeyboardEventHandler.fireEvent(virtualKeyboardEventHandler.SHOW_EVENT);
            } else if (this.tsUtil.compareTo(command.getLabel(), gameCommandsFactory.TOGGLE_FULLSCREEN.getLabel()) == 0) {
                var mainFeatureFactory:MainFeatureFactory = MainFeatureFactory.getInstance();
                var isFullScreen:Boolean = this.features.isFeature(mainFeatureFactory.FULL_SCREEN);
                if (isFullScreen) {
                    this.features.removeDefault(mainFeatureFactory.FULL_SCREEN);
                } else {
                    this.features.addDefault(mainFeatureFactory.FULL_SCREEN);
                }
                this.updateFullScreen();
            }
        } catch (e:*) {
            this.logUtil.put(new StringMaker().append(this.commonStrings.EXCEPTION_LABEL).append(command.getLabel()).toString(), this, this.midletStrings.COMMAND_ACTION, e);
            if (command != GameCommandsFactory.getInstance().EXIT_COMMAND) {
                this.exitProgress(false);
            }
        }
    }
    

    private function updateFullScreen():void {
        var mainFeatureFactory:MainFeatureFactory = MainFeatureFactory.getInstance();
        var isFullScreen:Boolean = this.features.isFeature(mainFeatureFactory.FULL_SCREEN);
        var displayable:Displayable = this.getDisplay().getCurrent();
        if ((displayable is Canvas)) {
            var canvas:Canvas = (displayable as Canvas);
            canvas.setFullScreenMode(isFullScreen);
        }
    }
    

    public function onEvent(eventObject:AllBinaryEventObject):void {
        ForcedLogUtil.log(EventStrings.getInstance().PERFORMANCE_MESSAGE, this);
    }
    

    public function getInputMappingInstructionsCanvas():MyCanvas {
        return new GameInputMappingInstructionsCanvas(this, this.createGameLayerManager());
    }
    

    public function getInputMappingCanvas():MyCanvas {
        return new GameInputMappingCanvas(this.abeClientInformation, this, this.createGameLayerManager(), this.getHelpPaintable());
    }
    

    public function getAboutCanvas():MyCanvas {
        return new BasicPaintablesCanvas(this, CanvasStrings.getInstance().ABOUT, this.createGameLayerManager(), AboutPaintableFactory.getInstance().paintableArray);
    }
    

    public function getHelpPaintable():HelpPaintable {
        throw new JException("Exception", this.commonStrings.NOT_IMPLEMENTED);
    }
    

    public function createHighScoresCanvas():HighScoresCanvas {
        throw new JException("Exception", this.commonStrings.NOT_IMPLEMENTED);
    }
    

    public function startGameCanvasRunnableInterface():void {
        var threadFactoryUtil:ThreadFactoryUtil = ThreadFactoryUtil.getInstance();
        this.thread = threadFactoryUtil.getInstanceGameCanvasRunnable(this.allbinaryGameCanvasRunnableInterface);
        this.logUtil.putF(new StringMaker().append("Thread Priority: ").appendint(this.thread.getPriority()).toString(), this, "startGameCanvasRunnableInterface");
        this.allbinaryGameCanvasRunnableInterface.setThread(this.thread);
        threadFactoryUtil.start(this.thread);
    }
    

    public function stopGameCanvasRunnableInterface():void {
        this.logUtil.putF(this.commonStrings.START, this, this.gameStrings.STOP_GAME_CANVAS_RUNNABLE_INTERFACE);
        GameNotificationEventHandler.getInstance().removeAllListeners();
        ColorChangeEventHandler.getInstance().removeAllListeners();
        GameEventHandlerUtil.removeAllListeners();
        var gameCanvasRunnableInterface:GameCanvasRunnableInterface = this.allbinaryGameCanvasRunnableInterface;
        if (gameCanvasRunnableInterface != NullGameCanvasRunnable.NULL_GAME_CANVAS_RUNNABLE) {
            this.logUtil.putF(new StringMaker().append("Set Running False: ").append(gameCanvasRunnableInterface.toString()).toString(), this, this.gameStrings.STOP_GAME_CANVAS_RUNNABLE_INTERFACE);
            gameCanvasRunnableInterface.setRunning(false);
        } else {
            this.logUtil.putF("StopGame - Could Not Stop", this, this.gameStrings.STOP_GAME_CANVAS_RUNNABLE_INTERFACE);
        }
        ThreadUtil.getInstance().join(this.thread);
        var progressCanvas:ProgressCanvas = ProgressCanvasFactory.getInstance();
        if (this.features.isFeature(MainFeatureFactory.getInstance().LOAD_ALL)) {
            progressCanvas.addNormalPortion(50, "Stopped Game Runnable");
        } else {
            progressCanvas.addNormalPortion(50, "Stopped Main Runnable");
        }
        this.logUtil.putF(this.commonStrings.END, this, this.gameStrings.STOP_GAME_CANVAS_RUNNABLE_INTERFACE);
    }
    

    public function getGameCanvasRunnableInterface():GameCanvasRunnableInterface {
        return this.allbinaryGameCanvasRunnableInterface;
    }
    

    public function setGameCanvasRunnableInterface(gameCanvasRunnableInterface:GameCanvasRunnableInterface):void {
        this.allbinaryGameCanvasRunnableInterface = gameCanvasRunnableInterface;
    }
    

    public function createGameLayerManager():AllBinaryGameLayerManager {
        var gameInfo:GameInfo = new GameInfo(GameTypeFactory.getInstance().SINGLE_PLAYER, GameMode.SERVER, PlayerTypesFactory.getInstance().PLAYER_TYPE_ONE, 1, 1);
        return new AllBinaryGameLayerManager(this.basicColorFactory.BLACK, this.basicColorFactory.WHITE, gameInfo);
    }
    

    public function getGameOptionsForm():CommandForm {
        var layerManager:AllBinaryGameLayerManager = this.createGameLayerManager();
        return GameOptionsFormFactory.getInstance().init(this, "Game Options", layerManager.getBackgroundBasicColor(), layerManager.getForegroundBasicColor());
    }
    

    public function save():void {
        this.logUtil.putF(this.commonStrings.START, this, this.commonStrings.SAVE);
        var hashtable:ABHashtable = this.getCurrentStateHashtable();
        GamePersistanceSingleton.getInstance().save(this.abeClientInformation, hashtable);
    }
    

    override public function getCurrentStateHashtable():ABHashtable {
        this.logUtil.putF(this.commonStrings.START, this, "getCurrentStateHashtable");
        var hashtable:ABHashtable = StdUtil.getInstance().createHashtable();
        if (this.allbinaryGameCanvasRunnableInterface != NullGameCanvasRunnable.NULL_GAME_CANVAS_RUNNABLE) {
            var currentHashtable:ABHashtable = this.allbinaryGameCanvasRunnableInterface.getCurrentStateHashtable();
            var enumeration:JEnumeration = currentHashtable.keys();
            var key:Object = null;
            while (this.enumerationUtil.hasMoreElements(enumeration)) {
                key = this.enumerationUtil.nextElement(enumeration);
                hashtable.put(key, currentHashtable.get_(key));
            }
        }
        return hashtable;
    }
    

    public function setLoadGameForm(loadGameForm:LoadGameForm):void {
        this.loadGameForm = loadGameForm;
    }
    

    public function getLoadGameForm():CommandForm {
        return this.loadGameForm;
    }
    

    public function setResized(resized:Boolean):void {
        this.resized = resized;
    }
    

    public function isResized():Boolean {
        return this.resized;
    }
    

    public function isDemoLoading():Boolean {
        if (this.startedBefore) {
            return false;
        }
        var displayable:Displayable = this.getDisplay().getCurrent();
        if ((displayable is DemoCanvas)) {
            var demoCanvas:DemoCanvas = (displayable as DemoCanvas);
            if (demoCanvas.isDemoLoading()) {
                return true;
            }
        }
        return false;
    }
    }
}

