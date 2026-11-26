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
package org.allbinary.graphics.canvas.transition.progress {
    import javax.microedition.lcdui.CommandListener;
    import javax.microedition.lcdui.Font;
    import javax.microedition.lcdui.Graphics;
    import javax.microedition.lcdui.NullCanvas;
    import javax.microedition.lcdui.NullCommandListener;
    import org.allbinary.canvas.Processor;
    import org.allbinary.canvas.RunnableCanvas;
    import org.allbinary.game.commands.GameCommandsFactory;
    import org.allbinary.graphics.color.BasicColor;
    import org.allbinary.graphics.displayable.CanvasStrings;
    import org.allbinary.graphics.font.MyFontProcessor;
    import org.allbinary.graphics.font.UpdateMyFontInterface;
    import org.allbinary.graphics.font.UpdateMyFontProcessor;
    import org.allbinary.graphics.form.item.ABCustomGaugeItem;
    import org.allbinary.graphics.paint.NullPaintable;
    import org.allbinary.graphics.paint.Paintable;
    import org.allbinary.graphics.paint.PaintableInterface;
    import org.allbinary.logic.communication.log.PreLogUtil;
    import org.allbinary.logic.math.SmallIntegerSingletonFactory;
    import org.allbinary.logic.string.StringMaker;
    import org.allbinary.logic.string.StringUtil;
    import org.allbinary.midlet.AllBinaryMidlet;
    import org.allbinary.thread.PathFindingThreadPool;
    import org.allbinary.thread.ThreadPool;

    public class ProgressCanvas extends RunnableCanvas implements PaintableInterface, UpdateMyFontInterface {
        public var hasPainted:Boolean = false;
        private var backgroundBasicColor:BasicColor = null;
        public var GAUGE_PAINTABLE:Paintable = null;
        private var maxValue:Number = 0.0;
        public var gauge:ABCustomGaugeItem = null;
        private var TEXT:String = null;
        private var updateMyFontProcessor:MyFontProcessor = null;
        private var myFontProcessor:MyFontProcessor = null;
        public var allbinaryMidlet:AllBinaryMidlet = null;
        private var value:Number = 0.0;
        private var text:String = null;
        private var background:Boolean = false;
        public var paintable:PaintableInterface = null;
        public var inProgress:Boolean = false;
        private var IN_GAME_PROCESSOR:Processor = null;
        public var inGameProcessor:Processor = null;
        public var progressEndListener:ProgressEndListener = null;
        private var backgroundLabel:String = null;
        private var START_BACKGROUND:String = null;
        public var ADD_PORTION:String = null;
        public var ADD_EARLY_PORTION:String = null;

        // Java field initializers run after the base constructor
        private function initFieldsProgressCanvas():void {
    this.hasPainted = false;
    
    this.GAUGE_PAINTABLE = new ProgressPaintable(this);
    this.maxValue = 100.0;
    
    this.TEXT = this.commonStrings.LOADING;
    this.updateMyFontProcessor = new UpdateMyFontProcessor(this);
    this.myFontProcessor = this.updateMyFontProcessor;
    this.allbinaryMidlet = AllBinaryMidlet.getNullInstance();
    this.value = 0.0;
    this.text = this.TEXT;
    this.background = true;
    this.paintable = this.GAUGE_PAINTABLE;
    this.inProgress = false;
    this.IN_GAME_PROCESSOR = new ProgressCanvas_1(this);
    this.inGameProcessor = Processor.getInstance();
    this.progressEndListener = ProgressEndListener.instance;
    this.backgroundLabel = "Background AI Game Loading...";
    this.START_BACKGROUND = "startBackground";
    this.ADD_PORTION = "addPortion";
    this.ADD_EARLY_PORTION = "addEarlyPortion";
        }
    

    public function ProgressCanvas(title:String, backgroundBasicColor:BasicColor, foregroundBasicColor:BasicColor) {
        super(NullCommandListener.NULL_COMMAND_LISTENER, CanvasStrings.getInstance().EMPTY_CHILD_NAME_LIST, false);
        this.initFieldsProgressCanvas();
        this.backgroundBasicColor = backgroundBasicColor;
        this.gauge = new ABCustomGaugeItem(StringUtil.getInstance().EMPTY_STRING, JMath.toInt32(this.maxValue), 0, backgroundBasicColor, foregroundBasicColor);
    }
    

    public function updateMeasurement(graphics:Graphics):void {
        var font:Font = graphics.getFont();
        this.gauge.setHeight(int(font.getHeight() + 2));
        this.myFontProcessor = MyFontProcessor.getInstance();
    }
    

    public function init(...args):void {
        if (args.length == 1) {
            this.init_jo1(args[0]);
            return;
        }
        throw new JException("IllegalArgumentException", "init");
    }

    private function init_jo1(gameMidlet:AllBinaryMidlet):void {
        this.allbinaryMidlet = gameMidlet;
    }
    

    public function update(...args):void {
        if (args.length == 1) {
            this.update_jo1(args[0]);
            return;
        }
        throw new JException("IllegalArgumentException", "update");
    }

    private function update_jo1(graphics:Graphics):void {
    }
    

    override public function initCommands(cmdListener:CommandListener):void {
    }
    

    public function getMaxValue():Number {
        return this.maxValue;
    }
    

    public function start():void {
        this.logUtil.putF(this.commonStrings.START, this, this.commonStrings.START_METHOD_NAME);
        this.setBackground(true);
        this.gauge.setHeight(30);
        this.gauge.setLabel(this.commonStrings.PLEASE_WAIT);
        this.setText(this.TEXT);
        this.setValue(0);
        this.inGameProcessor = Processor.getInstance();
        this.paintable = this.GAUGE_PAINTABLE;
        this.inProgress = true;
    }
    

    public function startBackground(background:Boolean):void {
        this.logUtil.putF(this.commonStrings.START, this, this.START_BACKGROUND);
        this.setBackground(background);
        this.myFontProcessor = this.updateMyFontProcessor;
        this.gauge.setLabel(this.backgroundLabel);
        this.setText(this.TEXT);
        this.setValue(0);
        this.inGameProcessor = Processor.getInstance();
        this.paintable = this.GAUGE_PAINTABLE;
    }
    

    public function endActual():void {
        this.allbinaryMidlet.commandAction(GameCommandsFactory.getInstance().SHOW_GAME_CANVAS, NullCanvas.NULL_CANVAS);
        this.inProgress = false;
        this.inGame();
    }
    

    public function inGame():void {
        this.progressEndListener.onEndEvent();
        this.inGameProcessor = this.IN_GAME_PROCESSOR;
    }
    

    public function end():void {
        this.logUtil.putF(this.commonStrings.START, this, this.commonStrings.END_METHOD_NAME);
        this.gauge.setValue(this.getMaxValue());
        this.endActual();
        this.paintable = NullPaintable.getInstance();
    }
    

    public function endFromInitialLazyLoadingComplete():void {
        this.progressEndListener.onEndEvent();
        this.gauge.setValue(this.getMaxValue());
        this.inGameProcessor = this.IN_GAME_PROCESSOR;
    }
    

    public function isInGame():Boolean {
        if (this.inGameProcessor === this.IN_GAME_PROCESSOR) {
            return true;
        }
        return false;
    }
    

    public function endIfPaintedSinceStart():void {
    }
    

    public function addEarlyPortion(value:int, text:String, index:int):void {
        this.setText(new StringMaker().append(text).append(SmallIntegerSingletonFactory.getInstance().getAt(index).toString()).toString());
        this.gauge.setValue(this.gauge.getValue() + this.getMaxValue() / Number(value));
    }
    

    public function addPortion(value:int, text:String, index:int):void {
        this.setText(new StringMaker().append(text).append(SmallIntegerSingletonFactory.getInstance().getAt(index).toString()).toString());
        PreLogUtil.put(this.text, this, this.ADD_PORTION);
        this.gauge.setValue(this.gauge.getValue() + this.getMaxValue() / Number(value));
    }
    

    public function addNormalPortion(value:int, text:String):void {
        if (this.text != text) {
            PreLogUtil.put(text, this, this.ADD_PORTION);
        }
        this.setText(text);
        this.gauge.setValue(this.gauge.getValue() + this.getMaxValue() / Number(value));
    }
    

    public function setValue(value:int):void {
        this.value = Number(value);
        this.gauge.setValue(Number(value));
    }
    

    override public function paint(...args):void {
        if (args.length == 1) {
            this.paint_jo1(args[0]);
            return;
        }
        super.paint.apply(this, args);
    }

    private function paint_jo1(graphics:Graphics):void {
        this.paintable.paint(graphics);
    }
    

    public function paint2(graphics:Graphics):void {
        this.myFontProcessor.process(graphics);
        graphics.setColor(this.backgroundBasicColor.intValue());
        graphics.fillRect(0, 0, this.displayInfo.getLastWidth(), this.displayInfo.getLastHeight());
        this.gauge.paintXY(graphics, 0, 0);
        this.hasPainted = true;
    }
    

    public function paintThreed(graphics:Graphics):void {
    }
    

    public function getValue():Number {
        return this.value;
    }
    

    public function setText(text:String):void {
        this.text = text;
    }
    

    public function getText():String {
        return this.text;
    }
    

    public function setBackground(background:Boolean):void {
        this.background = background;
    }
    

    public function isBackground():Boolean {
        return this.background;
    }
    }
}

