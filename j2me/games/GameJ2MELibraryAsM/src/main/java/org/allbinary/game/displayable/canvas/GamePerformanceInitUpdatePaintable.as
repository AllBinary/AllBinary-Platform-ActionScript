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
    import org.allbinary.canvas.GameStatisticsFactory;
    import org.allbinary.graphics.color.BasicColorFactory;
    import org.allbinary.graphics.displayable.DisplayInfoSingleton;
    import org.allbinary.graphics.font.MyFontProcessor;
    import org.allbinary.graphics.font.UpdateMyFontInterface;
    import org.allbinary.graphics.font.UpdateMyFontProcessor;
    import org.allbinary.graphics.paint.InitUpdatePaintable;

    public class GamePerformanceInitUpdatePaintable extends InitUpdatePaintable implements UpdateMyFontInterface {
        private var halfHeight:int = 0;
        private var yArray:Vector.<int> = null;
        private var myFontProcessor:MyFontProcessor = null;
        private var baseRefreshHelperCharArray:Vector.<Vector.<int>> = null;
        private var defaultStringWidth:int = 0;
        private var RED:int = 0;

        // Java field initializers run after the base constructor
        private function initFieldsGamePerformanceInitUpdatePaintable():void {
    this.halfHeight = DisplayInfoSingleton.getInstance().getLastHalfHeight();
    this.yArray = new <int>[int(this.halfHeight + 30), int(this.halfHeight + 30), int(int(this.halfHeight + 30) + 15), int(int(this.halfHeight + 30) + 15), int(int(this.halfHeight + 30) + 30), int(int(this.halfHeight + 30) + 30), int(int(this.halfHeight + 30) + 45), int(int(this.halfHeight + 30) + 45)];
    this.myFontProcessor = new UpdateMyFontProcessor(this);
    this.baseRefreshHelperCharArray = (function():Vector.<Vector.<int>> { var array:Vector.<Vector.<int>> = new Vector.<Vector.<int>>(0); for (var index:int = 0; index < array.length; index++) { array[index] = new Vector.<int>(0); } return array; })();
    this.defaultStringWidth = 0;
    this.RED = BasicColorFactory.getInstance().RED.intValue();
        }

        public function GamePerformanceInitUpdatePaintable() {
            super();
            this.initFieldsGamePerformanceInitUpdatePaintable();
        }
    

    public function updateMeasurement(graphics:Graphics):void {
        var font:Font = graphics.getFont();
        this.defaultStringWidth = MyFontProcessor.defaultStringWidth(font, 2);
        this.myFontProcessor = MyFontProcessor.getInstance();
    }
    

    override public function init():void {
    }
    

    override public function update():void {
        this.baseRefreshHelperCharArray = GameStatisticsFactory.getInstance().to2DCharArray();
    }
    

    override public function paint(graphics:Graphics):void {
        this.myFontProcessor.process(graphics);
        graphics.setColor(this.RED);
        var charArray:Vector.<int> = null;
        var charArray2:Vector.<int> = null;
        var size2:int = 0;
        var size3:int = 0;
        var size:int = int(this.baseRefreshHelperCharArray.length - 2);
        for (var index:int = size; index >= 0; index -= 2) {
            charArray = this.baseRefreshHelperCharArray[index];
            charArray2 = this.baseRefreshHelperCharArray[int(index + 1)];
            size2 = charArray.length;
            size3 = charArray2.length;
            graphics.drawChars(charArray, 0, size2, 0, this.yArray[index], 0);
            graphics.drawChars(charArray2, 0, size3, int(size2 * this.defaultStringWidth), this.yArray[int(index + 1)], 0);
        }
    }
    }
}

