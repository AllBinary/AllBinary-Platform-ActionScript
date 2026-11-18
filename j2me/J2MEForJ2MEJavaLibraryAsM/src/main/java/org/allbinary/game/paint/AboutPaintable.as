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
package org.allbinary.game.paint {
    import org.allbinary.graphics.Anchor;
    import org.allbinary.graphics.displayable.CanvasStrings;
    import org.allbinary.graphics.displayable.DisplayInfoSingleton;
    import org.allbinary.graphics.font.MyFontProcessor;
    import org.allbinary.graphics.font.UpdateMyFontInterface;
    import org.allbinary.graphics.font.UpdateMyFontProcessor;
    import org.allbinary.graphics.paint.Paintable;

    //J2MEForJ2ME
    public class AboutPaintable extends Paintable implements UpdateMyFontInterface {
        private var displayInfoSingleton:DisplayInfoSingleton = null;
        private var ABOUT:String = null;
        private var info:Vector.<String> = null;
        private var developers:Vector.<String> = null;
        private var paintableArray:Vector.<Paintable> = null;
        private var myFontProcessor:MyFontProcessor = null;
        private var charHeight:int = 0;
        private var aboutBeginWidth:int = 0;
        private var infoBeginWidth:Vector.<int> = null;
        private var developersBeginWidth:Vector.<int> = null;
        private var anchor:int = 0;

        // Java field initializers run after the base constructor
        private function initFieldsAboutPaintable():void {
    this.displayInfoSingleton = DisplayInfoSingleton.getInstance();
    this.ABOUT = CanvasStrings.getInstance().ABOUT;
    
    
    this.paintableArray = new <Paintable>[this];
    this.myFontProcessor = new UpdateMyFontProcessor(this);
    this.charHeight = 0;
    this.aboutBeginWidth = 0;
    
    
    this.anchor = Anchor.TOP_LEFT;
        }
    

    public static function getInstance2(info:Vector.<String>, developers:Vector.<String>):AboutPaintable {
        return new AboutPaintable(info, developers);
    }
    

    public function AboutPaintable(info:Vector.<String>, developers:Vector.<String>) {
        super();
        this.initFieldsAboutPaintable();
        this.info = info;
        this.infoBeginWidth = new Vector.<int>(this.info.length);
        this.developers = developers;
        this.developersBeginWidth = new Vector.<int>(this.developers.length);
    }
    

    public function updateMeasurement(graphics:Graphics):void {
        var font:Font = graphics.getFont();
        this.charHeight = font.getHeight();
        this.aboutBeginWidth = (font.stringWidth(this.ABOUT) >> 1);
        var infoSize:int = this.info.length;
        for (var index:int = 0; index < infoSize; index++) {
            this.infoBeginWidth[index] = (font.stringWidth(this.info[index]) >> 1);
        }
        var size:int = this.developers.length;
        for (index = 0; index < size; index++) {
            this.developersBeginWidth[index] = (font.stringWidth(this.developers[index]) >> 1);
        }
        this.myFontProcessor = MyFontProcessor.getInstance();
    }
    

    public function getPaintableArrayInstance():Vector.<Paintable> {
        return this.paintableArray;
    }
    

    override public function paint(graphics:Graphics):void {
        this.myFontProcessor.process(graphics);
        var halfWidth:int = this.displayInfoSingleton.getLastHalfWidth();
        graphics.drawString(this.ABOUT, int(halfWidth - this.aboutBeginWidth), int(2 * this.charHeight), this.anchor);
        var infoSize:int = this.info.length;
        for (var index:int = 0; index < infoSize; index++) {
            graphics.drawString(this.info[index], int(halfWidth - this.infoBeginWidth[index]), int((int(4 + index)) * this.charHeight), this.anchor);
        }
        var size:int = this.developers.length;
        for (index = 0; index < size; index++) {
            graphics.drawString(this.developers[index], int(halfWidth - this.developersBeginWidth[index]), int((int(int(5 + infoSize) + index)) * this.charHeight), this.anchor);
        }
    }
    }
}

