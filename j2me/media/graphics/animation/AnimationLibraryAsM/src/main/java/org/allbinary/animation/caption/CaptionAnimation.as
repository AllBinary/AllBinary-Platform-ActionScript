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
package org.allbinary.animation.caption {
    import javax.microedition.lcdui.Graphics;
    import org.allbinary.animation.Animation;

    public class CaptionAnimation extends Animation {
        private var animationInterface:Animation = null;
        private var overlayAnimationInterface:Animation = null;
        private var captionDx:int = 0;
        private var captionDy:int = 0;
        private var dx:int = 0;
        private var dy:int = 0;

        // Java field initializers run after the base constructor
        private function initFieldsCaptionAnimation():void {
    
    
    
    
    
    
        }
    

    public function CaptionAnimation(animationInterface:Animation, overlayAnimationInterface:Animation, captionDx:int, captionDy:int, dx:int, dy:int) {
        super();
        this.initFieldsCaptionAnimation();
        this.animationInterface = animationInterface;
        this.overlayAnimationInterface = overlayAnimationInterface;
        this.captionDx = captionDx;
        this.captionDy = captionDy;
        this.dx = dx;
        this.dy = dy;
    }
    

    override public function nextFrame():void {
    }
    

    override public function paintXY(graphics:Graphics, x:int, y:int):void {
        this.animationInterface.paintXY(graphics, int(x + this.captionDx), int(y + this.captionDy));
        this.overlayAnimationInterface.paintXY(graphics, int(int(x + this.captionDx) + this.dx), int(int(y + this.captionDy) + this.dy));
    }
    

    override public function paintThreedXYZ(graphics:Graphics, x:int, y:int, z:int):void {
        this.animationInterface.paintThreedXYZ(graphics, int(x + this.captionDx), int(y + this.captionDy), z);
        this.overlayAnimationInterface.paintThreedXYZ(graphics, int(int(x + this.captionDx) + this.dx), int(int(y + this.captionDy) + this.dy), z);
    }
    }
}

