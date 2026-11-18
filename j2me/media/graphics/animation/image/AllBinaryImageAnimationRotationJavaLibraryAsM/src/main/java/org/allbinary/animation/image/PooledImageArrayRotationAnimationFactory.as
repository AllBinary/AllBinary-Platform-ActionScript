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
    import org.allbinary.animation.Animation;
    import org.allbinary.animation.AnimationBehaviorFactory;
    import org.allbinary.animation.AnimationInterfaceFactoryInterface;
    import org.allbinary.game.configuration.GameConfigurationCentral;
    import org.allbinary.logic.NullUtil;
    import org.allbinary.math.AngleFactory;
    import org.allbinary.media.ScaleProperties;
    import org.allbinary.media.image.ImageToRotationImageArrayUtil;

    //TWB - Adjustments should be done in the resource creation and not at the animation level
    public class PooledImageArrayRotationAnimationFactory implements AnimationInterfaceFactoryInterface {
        private var allBinaryImageRotationAnimationInfo:Object = null;
        private var animationBehaviorFactory:AnimationBehaviorFactory = null;

        // Java field initializers run after the base constructor
        private function initFieldsPooledImageArrayRotationAnimationFactory():void {
    this.allBinaryImageRotationAnimationInfo = NullUtil.getInstance().NULL_OBJECT;
    
        }
    

    public static function createFactory(image:Image, animationBehaviorFactory:AnimationBehaviorFactory):PooledImageArrayRotationAnimationFactory {
        var totalAngle:int = AngleFactory.getInstance().TOTAL_ANGLE;
        var angleIncrement:int = (int(totalAngle / GameConfigurationCentral.getInstance().getGameControlFidelity()));
        return new PooledImageArrayRotationAnimationFactory(image, image.getWidth(), image.getHeight(), -(image.getWidth() >> 2), -(image.getHeight() >> 2), angleIncrement, animationBehaviorFactory);
    }
    

    public static function createDXY(image:Image, dx:int, dy:int, animationBehaviorFactory:AnimationBehaviorFactory):PooledImageArrayRotationAnimationFactory {
        var totalAngle:int = AngleFactory.getInstance().TOTAL_ANGLE;
        var angleIncrement:int = (int(totalAngle / GameConfigurationCentral.getInstance().getGameControlFidelity()));
        return new PooledImageArrayRotationAnimationFactory(image, image.getWidth(), image.getHeight(), dx, dy, angleIncrement, animationBehaviorFactory);
    }
    

    public function PooledImageArrayRotationAnimationFactory(image:Image, width:int, height:int, dx:int, dy:int, angleIncrement:int, animationBehaviorFactory:AnimationBehaviorFactory) {
        super();
        this.initFieldsPooledImageArrayRotationAnimationFactory();
        this.animationBehaviorFactory = animationBehaviorFactory;
        var totalAngle:int = AngleFactory.getInstance().TOTAL_ANGLE;
        var imageArray:Vector.<Image> = ImageToRotationImageArrayUtil.getInstance().generate(image, angleIncrement, totalAngle);
        this.allBinaryImageRotationAnimationInfo = new ImageArrayRotationAnimationInfo(imageArray, angleIncrement, totalAngle, dx, dy);
    }
    

    public function getInstance1(instanceId:int):Animation {
        return AdjustedImageArrayRotationAnimation.createAdjustedImageArrayRotationAnimationInfo(this.allBinaryImageRotationAnimationInfo, this.animationBehaviorFactory.getOrCreateInstance());
    }
    

    public function setInitialScale(scaleProperties:ScaleProperties):void {
    }
    }
}

