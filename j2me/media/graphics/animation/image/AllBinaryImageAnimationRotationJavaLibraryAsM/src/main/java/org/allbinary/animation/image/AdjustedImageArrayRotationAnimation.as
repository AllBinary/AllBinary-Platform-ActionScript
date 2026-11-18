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
    import org.allbinary.animation.AnimationBehavior;
    import org.allbinary.math.AngleInfo;

    //TWB - Adjustments should be done in the resource creation and not at the animation level
    public class AdjustedImageArrayRotationAnimation extends ImageArrayRotationAnimation {
        private var dx:int = 0;
        private var dy:int = 0;

        // Java field initializers run after the base constructor
        private function initFieldsAdjustedImageArrayRotationAnimation():void {
    this.dx = 0;
    this.dy = 0;
        }
    

    public static function createAdjustedImageArrayRotationAnimationInfo(anyType:Object, animationBehavior:AnimationBehavior):AdjustedImageArrayRotationAnimation {
        var imageRotationAnimationInfo:ImageArrayRotationAnimationInfo = (anyType as ImageArrayRotationAnimationInfo);
        return new AdjustedImageArrayRotationAnimation(imageRotationAnimationInfo.getImageArray(), imageRotationAnimationInfo.getAngleInfoP(), imageRotationAnimationInfo.getTotalAngle(), imageRotationAnimationInfo.getDx(), imageRotationAnimationInfo.getDy(), animationBehavior);
    }
    

    public static function createAnimation(imageArray:Vector.<Image>, angleInfo:AngleInfo, totalAngle:int, animationBehavior:AnimationBehavior):AdjustedImageArrayRotationAnimation {
        return new AdjustedImageArrayRotationAnimation(imageArray, angleInfo, totalAngle, -(imageArray[0].getWidth() >> 2), -(imageArray[0].getHeight() >> 2), animationBehavior);
    }
    

    public function AdjustedImageArrayRotationAnimation(imageArray:Vector.<Image>, angleInfo:AngleInfo, totalAngle:int, dx:int, dy:int, animationBehavior:AnimationBehavior) {
        super(imageArray, angleInfo, totalAngle, animationBehavior);
        this.initFieldsAdjustedImageArrayRotationAnimation();
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

