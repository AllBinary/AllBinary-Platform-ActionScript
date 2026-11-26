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
    import javax.microedition.lcdui.NullImage;
    import org.allbinary.animation.Animation;
    import org.allbinary.animation.AnimationBehaviorFactory;
    import org.allbinary.game.configuration.GameConfigurationCentral;
    import org.allbinary.logic.math.PrimitiveIntUtil;
    import org.allbinary.math.AngleFactory;
    import org.allbinary.math.AngleInfo;
    import org.allbinary.media.image.ImageToRotationImageArrayUtil;

    public class AllBinaryArrayImageRotationAnimationFactory extends BaseImageAnimationFactory {
        private var imageArray:Vector.<Image> = null;
        private var angleIncrement:int = 0;

        // Java field initializers run after the base constructor
        private function initFieldsAllBinaryArrayImageRotationAnimationFactory():void {
    this.imageArray = NullImage.NULL_IMAGE_ARRAY;
    
        }
    

    public static function createFactory(image:Image, dx:int, dy:int):AllBinaryArrayImageRotationAnimationFactory {
        var arrayImageRotationAnimationFactory:AllBinaryArrayImageRotationAnimationFactory = new AllBinaryArrayImageRotationAnimationFactory(image, image.getWidth(), image.getHeight(), int(AngleFactory.getInstance().TOTAL_ANGLE / GameConfigurationCentral.getInstance().getGameControlFidelity()), AnimationBehaviorFactory.getInstance());
        arrayImageRotationAnimationFactory.initDXY(dx, dy);
        return arrayImageRotationAnimationFactory;
    }
    

    public static function createFactoryA(image:Image, dx:int, dy:int, angleIncrement:int):AllBinaryArrayImageRotationAnimationFactory {
        var arrayImageRotationAnimationFactory:AllBinaryArrayImageRotationAnimationFactory = new AllBinaryArrayImageRotationAnimationFactory(image, image.getWidth(), image.getHeight(), angleIncrement, AnimationBehaviorFactory.getInstance());
        arrayImageRotationAnimationFactory.initDXY(dx, dy);
        return arrayImageRotationAnimationFactory;
    }
    

    public function AllBinaryArrayImageRotationAnimationFactory(image:Image, width:int, height:int, angleIncrement:int, animationBehaviorFactory:AnimationBehaviorFactory) {
        super(image, PrimitiveIntUtil.getArrayInstance(), width, height, 0, 0, animationBehaviorFactory);
        this.initFieldsAllBinaryArrayImageRotationAnimationFactory();
        this.angleIncrement = angleIncrement;
        this.init();
    }
    

    private function init():void {
        this.setImageArray(ImageToRotationImageArrayUtil.getInstance().generate(this.getImage(), this.getAngleIncrement(), AngleFactory.getInstance().TOTAL_ANGLE));
    }
    

    private function initDXY(dx:int, dy:int):void {
        this.animationFactoryInitializationVisitor.dx = dx;
        this.animationFactoryInitializationVisitor.dy = dy;
        this.animationFactoryInitializationVisitor.originalDx = dx;
        this.animationFactoryInitializationVisitor.originalDy = dy;
    }
    

    override public function getInstance1(instanceId:int):Animation {
        var scaledImageArray:Vector.<Image> = new Vector.<Image>(this.imageArray.length);
        var size:int = scaledImageArray.length;
        var image:Image = this.getImage();
        for (var index:int = 0; index < size; index++) {
            scaledImageArray[index] = this.animationFactoryImageScaleUtil.createImage(image, image.getWidth(), image.getHeight(), this.scaleProperties.scaleWidth, this.scaleProperties.scaleHeight);
        }
        if (this.animationFactoryInitializationVisitor.dx != 0 || this.animationFactoryInitializationVisitor.dy != 0) {
            this.animationFactoryImageScaleUtil.processAdjust(this);
            return new AdjustedImageArrayRotationAnimation(scaledImageArray, AngleInfo.getInstance1(((int(this.getAngleIncrement()) << 16) >> 16)), AngleFactory.getInstance().TOTAL_ANGLE, this.animationFactoryInitializationVisitor.dx, this.animationFactoryInitializationVisitor.dy, this.animationBehaviorFactory.getOrCreateInstance());
        } else {
            return new ImageArrayRotationAnimation(scaledImageArray, AngleInfo.getInstance1(((int(this.getAngleIncrement()) << 16) >> 16)), AngleFactory.getInstance().TOTAL_ANGLE, this.animationBehaviorFactory.getOrCreateInstance());
        }
    }
    

    public function setImageArray(imageArray:Vector.<Image>):void {
        this.imageArray = imageArray;
    }
    

    public function getAngleIncrement():int {
        return this.angleIncrement;
    }
    }
}

