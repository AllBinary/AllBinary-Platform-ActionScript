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
package org.allbinary.game.ag.layer.hud.basic.level {
    import org.allbinary.game.graphics.hud.BasicHud;
    import org.allbinary.graphics.color.BasicColorFactory;
    import org.allbinary.graphics.paint.PaintableInterface;
    import org.allbinary.logic.NullUtil;
    import org.allbinary.logic.math.PrimitiveLongUtil;

    public class LevelHudWidget extends BasicHud implements PaintableInterface {
        private var level:int = 0;
        private var maxlevel:int = 0;
        private var levelString:Vector.<int> = null;
        private var levelNumberCharArray:Vector.<int> = null;
        private var levelNumberTotalDigits:int = 0;
        private var offset:int = 0;
        private var primitiveLongUtil:PrimitiveLongUtil = null;

        // Java field initializers run after the base constructor
        private function initFieldsLevelHudWidget():void {
    
    
    
    this.levelNumberCharArray = NullUtil.getInstance().NULL_CHAR_ARRAY;
    this.levelNumberTotalDigits = 0;
    this.offset = 0;
    
        }
    

    public static function createHud(maxlevel:int, location:int, direction:int):LevelHudWidget {
        return new LevelHudWidget(maxlevel, location, direction);
    }
    

    public function LevelHudWidget(maxlevel:int, location:int, direction:int) {
        super(location, direction, 2, BasicColorFactory.getInstance().GREY);
        this.initFieldsLevelHudWidget();
        this.primitiveLongUtil = PrimitiveLongUtil.createPowerOfTen(1000);
        var LEVEL:String = "Lv ";
        this.levelString = JString.toCharArray(LEVEL);
        this.maxlevel = maxlevel;
        this.level = maxlevel;
        this.update();
        this.updateMaxHeight = 14;
    }
    

    override public function updateMeasurement(graphics:Graphics):void {
        var font:Font = graphics.getFont();
        this.updateMaxWidth = font.getSize() * 4;
        this.offset = font.charsWidth(this.levelString, 0, this.levelString.length) + font.getSize();
        super.updateMeasurement(graphics);
    }
    

    private function update():void {
        this.levelNumberCharArray = this.primitiveLongUtil.getCharArray(this.level);
        this.levelNumberTotalDigits = this.primitiveLongUtil.getCurrentTotalDigits();
    }
    

    public function setLevel(level:int):void {
        this.level = level;
        this.update();
    }
    

    public function nextLevel():void {
        this.level++;
        this.update();
    }
    

    public function previousLevel():void {
        this.level--;
        if (this.level < 0) {
            this.level = 0;
        }
        this.update();
    }
    

    public function isComplete():Boolean {
        if (this.level <= this.maxlevel) {
            return false;
        } else {
            return true;
        }
    }
    

    public function paint(graphics:Graphics):void {
        super.paintDX(graphics, this.levelString, 0, this.levelString.length, this.levelNumberCharArray, 0, this.levelNumberTotalDigits, this.offset);
    }
    

    public function paintThreed(graphics:Graphics):void {
    }
    }
}

