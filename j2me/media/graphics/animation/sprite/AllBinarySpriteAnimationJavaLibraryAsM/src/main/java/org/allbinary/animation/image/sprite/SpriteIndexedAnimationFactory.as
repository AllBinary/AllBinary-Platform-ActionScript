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
    import org.allbinary.AndroidUtil;
    import org.allbinary.animation.Animation;
    import org.allbinary.animation.AnimationBehaviorFactory;
    import org.allbinary.animation.ProceduralAnimationInterfaceFactoryInterface;
    import org.allbinary.animation.image.BaseImageAnimationFactory;
    import org.allbinary.graphics.color.BasicColor;
    import org.allbinary.graphics.color.BasicColorUtil;
    import org.allbinary.image.sprite.AnimationFactorySpriteScaleUtil;
    import org.allbinary.logic.math.PrimitiveIntUtil;

    public class SpriteIndexedAnimationFactory extends BaseImageAnimationFactory implements ProceduralAnimationInterfaceFactoryInterface {
        private var animationFactorySpriteScaleUtil:AnimationFactorySpriteScaleUtil = null;
        private var basicColorArray:Vector.<BasicColor> = null;

        // Java field initializers run after the base constructor
        private function initFieldsSpriteIndexedAnimationFactory():void {
    this.animationFactorySpriteScaleUtil = AnimationFactorySpriteScaleUtil.getInstance();
    this.basicColorArray = BasicColorUtil.getInstance().ZERO_ARRAY;
        }
    

    public static function createCWHDXY(image:Image, basicColorArray:Vector.<BasicColor>, width:int, height:int, dx:int, dy:int, animationBehaviorFactory:AnimationBehaviorFactory):SpriteIndexedAnimationFactory {
        return new SpriteIndexedAnimationFactory(image, basicColorArray, PrimitiveIntUtil.getArrayInstance(), width, height, dx, dy, animationBehaviorFactory);
    }
    

    public static function createCWH(image:Image, basicColorArray:Vector.<BasicColor>, width:int, height:int, animationBehaviorFactory:AnimationBehaviorFactory):SpriteIndexedAnimationFactory {
        var spriteIndexedAnimationFactory:SpriteIndexedAnimationFactory = new SpriteIndexedAnimationFactory(image, basicColorArray, PrimitiveIntUtil.getArrayInstance(), width, height, 0, 0, animationBehaviorFactory);
        spriteIndexedAnimationFactory.initHWH();
        return spriteIndexedAnimationFactory;
    }
    

    public static function createWH(image:Image, width:int, height:int, animationBehaviorFactory:AnimationBehaviorFactory):SpriteIndexedAnimationFactory {
        return new SpriteIndexedAnimationFactory(image, BasicColorUtil.getInstance().ZERO_ARRAY, PrimitiveIntUtil.getArrayInstance(), width, height, 0, 0, animationBehaviorFactory);
    }
    

    public function SpriteIndexedAnimationFactory(image:Image, basicColorArray:Vector.<BasicColor>, sequenceArray:Vector.<int>, width:int, height:int, dx:int, dy:int, animationBehaviorFactory:AnimationBehaviorFactory) {
        super(image, sequenceArray, width, height, dx, dy, animationBehaviorFactory);
        this.initFieldsSpriteIndexedAnimationFactory();
        this.basicColorArray = basicColorArray;
    }
    

    private function initHWH():void {
        this.animationFactoryInitializationVisitor.dx = -(this.animationFactoryInitializationVisitor.width >> 2);
        this.animationFactoryInitializationVisitor.dy = -(this.animationFactoryInitializationVisitor.height >> 2);
        if (AndroidUtil.isAndroid()) {
            this.animationFactoryInitializationVisitor.dx += 3;
        }
    }
    

    override public function getInstance1(instanceId:int):Animation {
        var sprite:Sprite = this.animationFactorySpriteScaleUtil.createImage(this.getImage(), this.animationFactoryInitializationVisitor.width, this.animationFactoryInitializationVisitor.height, this.scaleProperties.scaleWidth, this.scaleProperties.scaleHeight);
        if (this.animationFactoryInitializationVisitor.dx != 0 || this.animationFactoryInitializationVisitor.dy != 0) {
            return new AdjustedSpriteIndexedAnimation(sprite, this.getImage(), this.basicColorArray, this.animationFactoryInitializationVisitor.dx, this.animationFactoryInitializationVisitor.dy, this.animationBehaviorFactory.getOrCreateInstance());
        } else {
            return new SpriteIndexedAnimation(sprite, this.getImage(), this.basicColorArray, this.animationBehaviorFactory.getOrCreateInstance());
        }
    }
    

    public function getInstanceAnimation(animationInterface:Animation):Animation {
        return this.getInstance1(0);
    }
    }
}

