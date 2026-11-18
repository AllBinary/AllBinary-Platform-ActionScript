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
package org.allbinary.graphics.paint {
    import org.allbinary.graphics.Anchor;
    import org.allbinary.graphics.color.BasicColor;
    import org.allbinary.graphics.displayable.DisplayInfoSingleton;
    import org.allbinary.graphics.font.MyFontProcessor;
    import org.allbinary.graphics.font.UpdateMyFontInterface;
    import org.allbinary.graphics.font.UpdateMyFontProcessor;

    public class SimpleTextPaintable extends Paintable implements UpdateMyFontInterface {
        private var displayInfoSingleton:DisplayInfoSingleton = null;
        private var updateMyFontProcessor:MyFontProcessor = null;
        private var myFontProcessor:MyFontProcessor = null;
        private var text:String = null;
        private var basicColor:BasicColor = null;
        private var topScoresWidth:int = 0;
        private var fontHeight:int = 0;
        private var anchor:int = 0;

        // Java field initializers run after the base constructor
        private function initFieldsSimpleTextPaintable():void {
    this.displayInfoSingleton = DisplayInfoSingleton.getInstance();
    this.updateMyFontProcessor = new UpdateMyFontProcessor(this);
    this.myFontProcessor = this.updateMyFontProcessor;
    
    
    this.topScoresWidth = 0;
    this.fontHeight = 0;
    this.anchor = Anchor.TOP_LEFT;
        }
    

    public function SimpleTextPaintable(text:String, basicColor:BasicColor) {
        super();
        this.initFieldsSimpleTextPaintable();
        this.text = text;
        this.basicColor = basicColor;
    }
    

    public function updateMeasurement(graphics:Graphics):void {
        var font:Font = graphics.getFont();
        this.topScoresWidth = (font.stringWidth(this.text) >> 1);
        this.fontHeight = font.getHeight();
        this.myFontProcessor = MyFontProcessor.getInstance();
    }
    

    override public function paint(graphics:Graphics):void {
        this.myFontProcessor.process(graphics);
        var width:int = this.displayInfoSingleton.getLast()[this.displayInfoSingleton.WIDTH];
        graphics.setColor(this.getBasicColorP().intValue());
        graphics.drawString(this.text, int((width >> 1) - this.topScoresWidth), this.fontHeight, this.anchor);
    }
    

    override public function setBasicColorP(basicColor:BasicColor):void {
        this.basicColor = basicColor;
    }
    

    private function getBasicColorP():BasicColor {
        return this.basicColor;
    }
    

    public function setText(text:String):void {
        this.text = text;
        this.myFontProcessor = this.updateMyFontProcessor;
    }
    

    public function getText():String {
        return this.text;
    }
    }
}

