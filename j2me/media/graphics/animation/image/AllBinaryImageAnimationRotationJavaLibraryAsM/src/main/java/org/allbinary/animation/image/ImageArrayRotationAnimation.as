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

    public class ImageArrayRotationAnimation extends ImageArrayBaseRotationAnimation {
        private var expectedTotalFrames:int = 0;

        // Java field initializers run after the base constructor
        private function initFieldsImageArrayRotationAnimation():void {
    this.expectedTotalFrames = 0;
        }
    

    public static function createAnimation(anyType:Object, animationBehavior:AnimationBehavior):ImageArrayRotationAnimation {
        var imageRotationAnimationInfo:ImageArrayRotationAnimationInfo = (anyType as ImageArrayRotationAnimationInfo);
        return new ImageArrayRotationAnimation(imageRotationAnimationInfo.getImageArray(), imageRotationAnimationInfo.getAngleInfoP(), imageRotationAnimationInfo.getTotalAngle(), animationBehavior);
    }
    

    public function ImageArrayRotationAnimation(imageArray:Vector.<Image>, angleInfo:AngleInfo, totalAngle:int, animationBehavior:AnimationBehavior) {
        super(imageArray, angleInfo, animationBehavior);
        this.initFieldsImageArrayRotationAnimation();
        this.initImageArray(imageArray, angleInfo, totalAngle);
    }
    

    private function initImageArray(imageArray:Vector.<Image>, angleInfo:AngleInfo, totalAngle:int):void {
        this.expectedTotalFrames = int(totalAngle / this.angleInfo.getAngleIncrementInfo().getAngleIncrement());
        this.angleInfo.adjustAngle(0);
        if (this.expectedTotalFrames != this.getSize()) {
            throw new JException("Exception", "Wrong Number of Frames");
        }
    }
    

    override public function setImageArray(imageArray:Vector.<Image>):void {
        super.setImageArray(imageArray);
        this.angleInfo.adjustAngle(0);
    }
    }
}

