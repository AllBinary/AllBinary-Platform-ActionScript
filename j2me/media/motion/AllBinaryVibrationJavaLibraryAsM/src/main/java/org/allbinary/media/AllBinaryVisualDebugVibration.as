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
package org.allbinary.media {
    import javax.microedition.lcdui.Font;
    import javax.microedition.lcdui.Graphics;
    import org.allbinary.graphics.Anchor;
    import org.allbinary.graphics.displayable.DisplayInfoSingleton;
    import org.allbinary.graphics.font.MyFontProcessor;
    import org.allbinary.graphics.font.UpdateMyFontInterface;
    import org.allbinary.graphics.font.UpdateMyFontProcessor;
    import org.allbinary.time.TimeDelayHelper;
    import java.lang.JInteger;

    public class AllBinaryVisualDebugVibration extends AllBinaryVibrationME implements UpdateMyFontInterface {
        private var displayInfoSingleton:DisplayInfoSingleton = null;
        private var timeDelayHelper:TimeDelayHelper = null;
        private var VIBRATING:String = null;
        private var myFontProcessor:MyFontProcessor = null;
        private var anchor:int = 0;
        private var width:int = 0;

        // Java field initializers run after the base constructor
        private function initFieldsAllBinaryVisualDebugVibration():void {
    this.displayInfoSingleton = DisplayInfoSingleton.getInstance();
    this.timeDelayHelper = new TimeDelayHelper(JInteger.MAX_VALUE);
    this.VIBRATING = "Vibrating";
    this.myFontProcessor = new UpdateMyFontProcessor(this);
    this.anchor = Anchor.TOP_LEFT;
    this.width = 0;
        }

        public function AllBinaryVisualDebugVibration() {
            super();
            this.initFieldsAllBinaryVisualDebugVibration();
        }
    

    public function updateMeasurement(graphics:Graphics):void {
        var font:Font = graphics.getFont();
        this.width = font.stringWidth(this.VIBRATING);
        this.myFontProcessor = MyFontProcessor.getInstance();
    }
    

    override public function vibrate(duration:int, type:int, volume:int):void {
        this.timeDelayHelper.delay = duration;
    }
    

    public function paint(...args):void {
        if (args.length == 1) {
            this.paint_jo1(args[0]);
            return;
        }
        throw new JException("IllegalArgumentException", "paint");
    }

    private function paint_jo1(graphics:Graphics):void {
        if (this.timeDelayHelper.isTimeTNT()) {
            this.timeDelayHelper.delay = JInteger.MAX_VALUE;
            this.myFontProcessor.process(graphics);
            graphics.drawString(this.VIBRATING, int(this.displayInfoSingleton.getLastHalfWidth() - (this.width >> 1)), 0, this.anchor);
        }
    }
    }
}

