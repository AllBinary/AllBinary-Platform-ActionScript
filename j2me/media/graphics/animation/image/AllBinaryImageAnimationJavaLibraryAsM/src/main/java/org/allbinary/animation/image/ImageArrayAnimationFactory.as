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
    import org.allbinary.animation.AnimationBehavior;
    import org.allbinary.animation.AnimationBehaviorFactory;
    import org.allbinary.animation.AnimationInterfaceFactoryInterface;
    import org.allbinary.media.ScaleProperties;

    public class ImageArrayAnimationFactory implements AnimationInterfaceFactoryInterface {
        private var dx:int = 0;
        private var dy:int = 0;
        private var imageArray:Vector.<Image> = null;
        private var animationBehaviorFactory:AnimationBehaviorFactory = null;

        // Java field initializers run after the base constructor
        private function initFieldsImageArrayAnimationFactory():void {
    this.dx = 0;
    this.dy = 0;
    
    
        }
    

    public function ImageArrayAnimationFactory(imageArray:Vector.<Image>, dx:int, dy:int, animationBehaviorFactory:AnimationBehaviorFactory) {
        super();
        this.initFieldsImageArrayAnimationFactory();
        this.imageArray = imageArray;
        this.animationBehaviorFactory = animationBehaviorFactory;
        this.dx = dx;
        this.dy = dy;
    }
    

    public function getInstance1(instanceId:int):Animation {
        if (this.dx != 0 || this.dy != 0) {
            return new AdjustedImageArrayAnimation(this.imageArray, this.dx, this.dy, this.animationBehaviorFactory.getOrCreateInstance());
        } else {
            return new ImageArrayAnimation(this.imageArray, AnimationBehavior.getInstance());
        }
    }
    

    public function setInitialScale(scaleProperties:ScaleProperties):void {
    }
    }
}

