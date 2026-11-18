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

    public class CircleFilledAnimation extends Animation implements ColorCompositeInterface {
        private var width:int = 0;
        private var height:int = 0;

        // Java field initializers run after the base constructor
        private function initFieldsCircleFilledAnimation():void {
    
    
        }
    

    public function CircleFilledAnimation(width:int, height:int, basicColor:BasicColor) {
        super();
        this.initFieldsCircleFilledAnimation();
        this.width = width;
        this.height = height;
        this.setBasicColorP(basicColor);
    }
    

    override public function nextFrame():void {
    }
    

    override public function paintXY(graphics:Graphics, x:int, y:int):void {
        this.basicSetColorUtil.setBasicColorP3(graphics, this.getBasicColorP(), this.getColor());
        graphics.fillRect(x, y, this.width, this.height);
    }
    

    override public function getBasicColorP():BasicColor {
        return super.getBasicColorP();
    }
    

    override public function setBasicColorP(basicColor:BasicColor):void {
        super.setBasicColorP(basicColor);
    }
    }
}

