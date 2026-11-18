/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2022 AllBinary 
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
package org.allbinary.animation.image {
    import org.allbinary.animation.AnimationBehavior;

    public class AdjustedImageAnimation extends ImageAnimation {
        private var dx:int = 0;
        private var dy:int = 0;

        // Java field initializers run after the base constructor
        private function initFieldsAdjustedImageAnimation():void {
    this.dx = 0;
    this.dy = 0;
        }
    

    public function AdjustedImageAnimation(image:Image, dx:int, dy:int, animationBehavior:AnimationBehavior) {
        super(image, animationBehavior);
        this.initFieldsAdjustedImageAnimation();
        this.init(dx, dy);
    }
    

    public function init(dx:int, dy:int):void {
        this.setDx(dx);
        this.setDy(dy);
    }
    

    override public function paintXY(graphics:Graphics, x:int, y:int):void {
        super.paintXY(graphics, int(x + this.dx), int(y + this.dy));
    }
    

    override public function setDx(dx:int):void {
        this.dx = dx;
    }
    

    override public function getDx():int {
        return this.dx;
    }
    

    override public function setDy(dy:int):void {
        this.dy = dy;
    }
    

    override public function getDy():int {
        return this.dy;
    }
    }
}

