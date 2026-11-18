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
    import org.allbinary.animation.AnimationBehavior;
    import org.allbinary.graphics.Anchor;

    public class LeftToRightImageAnimation extends ImageSegmentAnimation {
        private var currentWidth:int = 0;
        private var anchor:int = 0;

        // Java field initializers run after the base constructor
        private function initFieldsLeftToRightImageAnimation():void {
    
    this.anchor = Anchor.TOP_LEFT;
        }
    

    public function LeftToRightImageAnimation(image:Image, sequenceArray:Vector.<int>, animationBehavior:AnimationBehavior) {
        super(image, sequenceArray, animationBehavior);
        this.initFieldsLeftToRightImageAnimation();
        this.currentWidth = 0;
        if (this.getSequence()[0] == -1) {
            this.setFrame(this.getSize() - 1);
        }
    }
    

    override public function nextFrame():void {
        if (this.getSequence()[0] == -1) {
            super.previousFrame();
        } else {
            super.nextFrame();
        }
        this.update();
    }
    

    override public function previousFrame():void {
        if (this.getSequence()[0] == -1) {
            super.nextFrame();
        } else {
            super.previousFrame();
        }
        this.update();
    }
    

    override public function setFrame(index:int):void {
        super.setFrame(index);
        this.update();
    }
    

    private function update():void {
        this.currentWidth = this.getDrawWidth() * this.getFrame() / this.getSize();
    }
    

    override public function paintXY(graphics:Graphics, x:int, y:int):void {
        graphics.drawRegion(this.getImage(), this.getStartX(), this.getStartY(), this.currentWidth, this.getDrawHeight(), Sprite.TRANS_NONE, x, y, this.anchor);
    }
    }
}

