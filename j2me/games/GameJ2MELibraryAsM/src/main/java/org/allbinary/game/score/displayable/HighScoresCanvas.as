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
package org.allbinary.game.score.displayable {
    import javax.microedition.lcdui.Command;
    import javax.microedition.lcdui.CommandListener;
    import javax.microedition.lcdui.Graphics;
    import org.allbinary.game.GameInfo;
    import org.allbinary.game.commands.GameCommandsFactory;
    import org.allbinary.game.displayable.canvas.GameCommandCanvas;
    import org.allbinary.game.layer.AllBinaryGameLayerManager;
    import org.allbinary.game.paint.ColorFillBasePaintable;
    import org.allbinary.game.paint.ColorFillPaintableFactory;
    import org.allbinary.game.score.HighScoreCommandsFactory;
    import org.allbinary.game.score.HighScores;
    import org.allbinary.game.score.HighScoresCanvasInputProcessor;
    import org.allbinary.game.score.HighScoresCanvasInputProcessorFactoryInterface;
    import org.allbinary.game.score.HighScoresFactoryInterface;
    import org.allbinary.game.score.HighScoresHelperBase;
    import org.allbinary.game.score.HighScoresPaintable;
    import org.allbinary.game.score.HighScoresResultsListener;
    import org.allbinary.game.score.NoHighScoresFactory;
    import org.allbinary.game.score.NullHighScoresSingletonFactory;
    import org.allbinary.graphics.color.BasicColorFactory;
    import org.allbinary.graphics.paint.NullPaintable;
    import org.allbinary.graphics.paint.Paintable;
    import org.allbinary.graphics.paint.SimpleTextPaintable;
    import org.allbinary.logic.string.StringMaker;
    import org.allbinary.thread.SecondaryThreadPool;

    public class HighScoresCanvas extends GameCommandCanvas implements HighScoresResultsListener {
    public static const NAME:String = "HighScoresCanvas";
        private var paintable:Paintable = null;
        private var highScoreCommandsFactory:HighScoreCommandsFactory = null;
        private var waitPaintable:SimpleTextPaintable = null;
        private var highScoresPaintable:HighScoresPaintable = null;
        private var highScoresFactoryInterface:HighScoresFactoryInterface = null;
        public var colorFillPaintable:ColorFillBasePaintable = null;
        private var highScoresHelper:HighScoresHelperBase = null;
        private var gameInfo:GameInfo = null;
        private var highScoresCanvasInputProcessor:HighScoresCanvasInputProcessor = null;
        private var currentCommand:Command = null;
        public var hasPainted:Boolean = false;

        // Java field initializers run after the base constructor
        private function initFieldsHighScoresCanvas():void {
    this.paintable = NullPaintable.getInstance();
    this.highScoreCommandsFactory = HighScoreCommandsFactory.getInstance();
    this.waitPaintable = new SimpleTextPaintable(this.commonStrings.PLEASE_WAIT_FOR_SERVER, BasicColorFactory.getInstance().WHITE);
    
    
    
    this.highScoresHelper = new HighScoresHelperBase();
    
    
    this.currentCommand = this.highScoreCommandsFactory.HIGH_SCORE_COMMANDS[0];
    this.hasPainted = false;
        }
    

    public function HighScoresCanvas(commandListener:CommandListener, allBinaryGameLayerManager:AllBinaryGameLayerManager, gameInfo:GameInfo, paintable:HighScoresPaintable, highScoresFactoryInterface:HighScoresFactoryInterface, highScoresCanvasInputProcessorFactoryInterface:HighScoresCanvasInputProcessorFactoryInterface) {
        super(commandListener, HighScoresCanvas.NAME, allBinaryGameLayerManager.getBackgroundBasicColor(), allBinaryGameLayerManager.getForegroundBasicColor());
        this.initFieldsHighScoresCanvas();
        this.logUtil.putF(this.commonStrings.START, this, this.commonStrings.CONSTRUCTOR);
        this.highScoresPaintable = paintable;
        this.highScoresFactoryInterface = highScoresFactoryInterface;
        this.highScoresCanvasInputProcessor = highScoresCanvasInputProcessorFactoryInterface.getInstance1(this);
        this.gameInfo = gameInfo;
        this.waitPaintable.setBasicColorP(allBinaryGameLayerManager.getForegroundBasicColor());
        this.getHighScoresPaintable().setBasicColorP(allBinaryGameLayerManager.getForegroundBasicColor());
        this.colorFillPaintable = ColorFillPaintableFactory.getInstance().getInstance2(allBinaryGameLayerManager.getBackgroundBasicColor(), false);
        if (this.highScoresHelper.getHighScoresArray().length == NoHighScoresFactory.getInstance().NO_HIGH_SCORES.length) {
            this.setPaintable(this.waitPaintable);
        } else {
            this.logUtil.putF("Show HighScores that are already loaded", this, this.commonStrings.CONSTRUCTOR);
            this.updateCommand(this.currentCommand);
            this.setPaintable(this.getHighScoresPaintable());
        }
        SecondaryThreadPool.getInstance().runTask(new HighScoreRunnable(this));
    }
    

    override public function initCommands(cmdListener:CommandListener):void {
        this.removeAllCommands();
        this.addCommand(GameCommandsFactory.getInstance().CLOSE_AND_SHOW_GAME_CANVAS);
        this.setCommandListener(cmdListener);
    }
    

    override public function open():void {
        super.open();
        this.highScoresCanvasInputProcessor.open();
    }
    

    override public function close():void {
        super.close();
        this.highScoresCanvasInputProcessor.close();
    }
    

    override public function paint(...args):void {
        if (args.length == 1) {
            this.paint_jo1(args[0]);
            return;
        }
        super.paint.apply(this, args);
    }

    private function paint_jo1(graphics:Graphics):void {
        this.colorFillPaintable.paint(graphics);
        this.paintable.paint(graphics);
        if (this.waitPaintable !== this.paintable) {
            this.highScoresCanvasInputProcessor.paint(graphics);
        }
        super.paint(graphics);
        this.hasPainted = true;
    }
    

    public function executeUpdate():void {
        try {
            this.highScoresFactoryInterface.fetchHighScores(this.getGameInfo(), this);
        } catch (e:*) {
            this.logUtil.put(this.commonStrings.EXCEPTION, this, this.commonStrings.UPDATE, e);
        }
    }
    

    private function getHighScoresPaintable():HighScoresPaintable {
        return this.highScoresPaintable;
    }
    

    public function setHighScoresArray(highScoresArray:Vector.<HighScores>):void {
        try {
            if (highScoresArray != null) {
                this.logUtil.putF(new StringMaker().append(this.commonStrings.START).appendint(highScoresArray.length).toString(), this, "setHighScoresArray");
            } else {
                this.logUtil.putF(this.commonStrings.START, this, "setHighScoresArray");
            }
            this.highScoresHelper.setHighScoresArray(highScoresArray);
            this.updateCommand(this.currentCommand);
            this.setPaintable(this.getHighScoresPaintable());
        } catch (e:*) {
            this.logUtil.put(this.commonStrings.EXCEPTION, this, this.commonStrings.UPDATE, e);
        }
    }
    

    public function updateCommand(command:Command):void {
        this.logUtil.putF(new StringMaker().append(this.commonStrings.START).append(this.stringUtil.toString1(command)).toString(), this, this.commonStrings.UPDATE);
        var gameCommandsFactory:GameCommandsFactory = GameCommandsFactory.getInstance();
        if (this.highScoreCommandsFactory.isHighScoreCommand(command)) {
            var index:int = this.highScoreCommandsFactory.getIndex(command);
            var nextIndex:int = int(index + 1);
            var highScoresArray:Vector.<HighScores> = this.highScoresHelper.getHighScoresArray();
            if (nextIndex >= highScoresArray.length) {
                nextIndex = 0;
            }
            if (highScoresArray.length > 0) {
                this.getHighScoresPaintable().setHighScores(highScoresArray[index]);
            } else {
                this.getHighScoresPaintable().setHighScores(NullHighScoresSingletonFactory.getInstance());
            }
            if (index != nextIndex) {
                this.removeAllCommands();
                this.addCommand(gameCommandsFactory.CLOSE_AND_SHOW_GAME_CANVAS);
                this.addCommand(this.highScoreCommandsFactory.HIGH_SCORE_COMMANDS[nextIndex]);
            }
        }
        this.currentCommand = command;
        this.close();
        super.initMenu();
        this.open();
        this.repaintBehavior.onChangeRepaint(this);
    }
    

    public function getGameInfo():GameInfo {
        return this.gameInfo;
    }
    

    private function setPaintable(paintable:Paintable):void {
        this.paintable = paintable;
        this.repaintBehavior.onChangeRepaint(this);
    }
    }
}

