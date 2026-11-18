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
package org.allbinary.animation {
    import org.allbinary.graphics.color.BasicColor;

    public class AdjustedVectorAnimation extends VectorAnimation {
        private var dx:int = 0;
        private var dy:int = 0;

        // Java field initializers run after the base constructor
        private function initFieldsAdjustedVectorAnimation():void {
    
    
        }
    

    public function AdjustedVectorAnimation(currentPoints:Vector.<Vector.<Vector.<int>>>, basicColor:BasicColor, dx:int, dy:int, animationBehavior:AnimationBehavior) {
        super(currentPoints, basicColor, animationBehavior);
        this.initFieldsAdjustedVectorAnimation();
        this.dx = dx;
        this.dy = dy;
    }
    

    override public function paintXY(graphics:Graphics, x:int, y:int):void {
        super.paintXY(graphics, int(x + this.dx), int(y + this.dy));
    }
    }
}

