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
package org.allbinary.image {
    import org.allbinary.animation.image.AnimationFactoryInitializationVisitor;
    import org.allbinary.animation.image.BaseImageAnimationFactory;
    import org.allbinary.media.ScaleProperties;
    import org.allbinary.media.image.ImageJ2MEScaleUtil;

    public class AnimationFactoryImageScaleUtil {
    private static var instance_value:AnimationFactoryImageScaleUtil;
    private static var instance_set:Boolean = false;
    private static function get instance():AnimationFactoryImageScaleUtil {
        if (!AnimationFactoryImageScaleUtil.instance_set) {
            AnimationFactoryImageScaleUtil.instance_set = true;
            AnimationFactoryImageScaleUtil.instance_value = new AnimationFactoryImageScaleUtil();
        }
        return AnimationFactoryImageScaleUtil.instance_value;
    }
        private var imageScaleUtil:ImageJ2MEScaleUtil = null;

        // Java field initializers run after the base constructor
        private function initFieldsAnimationFactoryImageScaleUtil():void {
    this.imageScaleUtil = ImageJ2MEScaleUtil.getInstance();
        }

        public function AnimationFactoryImageScaleUtil() {
            super();
            this.initFieldsAnimationFactoryImageScaleUtil();
        }
    

    public static function getInstance():AnimationFactoryImageScaleUtil {
        return AnimationFactoryImageScaleUtil.instance;
    }
    

    public function createImage(image:Image, width:int, height:int, scaleWidth:int, scaleHeight:int):Image {
        var scaledImage:Image = null;
        if (scaleWidth != 0 && scaleHeight != 0) {
            var scaleX:Number = (Number(scaleWidth)) / (Number(width));
            var scaleY:Number = (Number(scaleHeight)) / (Number(height));
            if ((scaleX == 1.0 && scaleY == 1.0) || (scaleX == 0.0 || scaleY == 0.0)) {
                scaledImage = image;
            } else {
                var scaledWidth:int = JMath.toInt32((scaleX * Number(width)));
                var scaledHeight:int = JMath.toInt32((scaleY * Number(height)));
                scaledImage = this.imageScaleUtil.scale(image, scaledWidth, scaledHeight);
            }
        } else {
            scaledImage = image;
        }
        return scaledImage;
    }
    

    public function processAdjust(baseImageAnimationFactory:BaseImageAnimationFactory):void {
        var scaleProperties:ScaleProperties = baseImageAnimationFactory.getScalePropertiesP();
        if (scaleProperties.scaleWidth != 0 && scaleProperties.scaleHeight != 0) {
            var animationFactoryInitializationVisitor:AnimationFactoryInitializationVisitor = baseImageAnimationFactory.getAnimationFactoryInitializationVisitorP();
            var scaleX:Number = (Number(scaleProperties.scaleWidth)) / (Number(animationFactoryInitializationVisitor.width));
            var scaleY:Number = (Number(scaleProperties.scaleHeight)) / (Number(animationFactoryInitializationVisitor.height));
            if ((scaleX == 1.0 && scaleY == 1.0) || (scaleX == 0.0 || scaleY == 0.0)) {
            } else {
                animationFactoryInitializationVisitor.dx = JMath.toInt32((Number(animationFactoryInitializationVisitor.originalDx) * scaleX));
                animationFactoryInitializationVisitor.dy = JMath.toInt32((Number(animationFactoryInitializationVisitor.originalDy) * scaleY));
            }
        } else {
        }
    }
    }
}

