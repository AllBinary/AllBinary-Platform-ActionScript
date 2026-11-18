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
package org.allbinary.animation.text {
    import org.allbinary.animation.AnimationBehavior;

    public class AdjustCustomTextAnimation extends CustomTextAnimation {
        private var dx:int = 0;
        private var dy:int = 0;

        // Java field initializers run after the base constructor
        private function initFieldsAdjustCustomTextAnimation():void {
    
    
        }
    

    public function AdjustCustomTextAnimation(text:String, fontSize:int, dx:int, dy:int, animationBehavior:AnimationBehavior) {
        super(text, fontSize, animationBehavior);
        this.initFieldsAdjustCustomTextAnimation();
        this.dx = dx;
        this.dy = dy;
    }
    

    override public function getDx():int {
        return this.dx;
    }
    

    override public function setDx(dx:int):void {
        this.dx = dx;
    }
    

    override public function getDy():int {
        return this.dy;
    }
    

    override public function setDy(dy:int):void {
        this.dy = dy;
    }
    

    override public function paintXY(graphics:Graphics, x:int, y:int):void {
        super.paintXY(graphics, int(x + this.dx), int(y + this.dy));
    }
    }
}

