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
package org.allbinary.graphics.paint {
    import org.allbinary.animation.Animation;

    public class AnimationCompositePaintable extends InitUpdatePaintable {
        private var animationInterface:Animation = null;

        // Java field initializers run after the base constructor
        private function initFieldsAnimationCompositePaintable():void {
    
        }
    

    public function AnimationCompositePaintable(animationInterface:Animation) {
        super();
        this.initFieldsAnimationCompositePaintable();
        this.animationInterface = animationInterface;
    }
    

    override public function paint(graphics:Graphics):void {
        this.animationInterface.paintXY(graphics, 0, 0);
    }
    

    override public function paintThreed(graphics:Graphics):void {
        this.animationInterface.paintThreedXYZ(graphics, 0, 0, 0);
    }
    }
}

