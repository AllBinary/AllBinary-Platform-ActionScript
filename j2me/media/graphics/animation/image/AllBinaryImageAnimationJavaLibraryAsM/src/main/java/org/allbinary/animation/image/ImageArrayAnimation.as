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
    import org.allbinary.animation.AnimationBehavior;
    import org.allbinary.animation.IndexedAnimation;
    import org.allbinary.graphics.Anchor;
    import org.allbinary.logic.math.PrimitiveIntUtil;
    import org.allbinary.util.CircularIndexUtil;

    public class ImageArrayAnimation extends IndexedAnimation {
        private var imageArray:Vector.<Image> = null;
        private var totalFrames:int = 0;
        public var circularIndexUtil:CircularIndexUtil = null;
        private var anchor:int = 0;

        // Java field initializers run after the base constructor
        private function initFieldsImageArrayAnimation():void {
    this.imageArray = NullImage.NULL_IMAGE_ARRAY;
    this.totalFrames = 0;
    this.circularIndexUtil = CircularIndexUtil.NULL_CIRCULAR_INDEX_UTIL;
    this.anchor = Anchor.TOP_LEFT;
        }
    

    public function ImageArrayAnimation(imageArray:Vector.<Image>, animationBehavior:AnimationBehavior) {
        super(animationBehavior);
        this.initFieldsImageArrayAnimation();
        this.setImageArray(imageArray);
    }
    

    override public function getAnimationSize():int {
        return this.getSize();
    }
    

    override public function nextFrame():void {
        this.circularIndexUtil.next();
    }
    

    override public function previousFrame():void {
        this.circularIndexUtil.previous();
    }
    

    override public function setFrame(index:int):void {
        this.circularIndexUtil.setIndex(index);
    }
    

    override public function getFrame():int {
        return this.circularIndexUtil.getIndex();
    }
    

    override public function getSize():int {
        return this.totalFrames;
    }
    

    override public function setSequence(sequence:Vector.<int>):void {
    }
    

    override public function getSequence():Vector.<int> {
        return PrimitiveIntUtil.getArrayInstance();
    }
    

    public function getImage(...args):* {
        if (args.length == 1) {
            return this.getImage_jo1(args[0]);
        }
        throw new JException("IllegalArgumentException", "getImage");
    }

    private function getImage_jo1(index:int):Image {
        return this.imageArray[index];
    }
    

    public function getImageArray():Vector.<Image> {
        return this.imageArray;
    }
    

    public function setImageArray(imageArray:Vector.<Image>):void {
        this.imageArray = imageArray;
        this.totalFrames = imageArray.length;
        this.circularIndexUtil = CircularIndexUtil.createInstance(this.totalFrames);
    }
    

    override public function paintXY(graphics:Graphics, x:int, y:int):void {
        graphics.drawImage(this.imageArray[this.circularIndexUtil.getIndex()], x, y, this.anchor);
    }
    }
}

