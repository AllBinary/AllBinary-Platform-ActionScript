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
    import javax.microedition.lcdui.Image;
    import javax.microedition.lcdui.game.Sprite;
    import org.allbinary.animation.Animation;
    import org.allbinary.animation.AnimationBehaviorFactory;
    import org.allbinary.animation.ProceduralAnimationInterfaceFactoryInterface;
    import org.allbinary.animation.image.BaseImageAnimationFactory;
    import org.allbinary.graphics.color.BasicColor;
    import org.allbinary.image.sprite.AnimationFactorySpriteScaleUtil;
    import org.allbinary.logic.math.PrimitiveIntUtil;

    public class ColorCompositeSpriteIndexedAnimationFactory extends BaseImageAnimationFactory implements ProceduralAnimationInterfaceFactoryInterface {
        private var animationFactorySpriteScaleUtil:AnimationFactorySpriteScaleUtil = null;
        private var basicColorArray:Vector.<BasicColor> = null;

        // Java field initializers run after the base constructor
        private function initFieldsColorCompositeSpriteIndexedAnimationFactory():void {
    this.animationFactorySpriteScaleUtil = AnimationFactorySpriteScaleUtil.getInstance();
    
        }
    

    public function ColorCompositeSpriteIndexedAnimationFactory(image:Image, basicColorArray:Vector.<BasicColor>, width:int, height:int, animationBehaviorFactory:AnimationBehaviorFactory) {
        super(image, PrimitiveIntUtil.getArrayInstance(), width, height, 0, 0, animationBehaviorFactory);
        this.initFieldsColorCompositeSpriteIndexedAnimationFactory();
        this.basicColorArray = basicColorArray;
    }
    

    override public function getInstance1(instanceId:int):Animation {
        var sprite:Sprite = this.animationFactorySpriteScaleUtil.createImage(this.getImage(), this.animationFactoryInitializationVisitor.width, this.animationFactoryInitializationVisitor.height, this.scaleProperties.scaleWidth, this.scaleProperties.scaleHeight);
        return new SpriteIndexedAnimation(sprite, this.getImage(), this.basicColorArray, this.animationBehaviorFactory.getOrCreateInstance());
    }
    

    public function getInstanceAnimation(animationInterface:Animation):Animation {
        return this.getInstance1(0);
    }
    }
}

