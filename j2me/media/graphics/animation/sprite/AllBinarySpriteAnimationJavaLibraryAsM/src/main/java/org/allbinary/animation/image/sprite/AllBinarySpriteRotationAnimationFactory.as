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
    import org.allbinary.animation.Animation;
    import org.allbinary.animation.AnimationBehaviorFactory;
    import org.allbinary.animation.ProceduralAnimationInterfaceFactoryInterface;
    import org.allbinary.animation.image.BaseImageAnimationFactory;
    import org.allbinary.image.sprite.AnimationFactorySpriteScaleUtil;
    import org.allbinary.logic.communication.log.ForcedLogUtil;
    import org.allbinary.logic.math.PrimitiveIntUtil;

    public class AllBinarySpriteRotationAnimationFactory extends BaseImageAnimationFactory implements ProceduralAnimationInterfaceFactoryInterface {
        private var animationFactorySpriteScaleUtil:AnimationFactorySpriteScaleUtil = null;

        // Java field initializers run after the base constructor
        private function initFieldsAllBinarySpriteRotationAnimationFactory():void {
    this.animationFactorySpriteScaleUtil = AnimationFactorySpriteScaleUtil.getInstance();
        }
    

    public static function createWHDY(image:Image, dx:int, dy:int, animationBehaviorFactory:AnimationBehaviorFactory):AllBinarySpriteRotationAnimationFactory {
        var spriteRotationAnimationFactory:AllBinarySpriteRotationAnimationFactory = new AllBinarySpriteRotationAnimationFactory(image, PrimitiveIntUtil.getArrayInstance(), (image.getHeight() >> 2), (image.getHeight() >> 2), 0, 0, animationBehaviorFactory);
        spriteRotationAnimationFactory.initWH(dx, dy);
        return spriteRotationAnimationFactory;
    }
    

    public static function createWH(image:Image, animationBehaviorFactory:AnimationBehaviorFactory):AllBinarySpriteRotationAnimationFactory {
        return AllBinarySpriteRotationAnimationFactory.createWHDY(image, 0, 0, animationBehaviorFactory);
    }
    

    public static function createDXY(image:Image, dx:int, dy:int, animationBehaviorFactory:AnimationBehaviorFactory):AllBinarySpriteRotationAnimationFactory {
        var spriteRotationAnimationFactory:AllBinarySpriteRotationAnimationFactory = new AllBinarySpriteRotationAnimationFactory(image, PrimitiveIntUtil.getArrayInstance(), image.getHeight(), image.getHeight(), 0, 0, animationBehaviorFactory);
        spriteRotationAnimationFactory.init(dx, dy);
        return spriteRotationAnimationFactory;
    }
    

    public static function createDXYQ(image:Image, dx:int, dy:int, animationBehaviorFactory:AnimationBehaviorFactory):AllBinarySpriteRotationAnimationFactory {
        var spriteRotationAnimationFactory:AllBinarySpriteRotationAnimationFactory = new AllBinarySpriteRotationAnimationFactory(image, PrimitiveIntUtil.getArrayInstance(), (image.getHeight() >> 2), (image.getHeight() >> 2), 0, 0, animationBehaviorFactory);
        spriteRotationAnimationFactory.init(dx, dy);
        return spriteRotationAnimationFactory;
    }
    

    public static function createQ(image:Image, animationBehaviorFactory:AnimationBehaviorFactory):AllBinarySpriteRotationAnimationFactory {
        return new AllBinarySpriteRotationAnimationFactory(image, PrimitiveIntUtil.getArrayInstance(), (image.getHeight() >> 2), (image.getHeight() >> 2), 0, 0, animationBehaviorFactory);
    }
    

    public static function createWHF(image:Image, animationBehaviorFactory:AnimationBehaviorFactory):AllBinarySpriteRotationAnimationFactory {
        return new AllBinarySpriteRotationAnimationFactory(image, PrimitiveIntUtil.getArrayInstance(), image.getHeight(), image.getHeight(), 0, 0, animationBehaviorFactory);
    }
    

    public function AllBinarySpriteRotationAnimationFactory(image:Image, sequenceArray:Vector.<int>, width:int, height:int, dx:int, dy:int, animationBehaviorFactory:AnimationBehaviorFactory) {
        super(image, sequenceArray, width, height, dx, dy, animationBehaviorFactory);
        this.initFieldsAllBinarySpriteRotationAnimationFactory();
        if (animationBehaviorFactory == AnimationBehaviorFactory.getInstance()) {
            ForcedLogUtil.log("Using default AnimationBehaviorFactory with IndexedAnimationFactory", this);
        }
    }
    

    public function init(dx:int, dy:int):void {
        this.animationFactoryInitializationVisitor.dx = dx;
        this.animationFactoryInitializationVisitor.dy = dy;
    }
    

    private function initWH(dx:int, dy:int):void {
        this.init(dx, dy);
        this.animationFactoryInitializationVisitor.dx += int(-this.animationFactoryInitializationVisitor.width / 5);
        this.animationFactoryInitializationVisitor.dy += int(-this.animationFactoryInitializationVisitor.height / 5);
    }
    

    override public function getInstance1(instanceId:int):Animation {
        var sprite:Sprite = this.animationFactorySpriteScaleUtil.createImage(this.getImage(), this.animationFactoryInitializationVisitor.width, this.animationFactoryInitializationVisitor.height, this.scaleProperties.scaleWidth, this.scaleProperties.scaleHeight);
        if (this.animationFactoryInitializationVisitor.dx != 0 || this.animationFactoryInitializationVisitor.dy != 0) {
            return new AllBinaryAdjustedSpriteRotationAnimation(sprite, this.getImage(), this.animationFactoryInitializationVisitor.dx, this.animationFactoryInitializationVisitor.dy, this.animationBehaviorFactory.getOrCreateInstance());
        } else {
            return new AllBinarySpriteRotationAnimation(sprite, this.getImage(), this.animationBehaviorFactory.getOrCreateInstance());
        }
    }
    

    public function getInstanceAnimation(animationInterface:Animation):Animation {
        return this.getInstance1(0);
    }
    }
}

