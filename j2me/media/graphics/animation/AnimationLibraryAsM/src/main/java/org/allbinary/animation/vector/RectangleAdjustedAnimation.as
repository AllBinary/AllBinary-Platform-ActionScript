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
    import org.allbinary.animation.Animation;
    import org.allbinary.graphics.color.BasicColor;
    import org.allbinary.graphics.color.ColorCompositeInterface;

    public class RectangleAdjustedAnimation extends Animation implements ColorCompositeInterface {
        private var width:int = 0;
        private var height:int = 0;
        private var offsetX:int = 0;
        private var offsetY:int = 0;

        // Java field initializers run after the base constructor
        private function initFieldsRectangleAdjustedAnimation():void {
    
    
    
    
        }
    

    public function RectangleAdjustedAnimation(width:int, height:int, offsetX:int, offsetY:int, basicColor:BasicColor) {
        super();
        this.initFieldsRectangleAdjustedAnimation();
        this.width = width;
        this.height = height;
        this.offsetX = offsetX;
        this.offsetY = offsetY;
        this.setBasicColorP(basicColor);
    }
    

    override public function nextFrame():void {
    }
    

    override public function paintXY(graphics:Graphics, x:int, y:int):void {
        this.basicSetColorUtil.setBasicColorP3(graphics, this.getBasicColorP(), this.getColor());
        graphics.drawRect(int(x + this.offsetX), int(y + this.offsetY), this.width, this.height);
    }
    

    public function setWidth(width:int):void {
        this.width = width;
    }
    

    public function setHeight(height:int):void {
        this.height = height;
    }
    

    public function setOffsetX(offsetX:int):void {
        this.offsetX = offsetX;
    }
    

    public function setOffsetY(offsetY:int):void {
        this.offsetY = offsetY;
    }
    

    override public function getBasicColorP():BasicColor {
        return super.getBasicColorP();
    }
    

    override public function setBasicColorP(basicColor:BasicColor):void {
        super.setBasicColorP(basicColor);
    }
    }
}

