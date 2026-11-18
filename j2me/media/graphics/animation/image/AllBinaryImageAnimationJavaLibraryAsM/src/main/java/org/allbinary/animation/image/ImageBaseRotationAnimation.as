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
    import org.allbinary.animation.RotationAnimation;
    import org.allbinary.graphics.Anchor;
    import org.allbinary.logic.math.PrimitiveIntUtil;
    import org.allbinary.math.AngleInfo;
    import org.allbinary.util.CircularIndexUtil;

    public class ImageBaseRotationAnimation extends RotationAnimation {
        private var image:Image = null;
        public var anchor:int = 0;

        // Java field initializers run after the base constructor
        private function initFieldsImageBaseRotationAnimation():void {
    
    this.anchor = Anchor.TOP_LEFT;
        }
    

    public function ImageBaseRotationAnimation(image:Image, angleInfo:AngleInfo, totalAngle:int, animationBehavior:AnimationBehavior) {
        super(angleInfo, CircularIndexUtil.createInstance(int(totalAngle / angleInfo.getAngleIncrementInfo().getAngleIncrement())), animationBehavior);
        this.initFieldsImageBaseRotationAnimation();
        this.image = image;
    }
    

    override public function getAnimationSize():int {
        return this.getSize();
    }
    

    override public function setSequence(sequence:Vector.<int>):void {
    }
    

    override public function getSequence():Vector.<int> {
        return PrimitiveIntUtil.getArrayInstance();
    }
    

    override public function paintXY(graphics:Graphics, x:int, y:int):void {
        graphics.drawImage(this.image, x, y, this.anchor);
    }
    

    public function getImage():Image {
        return this.image;
    }
    

    override public function getWidth():int {
        return this.image.getWidth();
    }
    

    override public function getHeight():int {
        return this.image.getHeight();
    }
    

    public function close():void {
        DisposalUtil.getInstance().disposeImage(this.image);
    }
    

    public function finalize():void {
        DisposalUtil.getInstance().disposeImage(this.image);
    }
    }
}

