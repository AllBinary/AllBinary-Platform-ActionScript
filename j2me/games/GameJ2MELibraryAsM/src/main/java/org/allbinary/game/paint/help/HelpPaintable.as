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
package org.allbinary.game.paint.help {
    import org.allbinary.graphics.Anchor;
    import org.allbinary.graphics.color.BasicColor;
    import org.allbinary.graphics.displayable.DisplayInfoSingleton;
    import org.allbinary.graphics.font.MyFontProcessor;
    import org.allbinary.graphics.font.UpdateMyFontInterface;
    import org.allbinary.graphics.font.UpdateMyFontProcessor;
    import org.allbinary.graphics.paint.Paintable;
    import org.allbinary.logic.NullUtil;
    import org.allbinary.logic.string.StringUtil;

    public class HelpPaintable extends Paintable implements UpdateMyFontInterface {
        public var displayInfo:DisplayInfoSingleton = null;
        public var updateMyFontProcessor:MyFontProcessor = null;
        public var myFontProcessor:MyFontProcessor = null;
        public var anchor:int = 0;
        public var title:String = null;
        public var inputInfo:Vector.<String> = null;
        public var basicColor:BasicColor = null;
        public var titleBeginWidth:int = 0;
        private var beginWidthArray:Vector.<int> = null;
        private var charHeight:int = 0;

        // Java field initializers run after the base constructor
        private function initFieldsHelpPaintable():void {
    this.displayInfo = DisplayInfoSingleton.getInstance();
    this.updateMyFontProcessor = new UpdateMyFontProcessor(this);
    this.myFontProcessor = this.updateMyFontProcessor;
    this.anchor = Anchor.TOP_LEFT;
    
    this.inputInfo = StringUtil.getInstance().getArrayInstance();
    
    this.titleBeginWidth = 0;
    this.beginWidthArray = NullUtil.getInstance().NULL_INT_ARRAY;
    this.charHeight = 0;
        }
    

    public function HelpPaintable(title:String, backgroundBasicColor:BasicColor, basicColor:BasicColor) {
        super();
        this.initFieldsHelpPaintable();
        this.title = title;
        this.basicColor = basicColor;
    }
    

    public function updateMeasurement(graphics:Graphics):void {
        var font:Font = graphics.getFont();
        this.titleBeginWidth = (font.stringWidth(this.title) >> 1);
        this.charHeight = font.getHeight();
        var size:int = this.inputInfo.length;
        for (var index:int = 0; index < size; index++) {
            this.beginWidthArray[index] = (font.stringWidth(this.inputInfo[index]) >> 1);
        }
        this.myFontProcessor = MyFontProcessor.getInstance();
    }
    

    public function setInputInfoP(inputInfo:Vector.<String>):void {
        this.inputInfo = inputInfo;
        this.beginWidthArray = new Vector.<int>(this.inputInfo.length);
        this.myFontProcessor = this.updateMyFontProcessor;
    }
    

    override public function paint(graphics:Graphics):void {
        this.myFontProcessor.process(graphics);
        var halfWidth:int = this.displayInfo.getLastHalfWidth();
        graphics.setColor(this.basicColor.intValue());
        graphics.drawString(this.title, int(halfWidth - this.titleBeginWidth), this.charHeight, this.anchor);
        var size:int = this.inputInfo.length;
        for (var index:int = 0; index < size; index++) {
            graphics.drawString(this.inputInfo[index], int(halfWidth - this.beginWidthArray[index]), int((int(index + 3)) * this.charHeight), this.anchor);
        }
    }
    }
}

