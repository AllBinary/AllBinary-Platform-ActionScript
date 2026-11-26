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
package org.allbinary.animation.vector {
    import javax.microedition.lcdui.Graphics;
    import org.allbinary.animation.Animation;
    import org.allbinary.graphics.color.BasicColor;
    import org.allbinary.graphics.color.ColorCompositeInterface;
    import org.allbinary.layer.PositionInterface;
    import org.allbinary.logic.NullUtil;

    public class LineAnimation extends Animation implements ColorCompositeInterface, PositionInterface {
        private var newLine:Vector.<Vector.<int>> = null;
        private var tempLine:Vector.<Vector.<int>> = null;
        private var line:Vector.<Vector.<int>> = null;

        // Java field initializers run after the base constructor
        private function initFieldsLineAnimation():void {
    this.newLine = (function():Vector.<Vector.<int>> { var array:Vector.<Vector.<int>> = new Vector.<Vector.<int>>(2); for (var index:int = 0; index < array.length; index++) { array[index] = new Vector.<int>(2); } return array; })();
    this.tempLine = NullUtil.getInstance().NULL_INT_ARRAY_ARRAY;
    this.line = (function():Vector.<Vector.<int>> { var array:Vector.<Vector.<int>> = new Vector.<Vector.<int>>(2); for (var index:int = 0; index < array.length; index++) { array[index] = new Vector.<int>(2); } return array; })();
        }
    

    public function LineAnimation(basicColor:BasicColor) {
        super();
        this.initFieldsLineAnimation();
        this.setBasicColorP(basicColor);
    }
    

    public function init(...args):void {
        if (args.length == 2) {
            this.init_jo2(args[0], args[1]);
            return;
        }
        throw new JException("IllegalArgumentException", "init");
    }

    private function init_jo2(x:int, y:int):void {
        this.newLine[0][0] = x;
        this.newLine[0][1] = y;
        this.newLine[1][0] = x;
        this.newLine[1][1] = y;
        this.tempLine = this.line;
        this.line = this.newLine;
        this.newLine = this.tempLine;
    }
    

    public function setPosition(...args):void {
        if (args.length == 3) {
            this.setPosition_jo3(args[0], args[1], args[2]);
            return;
        }
        throw new JException("IllegalArgumentException", "setPosition");
    }

    private function setPosition_jo3(x:int, y:int, z:int):void {
        this.newLine[0][0] = this.line[1][0];
        this.newLine[0][1] = this.line[1][1];
        this.newLine[1][0] = x;
        this.newLine[1][1] = y;
        this.tempLine = this.line;
        this.line = this.newLine;
        this.newLine = this.tempLine;
    }
    

    override public function paintXY(graphics:Graphics, x:int, y:int):void {
        var currentLine:Vector.<Vector.<int>> = this.line;
        this.basicSetColorUtil.setBasicColorP3(graphics, this.getBasicColorP(), this.getColor());
        graphics.drawLine(currentLine[0][0], currentLine[0][1], currentLine[1][0], currentLine[1][1]);
    }
    

    override public function nextFrame():void {
    }
    

    override public function getBasicColorP():BasicColor {
        return super.getBasicColorP();
    }
    

    override public function setBasicColorP(basicColor:BasicColor):void {
        super.setBasicColorP(basicColor);
    }
    }
}

