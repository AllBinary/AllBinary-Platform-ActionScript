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
    import javax.microedition.lcdui.Image;
    import org.allbinary.animation.Animation;
    import org.allbinary.animation.AnimationBehaviorFactory;
    import org.allbinary.game.configuration.feature.Features;
    import org.allbinary.graphics.opengles.OpenGLFeatureFactory;
    import org.allbinary.graphics.opengles.OpenGLUtil;
    import org.allbinary.logic.math.PrimitiveIntUtil;
    import org.allbinary.math.AngleFactory;
    import org.allbinary.math.AngleInfo;
    import org.allbinary.media.image.ImageCopyUtil;

    public class AllBinaryJ2SEImageRotationAnimationFactory extends BaseImageAnimationFactory {
        public var angleIncrementP:int = 0;
        private var resizeCanvasForRotation:Boolean = false;

        // Java field initializers run after the base constructor
        private function initFieldsAllBinaryJ2SEImageRotationAnimationFactory():void {
    
    
        }
    

    public static function createDXY(image:Image, width:int, height:int, dx:int, dy:int, angleIncrement:int, animationBehaviorFactory:AnimationBehaviorFactory, resizeCanvasForRotation:Boolean):AllBinaryJ2SEImageRotationAnimationFactory {
        var imageRotationAnimationFactory:AllBinaryJ2SEImageRotationAnimationFactory = new AllBinaryJ2SEImageRotationAnimationFactory(image, width, height, angleIncrement, animationBehaviorFactory, resizeCanvasForRotation);
        imageRotationAnimationFactory.animationFactoryInitializationVisitor.dx = dx;
        imageRotationAnimationFactory.animationFactoryInitializationVisitor.dy = dy;
        imageRotationAnimationFactory.animationFactoryInitializationVisitor.originalDx = dx;
        imageRotationAnimationFactory.animationFactoryInitializationVisitor.originalDy = dy;
        return imageRotationAnimationFactory;
    }
    

    public function AllBinaryJ2SEImageRotationAnimationFactory(image:Image, width:int, height:int, angleIncrement:int, animationBehaviorFactory:AnimationBehaviorFactory, resizeCanvasForRotation:Boolean) {
        super(image, PrimitiveIntUtil.getArrayInstance(), width, height, 0, 0, animationBehaviorFactory);
        this.initFieldsAllBinaryJ2SEImageRotationAnimationFactory();
        this.angleIncrementP = angleIncrement;
        this.resizeCanvasForRotation = resizeCanvasForRotation;
    }
    

    private function getCanvasImage():Image {
        var features:Features = Features.getInstance();
        if (this.resizeCanvasForRotation && !features.isDefault(OpenGLFeatureFactory.getInstance().OPENGL)) {
            return ImageCopyUtil.getInstance().createImageScale(this.getImage(), 1.44, false);
        } else {
            return this.getImage();
        }
    }
    

    override public function getInstance1(instanceId:int):Animation {
        var imageCopyUtil:ImageCopyUtil = ImageCopyUtil.getInstance();
        var canvasImage:Image = this.getCanvasImage();
        var scaledImage:Image = this.animationFactoryImageScaleUtil.createImage(canvasImage, this.animationFactoryInitializationVisitor.width, this.animationFactoryInitializationVisitor.height, this.scaleProperties.scaleWidth, this.scaleProperties.scaleHeight);
        var openGLUtil:OpenGLUtil = OpenGLUtil.getInstance();
        scaledImage = openGLUtil.addImage(scaledImage);
        var copyOfScaledImage:Image = imageCopyUtil.createImageForRotation(scaledImage);
        if (this.animationFactoryInitializationVisitor.dx != 0 || this.animationFactoryInitializationVisitor.dy != 0) {
            this.animationFactoryImageScaleUtil.processAdjust(this);
            return new AllBinaryAdjustedJ2SEImageRotationAnimation(scaledImage, copyOfScaledImage, AngleInfo.getInstance1(this.angleIncrementP), AngleFactory.getInstance().TOTAL_ANGLE, this.animationFactoryInitializationVisitor.dx, this.animationFactoryInitializationVisitor.dy, this.animationBehaviorFactory.getOrCreateInstance());
        } else {
            return new AllBinaryJ2SEImageRotationAnimation(scaledImage, copyOfScaledImage, AngleInfo.getInstance1(this.angleIncrementP), AngleFactory.getInstance().TOTAL_ANGLE, this.animationBehaviorFactory.getOrCreateInstance());
        }
    }
    

    public function getAngleIncrement():int {
        return this.angleIncrementP;
    }
    }
}

