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
    import javax.microedition.lcdui.Graphics;
    import javax.microedition.lcdui.Image;
    import javax.microedition.lcdui.NullImage;
    import org.allbinary.DisposalUtil;
    import org.allbinary.animation.AnimationBehavior;
    import org.allbinary.animation.RotationAnimation;
    import org.allbinary.graphics.Anchor;
    import org.allbinary.logic.math.PrimitiveIntUtil;
    import org.allbinary.math.AngleInfo;
    import org.allbinary.media.image.ImageModifierUtil;
    import org.allbinary.util.CircularIndexUtil;

    public class ImageArrayBaseRotationAnimation extends RotationAnimation {
        private var imageModifierUtil:ImageModifierUtil = null;
        private var originalImageArray:Vector.<Image> = null;
        private var imageArray:Vector.<Image> = null;
        private var currentImage:Image = null;
        private var totalFrames:int = 0;
        private var anchor:int = 0;

        // Java field initializers run after the base constructor
        private function initFieldsImageArrayBaseRotationAnimation():void {
    this.imageModifierUtil = ImageModifierUtil.getInstanceOrCreate();
    
    this.imageArray = NullImage.NULL_IMAGE_ARRAY;
    
    this.totalFrames = 0;
    this.anchor = Anchor.TOP_LEFT;
        }
    

    public function ImageArrayBaseRotationAnimation(originalImageArray:Vector.<Image>, angleInfo:AngleInfo, animationBehavior:AnimationBehavior) {
        super(angleInfo, CircularIndexUtil.createInstance(int(360 / angleInfo.getAngleIncrementInfo().getAngleIncrement())), animationBehavior);
        this.initFieldsImageArrayBaseRotationAnimation();
        this.originalImageArray = originalImageArray;
        this.setImageArray(this.imageModifierUtil.getImageArray(originalImageArray));
        this.currentImage = this.imageArray[this.circularIndexUtil.getIndex()];
    }
    

    override public function getAnimationSize():int {
        return this.getSize();
    }
    

    override public function setAlpha(alpha:int):void {
        if (this.alphaP != alpha) {
            super.setAlpha(alpha);
            this.imageModifierUtil.reset();
            var index:int = this.circularIndexUtil.getIndex();
            this.imageModifierUtil.setAlpha(this.originalImageArray[index], this.imageArray[index], index, this.alphaP);
        }
    }
    

    override public function nextRotation():void {
        super.nextRotation();
        var index:int = this.circularIndexUtil.getIndex();
        this.imageModifierUtil.setAlpha(this.originalImageArray[index], this.imageArray[index], index, this.alphaP);
        this.currentImage = this.imageArray[index];
    }
    

    override public function previousRotation():void {
        super.previousRotation();
        var index:int = this.circularIndexUtil.getIndex();
        this.imageModifierUtil.setAlpha(this.originalImageArray[index], this.imageArray[index], index, this.alphaP);
        this.currentImage = this.imageArray[index];
    }
    

    override public function setFrame(index2:int):void {
        super.setFrame(index2);
        var index:int = this.circularIndexUtil.getIndex();
        this.imageModifierUtil.setAlpha(this.originalImageArray[index], this.imageArray[index], index, this.alphaP);
        this.currentImage = this.imageArray[index];
    }
    

    override public function setSequence(sequence:Vector.<int>):void {
    }
    

    override public function getSequence():Vector.<int> {
        return PrimitiveIntUtil.getArrayInstance();
    }
    

    public function setImageArray(imageArray:Vector.<Image>):void {
        this.imageArray = imageArray;
        this.totalFrames = imageArray.length;
        this.circularIndexUtil = CircularIndexUtil.createInstance(this.totalFrames);
    }
    

    override public function paintXY(graphics:Graphics, x:int, y:int):void {
        graphics.drawImage(this.currentImage, x, y, this.anchor);
    }
    

    public function close():void {
        var disposalUtil:DisposalUtil = DisposalUtil.getInstance();
        var size2:int = this.imageArray.length;
        for (var index:int = 0; index < size2; index++) {
            disposalUtil.disposeImage(this.imageArray[index]);
        }
        var size:int = this.originalImageArray.length;
        for (index = 0; index < size; index++) {
            disposalUtil.disposeImage(this.originalImageArray[index]);
        }
        disposalUtil.disposeImage(this.currentImage);
    }
    

    public function finalize():void {
        var disposalUtil:DisposalUtil = DisposalUtil.getInstance();
        var size2:int = this.imageArray.length;
        for (var index:int = 0; index < size2; index++) {
            disposalUtil.disposeImage(this.imageArray[index]);
        }
        var size:int = this.originalImageArray.length;
        for (index = 0; index < size; index++) {
            disposalUtil.disposeImage(this.originalImageArray[index]);
        }
        disposalUtil.disposeImage(this.currentImage);
    }
    }
}

