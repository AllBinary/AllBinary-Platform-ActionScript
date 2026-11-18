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
    import org.allbinary.animation.AnimationInterfaceFactoryInterface;
    import org.allbinary.animation.IndexedAnimation;
    import org.allbinary.animation.caption.CaptionIndexedAnimation;
    import org.allbinary.animation.image.ImageAnimation;
    import org.allbinary.graphics.color.BasicColorUtil;
    import org.allbinary.image.AnimationFactoryImageScaleUtil;
    import org.allbinary.image.sprite.AnimationFactorySpriteScaleUtil;
    import org.allbinary.logic.communication.log.ForcedLogUtil;
    import org.allbinary.media.ScaleProperties;
    import org.allbinary.media.audio.Sound;

    public class ImageCaptionIndexedAnimationFactory implements AnimationInterfaceFactoryInterface {
        public var animationFactoryImageScaleUtil:AnimationFactoryImageScaleUtil = null;
        private var animationFactorySpriteScaleUtil:AnimationFactorySpriteScaleUtil = null;
        private var captionImage:Image = null;
        private var spriteMovieImage:Image = null;
        private var frameWidth:int = 0;
        private var frameHeight:int = 0;
        private var captionDx:int = 0;
        private var captionDy:int = 0;
        private var dx:int = 0;
        private var dy:int = 0;
        private var time:int = 0;
        private var soundInterface:Sound = null;
        public var scaleProperties:ScaleProperties = null;
        private var animationBehaviorFactory:AnimationBehaviorFactory = null;

        // Java field initializers run after the base constructor
        private function initFieldsImageCaptionIndexedAnimationFactory():void {
    this.animationFactoryImageScaleUtil = AnimationFactoryImageScaleUtil.getInstance();
    this.animationFactorySpriteScaleUtil = AnimationFactorySpriteScaleUtil.getInstance();
    
    
    
    
    
    
    
    
    
    
    this.scaleProperties = ScaleProperties.instance;
    
        }
    

    public function ImageCaptionIndexedAnimationFactory(captionImage:Image, spriteMovieImage:Image, soundInterface:Sound, frameWidth:int, frameHeight:int, captionDx:int, captionDy:int, dx:int, dy:int, time:int, animationBehaviorFactory:AnimationBehaviorFactory) {
        super();
        this.initFieldsImageCaptionIndexedAnimationFactory();
        if (animationBehaviorFactory == AnimationBehaviorFactory.getInstance()) {
            ForcedLogUtil.log("Using default AnimationBehaviorFactory with IndexedAnimationFactory", this);
        }
        this.captionImage = captionImage;
        this.spriteMovieImage = spriteMovieImage;
        this.frameWidth = frameWidth;
        this.frameHeight = frameHeight;
        this.captionDx = captionDx;
        this.captionDy = captionDy;
        this.dx = dx;
        this.dy = dy;
        this.time = time;
        this.soundInterface = soundInterface;
        this.animationBehaviorFactory = animationBehaviorFactory;
    }
    

    public function getInstance1(instanceId:int):Animation {
        var scaledImage:Image = this.animationFactoryImageScaleUtil.createImage(this.captionImage, this.captionImage.getWidth(), this.captionImage.getHeight(), this.scaleProperties.scaleWidth, this.scaleProperties.scaleHeight);
        var animationInterface:Animation = new ImageAnimation(scaledImage, this.animationBehaviorFactory.getOrCreateInstance());
        var sprite:Sprite = this.animationFactorySpriteScaleUtil.createImage(this.spriteMovieImage, this.frameWidth, this.frameHeight, this.scaleProperties.scaleWidth, this.scaleProperties.scaleHeight);
        var movieIndexedAnimationInterface:IndexedAnimation = new SpriteIndexedAnimation(sprite, this.spriteMovieImage, BasicColorUtil.getInstance().ZERO_ARRAY, this.animationBehaviorFactory.getOrCreateInstance());
        var player:Player = this.soundInterface.getPlayerP();
        if (player == null) {
            throw new JException("Exception", "Sound Was not Initialized");
        }
        return new CaptionIndexedAnimation(animationInterface, movieIndexedAnimationInterface, player, this.captionDx, this.captionDy, this.dx, this.dy, this.time, this.animationBehaviorFactory.getOrCreateInstance());
    }
    

    public function setInitialScale(scaleProperties:ScaleProperties):void {
        this.scaleProperties = scaleProperties;
    }
    }
}

