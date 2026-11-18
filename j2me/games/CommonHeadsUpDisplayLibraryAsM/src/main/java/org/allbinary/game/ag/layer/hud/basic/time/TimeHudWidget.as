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
package org.allbinary.game.ag.layer.hud.basic.time {
    import org.allbinary.game.graphics.hud.BasicHud;
    import org.allbinary.graphics.color.BasicColor;
    import org.allbinary.graphics.font.MyFontProcessor;
    import org.allbinary.logic.math.PrimitiveLongSingleton;

    public class TimeHudWidget extends BasicHud {
        private var TIME_STRING:String = null;
        private var TIME_CHAR_ARRAY:Vector.<int> = null;
        private var offset:int = 0;
        private var string:Vector.<int> = null;
        private var totalDigits:int = 0;
        private var timer:HudTimer = null;

        // Java field initializers run after the base constructor
        private function initFieldsTimeHudWidget():void {
    this.TIME_STRING = "Time ";
    this.TIME_CHAR_ARRAY = new <int>["T".charCodeAt(0), "i".charCodeAt(0), "m".charCodeAt(0), "e".charCodeAt(0), " ".charCodeAt(0)];
    this.offset = 0;
    this.string = PrimitiveLongSingleton.getInstance().ZERO;
    this.totalDigits = 1;
    
        }
    

    public static function getInstance4(location:int, direction:int, basicColor:BasicColor, timer:HudTimer):TimeHudWidget {
        return new TimeHudWidget(location, direction, 2, basicColor, timer);
    }
    

    public function TimeHudWidget(location:int, direction:int, bufferZone:int, basicColor:BasicColor, timer:HudTimer) {
        super(location, direction, bufferZone, basicColor);
        this.initFieldsTimeHudWidget();
        this.timer = timer;
        this.set_();
        this.updateMaxHeight = 14;
    }
    

    override public function updateMeasurement(graphics:Graphics):void {
        var font:Font = graphics.getFont();
        this.updateMaxWidth = font.getSize() * 5;
        this.offset = font.stringWidth(this.TIME_STRING) + MyFontProcessor.defaultStringWidth(font, 3);
        super.updateMeasurement(graphics);
    }
    

    public function update():void {
        this.timer.update();
        this.set_();
    }
    

    private function set_():void {
        this.string = this.timer.getTimeChars();
        this.totalDigits = this.timer.getCurrentTotalDigits();
    }
    

    public function getTimer():HudTimer {
        return this.timer;
    }
    

    public function paint(graphics:Graphics):void {
        super.paintDX(graphics, this.TIME_CHAR_ARRAY, 0, this.TIME_CHAR_ARRAY.length, this.string, 0, this.totalDigits, this.offset);
    }
    }
}

