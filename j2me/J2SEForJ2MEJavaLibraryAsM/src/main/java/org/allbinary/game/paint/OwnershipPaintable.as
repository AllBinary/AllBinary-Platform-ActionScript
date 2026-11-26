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
    import javax.microedition.lcdui.Font;
    import javax.microedition.lcdui.Graphics;
    import org.allbinary.graphics.Anchor;
    import org.allbinary.graphics.color.BasicColor;
    import org.allbinary.graphics.color.BasicColorFactory;
    import org.allbinary.graphics.displayable.DisplayInfoSingleton;
    import org.allbinary.graphics.font.MyFontProcessor;
    import org.allbinary.graphics.font.UpdateMyFontInterface;
    import org.allbinary.graphics.font.UpdateMyFontProcessor;
    import org.allbinary.graphics.paint.Paintable;
    import org.allbinary.logic.communication.log.LogUtil;

    //J2SEForJ2ME
    public class OwnershipPaintable extends Paintable implements UpdateMyFontInterface {
        public var logUtil:LogUtil = null;
        private var displayInfo:DisplayInfoSingleton = null;
        private var myFontProcessor:MyFontProcessor = null;
        private var COPYRIGHT:String = null;
        private var basicColor:BasicColor = null;
        private var color:int = 0;
        private var anchor:int = 0;
        private var COPYRIGHT_Y:int = 0;
        private var beginWidth:int = 0;

        // Java field initializers run after the base constructor
        private function initFieldsOwnershipPaintable():void {
    this.logUtil = LogUtil.getInstance();
    this.displayInfo = DisplayInfoSingleton.getInstance();
    this.myFontProcessor = new UpdateMyFontProcessor(this);
    this.COPYRIGHT = "AllBinary Copyright (c) 2011";
    this.basicColor = BasicColorFactory.getInstance().WHITE;
    this.color = this.basicColor.intValue();
    this.anchor = Anchor.TOP_LEFT;
    this.COPYRIGHT_Y = 0;
    this.beginWidth = 0;
        }
    

    public static function getInstance():OwnershipPaintable {
        return new OwnershipPaintable();
    }
    

    public function OwnershipPaintable() {
        super();
        this.initFieldsOwnershipPaintable();
    }
    

    public function updateMeasurement(graphics:Graphics):void {
        var font:Font = graphics.getFont();
        this.COPYRIGHT_Y = int(2 * font.getHeight());
        this.beginWidth = (font.stringWidth(this.COPYRIGHT) >> 1);
        this.myFontProcessor = MyFontProcessor.getInstance();
    }
    

    override public function setBasicColorP(basicColor:BasicColor):void {
        this.basicColor = basicColor;
        this.color = basicColor.intValue();
    }
    

    public function getBasicColorP():BasicColor {
        return this.basicColor;
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
        graphics.setColor(this.color);
        var halfWidth:int = this.displayInfo.getLastHalfWidth();
        var height:int = this.displayInfo.getLastHeight();
        graphics.drawString(this.COPYRIGHT, int(halfWidth - this.beginWidth), int(height - this.COPYRIGHT_Y), this.anchor);
    }
    }
}

