/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2022 AllBinary 
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
package org.allbinary.image.sprite {
    import org.allbinary.game.layer.SpriteFactory;
    import org.allbinary.graphics.opengles.OpenGLUtil;
    import org.allbinary.image.ImageCache;
    import org.allbinary.image.ImageCacheFactory;
    import org.allbinary.image.opengles.OpenGLESImageExclusionUtil;
    import org.allbinary.logic.math.J2SEMath;
    import org.allbinary.media.image.ImageScaleUtil;

    public class AnimationFactorySpriteScaleUtil {
    private static var instance_value:AnimationFactorySpriteScaleUtil;
    private static var instance_set:Boolean = false;
    private static function get instance():AnimationFactorySpriteScaleUtil {
        if (!AnimationFactorySpriteScaleUtil.instance_set) {
            AnimationFactorySpriteScaleUtil.instance_set = true;
            AnimationFactorySpriteScaleUtil.instance_value = new AnimationFactorySpriteScaleUtil();
        }
        return AnimationFactorySpriteScaleUtil.instance_value;
    }
        private var imageCache:ImageCache = null;
        private var imageScaleUtil:ImageScaleUtil = null;
        private var openGLUtil:OpenGLUtil = null;
        private var j2seMath:J2SEMath = null;
        private var openGLESImageExclusionUtil:OpenGLESImageExclusionUtil = null;

        // Java field initializers run after the base constructor
        private function initFieldsAnimationFactorySpriteScaleUtil():void {
    this.imageCache = ImageCacheFactory.getInstance();
    this.imageScaleUtil = ImageScaleUtil.getInstance();
    this.openGLUtil = OpenGLUtil.getInstance();
    this.j2seMath = J2SEMath.getInstance();
    this.openGLESImageExclusionUtil = OpenGLESImageExclusionUtil.getInstance();
        }

        public function AnimationFactorySpriteScaleUtil() {
            super();
            this.initFieldsAnimationFactorySpriteScaleUtil();
        }
    

    public static function getInstance():AnimationFactorySpriteScaleUtil {
        return AnimationFactorySpriteScaleUtil.instance;
    }
    

    public function createImage(image:Image, width:int, height:int, scaleWidth:int, scaleHeight:int):Sprite {
        var spriteFactory:SpriteFactory = SpriteFactory.getInstance();
        var sprite:Sprite = null;
        var scaledImage:Image = null;
        if (scaleWidth != 0 && scaleHeight != 0) {
            var scaleX:Number = (Number(scaleWidth)) / (Number(width));
            var scaleY:Number = (Number(scaleHeight)) / (Number(height));
            if ((scaleX == 1.0 && scaleY == 1.0) || (scaleX == 0.0 || scaleY == 0.0)) {
                scaledImage = this.openGLUtil.addImage(image);
                sprite = spriteFactory.createSprite(scaledImage, width, height);
            } else {
                if (this.openGLESImageExclusionUtil.isCustomScaling(image)) {
                    var width2:int = this.j2seMath.round(Number((scaleWidth)) - 0.5);
                    var height2:int = this.j2seMath.round(Number((scaleHeight)) - 0.5);
                    var multiplesOf16Width:int = int(width2 / 16);
                    var by16Width:int = int(multiplesOf16Width * 16);
                    scaleX = (Number(by16Width)) / Number(width);
                    var multiplesOf16Height:int = int(height2 / 16);
                    var by16Height:int = int(multiplesOf16Height * 16);
                    scaleY = (Number(by16Height)) / Number(height);
                    if (scaleWidth < width) {
                        scaleX = scaleX * 2.35;
                    }
                    if (scaleHeight < height) {
                        scaleY = scaleY * 2.35;
                    }
                }
                scaledImage = this.imageScaleUtil.createImage2(this.imageCache, image, scaleX, 1.0, scaleY, 1.0, true);
                sprite = spriteFactory.createSprite(scaledImage, JMath.toInt32((Number(width) * scaleX)), JMath.toInt32((Number(height) * scaleY)));
            }
        } else {
            scaledImage = this.openGLUtil.addImage(image);
            sprite = spriteFactory.createSprite(scaledImage, width, height);
        }
        return sprite;
    }
    }
}

