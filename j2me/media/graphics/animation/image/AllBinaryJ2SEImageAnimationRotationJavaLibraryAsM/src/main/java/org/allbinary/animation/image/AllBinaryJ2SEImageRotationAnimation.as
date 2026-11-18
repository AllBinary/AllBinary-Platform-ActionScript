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
    import org.allbinary.DisposalUtil;
    import org.allbinary.animation.AnimationBehavior;
    import org.allbinary.graphics.color.BasicColor;
    import org.allbinary.math.AngleInfo;
    import org.allbinary.media.image.ImageCopyUtil;
    import org.allbinary.media.image.ImageModifierUtil;
    import org.allbinary.media.image.ImageRotationUtil;

    public class AllBinaryJ2SEImageRotationAnimation extends ImageBaseRotationAnimation {
        private var imageRotationUtil:ImageRotationUtil = null;
        private var imageModifierUtil:ImageModifierUtil = null;
        private var realOriginalImage:Image = null;
        private var originalImageArray:Vector.<Image> = null;
        private var twoImages:Vector.<Image> = null;
        private var imageToShow:Image = null;
        private var bufferedImageIndex:int = 0;
        private var lastScaleX:Number = 0.0;
        private var lastScaleY:Number = 0.0;
        private var scaleX:Number = 0.0;
        private var scaleY:Number = 0.0;
        private var maxScaleX:Number = 0.0;
        private var maxScaleY:Number = 0.0;
        private var alphaProcessor:ModifierBaseProcessor = null;
        private var setColorProcessor:ModifierBaseProcessor = null;
        private var changeColorProcessor:ModifierBaseProcessor = null;
        private var scaleProcessor:ScaleBaseProcessor = null;

        // Java field initializers run after the base constructor
        private function initFieldsAllBinaryJ2SEImageRotationAnimation():void {
    this.imageRotationUtil = ImageRotationUtil.getInstance();
    this.imageModifierUtil = ImageModifierUtil.getInstanceOrCreate();
    
    this.originalImageArray = new Vector.<Image>(1);
    this.twoImages = new Vector.<Image>(2);
    
    this.bufferedImageIndex = 0;
    this.lastScaleX = 1.0;
    this.lastScaleY = 1.0;
    this.scaleX = 1.0;
    this.scaleY = 1.0;
    this.maxScaleX = 0.0;
    this.maxScaleY = 0.0;
    this.alphaProcessor = ModifierBaseProcessor.getInstance();
    this.setColorProcessor = ModifierBaseProcessor.getInstance();
    this.changeColorProcessor = ModifierBaseProcessor.getInstance();
    this.scaleProcessor = ScaleProcessor.getInstance();
        }
    

    public function AllBinaryJ2SEImageRotationAnimation(originalImage:Image, image:Image, angleInfo:AngleInfo, totalAngle:int, animationBehavior:AnimationBehavior) {
        super(image, angleInfo, totalAngle, animationBehavior);
        this.initFieldsAllBinaryJ2SEImageRotationAnimation();
        this.realOriginalImage = originalImage;
        this.originalImageArray[0] = originalImage;
        this.imageToShow = image;
        this.twoImages[0] = image;
        this.twoImages[1] = ImageCopyUtil.getInstance().createImageForRotation(image);
    }
    

    override public function setBasicColorP(basicColor:BasicColor):void {
        var changed:Boolean = false;
        if (this.getBasicColorP() == null || this.getBasicColorP().intValue() != basicColor.intValue()) {
            changed = true;
        }
        super.setBasicColorP(basicColor);
        if (changed) {
            this.setColorProcessor = SetColorProcessor.getInstance();
            this.updateImage();
        }
    }
    

    override public function changeBasicColor(basicColor:BasicColor):void {
        var changed:Boolean = false;
        if (this.getChangeBasicColor() == null || this.getChangeBasicColor().intValue() != basicColor.intValue()) {
            changed = true;
        }
        super.changeBasicColor(basicColor);
        if (changed) {
            this.changeColorProcessor = ChangeColorProcessor.getInstance();
            this.updateImage();
        }
    }
    

    override public function setAlpha(alpha:int):void {
        var changed:Boolean = false;
        if (this.alphaP != alpha) {
            changed = true;
        }
        super.setAlpha(alpha);
        if (changed) {
            this.alphaProcessor = AlphaProcessor.getInstance();
            this.updateImage();
        }
    }
    

    override public function setScale(scaleX:Number, scaleY:Number):void {
        this.scaleX = scaleX;
        this.scaleY = scaleY;
        if (this.scaleX != this.lastScaleX || this.scaleY != this.lastScaleY) {
            this.scaleProcessor.update(this.realOriginalImage, this.originalImageArray, this.twoImages, this.bufferedImageIndex, this.scaleX, this.scaleY, this.maxScaleX, this.maxScaleY);
            this.updateImage();
        }
        this.lastScaleX = this.scaleX;
        this.lastScaleY = this.scaleY;
    }
    

    override public function setMaxScale(maxScaleX:Number, maxScaleY:Number):void {
        this.maxScaleX = maxScaleX;
        this.maxScaleY = maxScaleY;
        this.scaleProcessor.update(this.realOriginalImage, this.originalImageArray, this.twoImages, this.bufferedImageIndex, this.scaleX, this.scaleY, this.maxScaleX, this.maxScaleY);
        this.updateImage();
    }
    

    override public function nextRotation():void {
        super.nextRotation();
        this.updateImage();
    }
    

    override public function previousRotation():void {
        super.previousRotation();
        this.updateImage();
    }
    

    private function updateImage():void {
        this.imageRotationUtil.rotateImage(this.originalImageArray[0], this.twoImages[this.bufferedImageIndex], int(this.angleInfo.getAngle() + 90));
        this.alphaProcessor.updateAlpha(this.imageModifierUtil, NullImage.NULL_IMAGE, this.twoImages[this.bufferedImageIndex], 0, this.alphaP);
        this.setColorProcessor.updateColor(this.imageModifierUtil, NullImage.NULL_IMAGE, this.twoImages[this.bufferedImageIndex], 0, this.basicColor);
        this.changeColorProcessor.updateColor(this.imageModifierUtil, NullImage.NULL_IMAGE, this.twoImages[this.bufferedImageIndex], 0, this.changeBasicColorP);
        this.swap();
    }
    

    override public function setFrame(index:int):void {
        super.setFrame(index);
        this.updateImage();
    }
    

    public function swap():void {
        this.imageToShow = this.twoImages[this.bufferedImageIndex];
        if (this.bufferedImageIndex == 0) {
            this.bufferedImageIndex = 1;
        } else {
            this.bufferedImageIndex = 0;
        }
    }
    

    override public function paintXY(graphics:Graphics, x:int, y:int):void {
        graphics.drawImage(this.imageToShow, x, y, this.anchor);
    }
    

    override public function close():void {
        super.close();
        var disposalUtil:DisposalUtil = DisposalUtil.getInstance();
        var size2:int = this.twoImages.length;
        for (var index:int = 0; index < size2; index++) {
            disposalUtil.disposeImage(this.twoImages[index]);
        }
        var size:int = this.originalImageArray.length;
        for (index = 0; index < size; index++) {
            disposalUtil.disposeImage(this.originalImageArray[index]);
        }
        disposalUtil.disposeImage(this.realOriginalImage);
        disposalUtil.disposeImage(this.imageToShow);
    }
    

    override public function finalize():void {
        super.finalize();
        var disposalUtil:DisposalUtil = DisposalUtil.getInstance();
        var size2:int = this.twoImages.length;
        for (var index:int = 0; index < size2; index++) {
            disposalUtil.disposeImage(this.twoImages[index]);
        }
        var size:int = this.originalImageArray.length;
        for (index = 0; index < size; index++) {
            disposalUtil.disposeImage(this.originalImageArray[index]);
        }
        disposalUtil.disposeImage(this.realOriginalImage);
        disposalUtil.disposeImage(this.imageToShow);
    }
    }
}

