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
    import org.allbinary.AppletUtil;
    import org.allbinary.graphics.Anchor;
    import org.allbinary.graphics.displayable.DisplayInfoSingleton;
    import org.allbinary.graphics.font.MyFontProcessor;
    import org.allbinary.graphics.font.UpdateMyFontInterface;
    import org.allbinary.graphics.font.UpdateMyFontProcessor;
    import org.allbinary.graphics.paint.Paintable;
    import org.allbinary.input.motion.button.TouchScreenFactory;
    import org.allbinary.logic.string.StringUtil;
    import org.allbinary.time.TimeDelayHelper;

    public class PressStartMenuPaintable extends Paintable implements UpdateMyFontInterface {
        private var displayInfo:DisplayInfoSingleton = null;
        private var PRESS_START:String = null;
        private var KEY_START:String = null;
        private var MENU_START:String = null;
        private var myFontProcessor:MyFontProcessor = null;
        private var startString:String = null;
        private var timeDelayHelper:TimeDelayHelper = null;
        private var flash:Boolean = false;
        private var anchor:int = 0;
        private var beginWidth:int = 0;
        private var line:int = 0;

        // Java field initializers run after the base constructor
        private function initFieldsPressStartMenuPaintable():void {
    this.displayInfo = DisplayInfoSingleton.getInstance();
    this.PRESS_START = "Press Screen To Start";
    this.KEY_START = "Press or Click F2 To Begin";
    this.MENU_START = "Press Start From The Menu To Begin";
    this.myFontProcessor = new UpdateMyFontProcessor(this);
    this.startString = StringUtil.getInstance().EMPTY_STRING;
    this.timeDelayHelper = new TimeDelayHelper(1100);
    this.flash = false;
    this.anchor = Anchor.TOP_LEFT;
    this.beginWidth = 0;
    this.line = 0;
        }
    

    public function PressStartMenuPaintable() {
        super();
        this.initFieldsPressStartMenuPaintable();
        if (TouchScreenFactory.getInstance().isTouch()) {
            this.startString = this.PRESS_START;
        } else if (AppletUtil.isAppletLoader(this)) {
            this.startString = this.KEY_START;
        } else {
            this.startString = this.MENU_START;
        }
    }
    

    public function updateMeasurement(graphics:Graphics):void {
        var font:Font = graphics.getFont();
        this.beginWidth = (graphics.getFont().stringWidth(this.startString) >> 1);
        this.line = int((int(4 * MyFontProcessor.defaultCharWidth(font))) + (font.getHeight() >> 1));
        this.myFontProcessor = MyFontProcessor.getInstance();
    }
    

    override public function paint(...args):void {
        if (args.length == 1) {
            this.paint_jo1(args[0]);
            return;
        }
        super.paint.apply(this, args);
    }

    private function paint_jo1(graphics:Graphics):void {
        if (this.timeDelayHelper.isTimeTNT()) {
            if (this.isFlash()) {
                this.setFlash(false);
            } else {
                this.setFlash(true);
            }
        }
        if (this.isFlash()) {
            this.myFontProcessor.process(graphics);
            graphics.drawString(this.startString, int(this.displayInfo.getLastHalfWidth() - this.beginWidth), int(this.displayInfo.getLastHeight() - this.line), this.anchor);
        }
    }
    

    private function setFlash(flash:Boolean):void {
        this.flash = flash;
    }
    

    private function isFlash():Boolean {
        return this.flash;
    }
    }
}

