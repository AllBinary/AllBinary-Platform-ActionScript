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
package org.allbinary.game.ag.layer.hud.basic {
    import org.allbinary.game.graphics.hud.BasicHud;
    import org.allbinary.game.graphics.hud.BasicHudFactory;
    import org.allbinary.graphics.color.BasicColor;
    import org.allbinary.graphics.font.MyFontProcessor;
    import org.allbinary.graphics.paint.PaintableInterface;
    import org.allbinary.logic.math.PrimitiveLongSingleton;
    import org.allbinary.logic.math.PrimitiveLongUtil;

    public class NumberStringHud extends BasicHud implements PaintableInterface {
        private var primitiveLongUtil:PrimitiveLongUtil = null;
        private var prependString:String = null;
        private var PREPEND_STRING:Vector.<int> = null;
        private var value:int = 0;
        private var max:int = 0;
        private var offset:int = 0;
        private var valueString:Vector.<int> = null;
        private var valueTotalDigits:int = 0;

        // Java field initializers run after the base constructor
        private function initFieldsNumberStringHud():void {
    
    
    
    
    
    this.offset = 0;
    
    this.valueTotalDigits = 0;
        }
    

    public function NumberStringHud(prependString:String, max:int, location:int, direction:int, bufferZone:int, basicColor:BasicColor) {
        super(location, direction, bufferZone, basicColor);
        this.initFieldsNumberStringHud();
        this.prependString = prependString;
        this.PREPEND_STRING = JString.toCharArray(prependString);
        this.valueString = PrimitiveLongSingleton.getInstance().NUMBER_CHAR_ARRAYS[0];
        this.primitiveLongUtil = PrimitiveLongUtil.createPowerOfTen(int(max + 1));
        this.max = max;
        this.value = 0;
        if (direction == 0) {
            throw new JException("RuntimeException", BasicHudFactory.getInstance().DIRECTION_EXCEPTION);
        }
    }
    

    override public function updateMeasurement(graphics:Graphics):void {
        var font:Font = graphics.getFont();
        this.offset = font.stringWidth(this.prependString) + MyFontProcessor.defaultCharWidth(font);
        super.updateMeasurement(graphics);
    }
    

    public function get_():int {
        return this.value;
    }
    

    public function add(value:int):void {
        this.set_(int(this.value + value));
    }
    

    public function set_(value:int):void {
        this.value = value;
        if (this.value > this.max) {
            this.value = 0;
        }
        this.valueString = this.primitiveLongUtil.getCharArray(this.value);
        this.valueTotalDigits = this.primitiveLongUtil.getCurrentTotalDigits();
    }
    

    public function reduce(value:int):void {
        this.set_(int(this.value - value));
    }
    

    public function paint(graphics:Graphics):void {
        super.paintDX(graphics, this.PREPEND_STRING, 0, this.PREPEND_STRING.length, this.valueString, 0, this.valueTotalDigits, this.offset);
    }
    

    public function paintXY(graphics:Graphics, x:int, y:int):void {
        this.myFontProcessor.process(graphics);
        var charArray:Vector.<int> = this.PREPEND_STRING;
        var len:int = this.PREPEND_STRING.length;
        var charArray2:Vector.<int> = this.valueString;
        var len2:int = this.valueTotalDigits;
        this.basicSetColorUtil.setBasicColorP(graphics, this.getBasicColorP());
        graphics.drawChars(charArray, 0, len, x, y, 0);
        graphics.drawChars(charArray2, 0, len2, int(x - this.offset), y, 0);
    }
    

    public function paintThreed(graphics:Graphics):void {
    }
    }
}

