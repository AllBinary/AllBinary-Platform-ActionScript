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
package org.allbinary.animation.image {
    import javax.microedition.lcdui.Graphics;
    import javax.microedition.lcdui.Image;
    import org.allbinary.animation.AnimationBehavior;
    import org.allbinary.math.AngleInfo;

    public class AdjustedImageBaseRotationAnimation extends ImageBaseRotationAnimation {
        private var dx:int = 0;
        private var dy:int = 0;

        // Java field initializers run after the base constructor
        private function initFieldsAdjustedImageBaseRotationAnimation():void {
    this.dx = 0;
    this.dy = 0;
        }
    

    public function AdjustedImageBaseRotationAnimation(image:Image, angleInfo:AngleInfo, totalAngle:int, dx:int, dy:int, animationBehavior:AnimationBehavior) {
        super(image, angleInfo, totalAngle, animationBehavior);
        this.initFieldsAdjustedImageBaseRotationAnimation();
        this.init(dx, dy);
    }
    

    public function init(...args):void {
        if (args.length == 2) {
            this.init_jo2(args[0], args[1]);
            return;
        }
        throw new JException("IllegalArgumentException", "init");
    }

    private function init_jo2(dx:int, dy:int):void {
        this.dx = dx;
        this.dy = dy;
    }
    

    override public function paintXY(graphics:Graphics, x:int, y:int):void {
        super.paintXY(graphics, int(x + this.dx), int(y + this.dy));
    }
    }
}

