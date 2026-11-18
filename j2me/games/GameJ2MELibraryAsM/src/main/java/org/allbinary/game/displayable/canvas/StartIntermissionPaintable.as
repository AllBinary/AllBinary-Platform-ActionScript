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
    import org.allbinary.graphics.Anchor;
    import org.allbinary.graphics.color.BasicColor;
    import org.allbinary.graphics.color.BasicColorFactory;
    import org.allbinary.graphics.color.BasicColorSetUtil;
    import org.allbinary.graphics.displayable.DisplayInfoSingleton;
    import org.allbinary.graphics.font.FontDebugFactory;
    import org.allbinary.graphics.font.MyFontProcessor;
    import org.allbinary.graphics.font.UpdateMyFontInterface;
    import org.allbinary.graphics.font.UpdateMyFontProcessor;
    import org.allbinary.graphics.paint.InitUpdatePaintable;
    import org.allbinary.logic.NullUtil;
    import org.allbinary.logic.string.StringMaker;
    import org.allbinary.logic.string.StringUtil;

    public class StartIntermissionPaintable extends InitUpdatePaintable implements UpdateMyFontInterface {
        public var fontDebugFactory:FontDebugFactory = null;
        public var basicSetColorUtil:BasicColorSetUtil = null;
        public var gameCanvas:AllBinaryGameCanvas = null;
        public var stringArray:Vector.<String> = null;
        public var fontSize:int = 0;
        public var font:Font = null;
        public var lastWidth:Vector.<int> = null;
        private var updateMyFontProcessor:MyFontProcessor = null;
        private var myFontProcessor:MyFontProcessor = null;
        private var basicColor:BasicColor = null;
        private var color:int = 0;
        public var lineYOffsetArray:Vector.<int> = null;
        private var hasChanged:Boolean = false;
        private var anchor:int = 0;
        public var fontHeightP:int = 0;
        private var BEGIN_LEVEL:String = null;
        private var EMPTY_STRING:String = null;

        // Java field initializers run after the base constructor
        private function initFieldsStartIntermissionPaintable():void {
    this.fontDebugFactory = FontDebugFactory.getInstance();
    this.basicSetColorUtil = BasicColorSetUtil.getInstance();
    
    
    
    
    
    this.updateMyFontProcessor = new UpdateMyFontProcessor(this);
    this.myFontProcessor = this.updateMyFontProcessor;
    this.basicColor = BasicColorFactory.getInstance().BLACK;
    
    this.lineYOffsetArray = NullUtil.getInstance().NULL_INT_ARRAY;
    this.hasChanged = true;
    this.anchor = Anchor.TOP_LEFT;
    this.fontHeightP = 0;
    this.BEGIN_LEVEL = "Begin Level ";
    this.EMPTY_STRING = StringUtil.getInstance().EMPTY_STRING;
        }
    

    public function StartIntermissionPaintable(gameCanvas:AllBinaryGameCanvas, stringArray:Vector.<String>, basicColor:BasicColor, font:Font) {
        super();
        this.initFieldsStartIntermissionPaintable();
        this.gameCanvas = gameCanvas;
        this.stringArray = stringArray;
        this.lastWidth = new Vector.<int>(this.stringArray.length);
        this.setBasicColorP(basicColor);
        this.color = basicColor.intValue();
        this.fontSize = font.getSize();
        this.font = font;
    }
    

    public function updateMeasurement(graphics:Graphics):void {
        var font:Font = graphics.getFont();
        this.fontHeightP = font.getHeight();
        this.myFontProcessor = MyFontProcessor.getInstance();
    }
    

    override public function paint(graphics:Graphics):void {
        this.myFontProcessor.process(graphics);
        var existingFont:Font = graphics.getFont();
        this.fontDebugFactory.setFont(this.font, graphics);
        var displayInfo:DisplayInfoSingleton = DisplayInfoSingleton.getInstance();
        this.basicSetColorUtil.setBasicColorP3(graphics, this.basicColor, this.color);
        var beginWidth:int = 0;
        for (var index:int = int(this.lineYOffsetArray.length - 1); index >= 0; index--) {
            if (this.hasChanged) {
                this.lastWidth[index] = (graphics.getFont().stringWidth(this.stringArray[index]) >> 1);
            }
            beginWidth = this.lastWidth[index];
            graphics.drawString(this.stringArray[index], int(displayInfo.getLastHalfWidth() - beginWidth), int(displayInfo.getLastHalfHeight() - this.lineYOffsetArray[index]), this.anchor);
        }
        this.hasChanged = false;
        this.fontDebugFactory.setFont(existingFont, graphics);
    }
    

    override public function update():void {
        var level:int = this.gameCanvas.getLayerManager().getGameInfo().getCurrentLevel();
        this.stringArray[0] = new StringMaker().append(this.BEGIN_LEVEL).appendint(level).toString();
        for (var index:int = int(this.stringArray.length - 1); index >= 1; index--) {
            this.stringArray[index] = this.EMPTY_STRING;
        }
    }
    

    override public function setBasicColorP(basicColor:BasicColor):void {
        this.basicColor = basicColor;
    }
    

    public function getBasicColorP():BasicColor {
        return this.basicColor;
    }
    }
}

