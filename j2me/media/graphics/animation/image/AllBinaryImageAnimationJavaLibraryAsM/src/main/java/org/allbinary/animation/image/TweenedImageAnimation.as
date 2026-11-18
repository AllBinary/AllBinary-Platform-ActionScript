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
    import org.allbinary.animation.IndexedAnimation;
    import org.allbinary.graphics.Anchor;
    import org.allbinary.logic.math.PrimitiveIntUtil;
    import org.allbinary.util.CircularIndexUtil;

    public class TweenedImageAnimation extends IndexedAnimation {
        private var image:Image = null;
        private var dx:int = 0;
        private var dy:int = 0;
        private var totalFrames:int = 0;
        public var circularIndexUtil:CircularIndexUtil = null;
        private var anchor:int = 0;

        // Java field initializers run after the base constructor
        private function initFieldsTweenedImageAnimation():void {
    
    
    
    
    
    this.anchor = Anchor.TOP_LEFT;
        }
    

    public function TweenedImageAnimation(image:Image, dx:int, dy:int, totalFrames:int, animationBehavior:AnimationBehavior) {
        super(animationBehavior);
        this.initFieldsTweenedImageAnimation();
        this.image = image;
        this.dx = dx;
        this.dy = dy;
        this.totalFrames = totalFrames;
        this.circularIndexUtil = CircularIndexUtil.createInstance(this.totalFrames);
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
    

    override public function paintXY(graphics:Graphics, x:int, y:int):void {
        var frame:int = this.getFrame();
        var currentX:int = int(this.dx * frame);
        var currentY:int = int(this.dy * frame);
        graphics.drawImage(this.image, int(x + currentX), int(y + currentY), this.anchor);
    }
    

    public function close():void {
        DisposalUtil.getInstance().disposeImage(this.image);
    }
    

    public function finalize():void {
        DisposalUtil.getInstance().disposeImage(this.image);
    }
    }
}

