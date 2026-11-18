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
package org.allbinary.animation.image.sprite {
    import org.allbinary.animation.AnimationBehavior;

    public class AllBinaryAdjustedSpriteRotationAnimation extends AllBinarySpriteRotationAnimation {
        private var dx:int = 0;
        private var dy:int = 0;

        // Java field initializers run after the base constructor
        private function initFieldsAllBinaryAdjustedSpriteRotationAnimation():void {
    
    
        }
    

    public function AllBinaryAdjustedSpriteRotationAnimation(sprite:Sprite, image:Image, dx:int, dy:int, animationBehavior:AnimationBehavior) {
        super(sprite, image, animationBehavior);
        this.initFieldsAllBinaryAdjustedSpriteRotationAnimation();
        this.dx = dx;
        this.dy = dy;
    }
    

    override public function paintXY(g:Graphics, x:int, y:int):void {
        this.sprite.setPosition(int(x + this.dx), int(y + this.dy));
        this.paint(g);
    }
    }
}

