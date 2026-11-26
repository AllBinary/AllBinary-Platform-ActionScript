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
    import org.allbinary.animation.image.BaseImageAnimationFactory;
    import org.allbinary.graphics.color.BasicColorUtil;
    import org.allbinary.image.sprite.AnimationFactorySpriteScaleUtil;
    import org.allbinary.logic.math.PrimitiveIntUtil;

    public class OneRowSpriteIndexedAnimationFactory extends BaseImageAnimationFactory {
        private var animationFactorySpriteScaleUtil:AnimationFactorySpriteScaleUtil = null;

        // Java field initializers run after the base constructor
        private function initFieldsOneRowSpriteIndexedAnimationFactory():void {
    this.animationFactorySpriteScaleUtil = AnimationFactorySpriteScaleUtil.getInstance();
        }
    

    public static function createFactoryDX(image:Image, dx:int, animationBehaviorFactory:AnimationBehaviorFactory):OneRowSpriteIndexedAnimationFactory {
        var oneRowSpriteIndexedAnimationFactory:OneRowSpriteIndexedAnimationFactory = new OneRowSpriteIndexedAnimationFactory(image, PrimitiveIntUtil.getArrayInstance(), image.getHeight(), image.getHeight(), 0, 0, animationBehaviorFactory);
        oneRowSpriteIndexedAnimationFactory.initW(dx);
        return oneRowSpriteIndexedAnimationFactory;
    }
    

    public static function createFactoryDXY(image:Image, dx:int, dy:int, animationBehaviorFactory:AnimationBehaviorFactory):OneRowSpriteIndexedAnimationFactory {
        var oneRowSpriteIndexedAnimationFactory:OneRowSpriteIndexedAnimationFactory = new OneRowSpriteIndexedAnimationFactory(image, PrimitiveIntUtil.getArrayInstance(), image.getHeight(), image.getHeight(), 0, 0, animationBehaviorFactory);
        oneRowSpriteIndexedAnimationFactory.init(dx, dy);
        return oneRowSpriteIndexedAnimationFactory;
    }
    

    public static function createFactoryWH(image:Image, width:int, height:int, animationBehaviorFactory:AnimationBehaviorFactory):OneRowSpriteIndexedAnimationFactory {
        return new OneRowSpriteIndexedAnimationFactory(image, PrimitiveIntUtil.getArrayInstance(), width, height, 0, 0, animationBehaviorFactory);
    }
    

    public static function createFactory(image:Image, animationBehaviorFactory:AnimationBehaviorFactory):OneRowSpriteIndexedAnimationFactory {
        return new OneRowSpriteIndexedAnimationFactory(image, PrimitiveIntUtil.getArrayInstance(), image.getHeight(), image.getHeight(), 0, 0, animationBehaviorFactory);
    }
    

    public function OneRowSpriteIndexedAnimationFactory(image:Image, sequenceArray:Vector.<int>, width:int, height:int, dx:int, dy:int, animationBehaviorFactory:AnimationBehaviorFactory) {
        super(image, sequenceArray, width, height, dx, dy, animationBehaviorFactory);
        this.initFieldsOneRowSpriteIndexedAnimationFactory();
    }
    

    public function init(...args):void {
        if (args.length == 2) {
            this.init_jo2(args[0], args[1]);
            return;
        }
        throw new JException("IllegalArgumentException", "init");
    }

    private function init_jo2(dx:int, dy:int):void {
        this.animationFactoryInitializationVisitor.dx = dx;
        this.animationFactoryInitializationVisitor.dy = dy;
    }
    

    public function initW(dx:int):void {
        this.init(dx, 0);
        this.animationFactoryInitializationVisitor.dx += -(this.animationFactoryInitializationVisitor.width >> 2);
    }
    

    override public function getInstance1(instanceId:int):Animation {
        var sprite:Sprite = this.animationFactorySpriteScaleUtil.createImage(this.getImage(), this.animationFactoryInitializationVisitor.width, this.animationFactoryInitializationVisitor.height, this.scaleProperties.scaleWidth, this.scaleProperties.scaleHeight);
        if (this.animationFactoryInitializationVisitor.dx != 0 || this.animationFactoryInitializationVisitor.dy != 0) {
            return new AdjustedSpriteIndexedAnimation(sprite, this.getImage(), BasicColorUtil.getInstance().ZERO_ARRAY, this.animationFactoryInitializationVisitor.dx, this.animationFactoryInitializationVisitor.dy, this.animationBehaviorFactory.getOrCreateInstance());
        } else {
            return new SpriteIndexedAnimation(sprite, this.getImage(), BasicColorUtil.getInstance().ZERO_ARRAY, this.animationBehaviorFactory.getOrCreateInstance());
        }
    }
    }
}

