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
    import javax.microedition.lcdui.game.Sprite;
    import org.allbinary.animation.AnimationBehavior;
    import org.allbinary.graphics.Anchor;

    public class TopToBottomImageAnimation extends ImageSegmentAnimation {
        private var currentHeight:int = 0;
        private var anchor:int = 0;

        // Java field initializers run after the base constructor
        private function initFieldsTopToBottomImageAnimation():void {
    
    this.anchor = Anchor.TOP_LEFT;
        }
    

    public function TopToBottomImageAnimation(image:Image, sequenceArray:Vector.<int>, animationBehavior:AnimationBehavior) {
        super(image, sequenceArray, animationBehavior);
        this.initFieldsTopToBottomImageAnimation();
        this.currentHeight = 0;
        if (this.getSequence()[0] == -1) {
            this.setFrame(int(this.getSize() - 1));
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
        this.currentHeight = int(int(this.getDrawHeight() * this.getFrame()) / this.getSize());
    }
    

    override public function paintXY(graphics:Graphics, x:int, y:int):void {
        graphics.drawRegion(this.getImage(), this.getStartX(), this.getStartY(), this.getDrawWidth(), this.currentHeight, Sprite.TRANS_NONE, x, y, this.anchor);
    }
    }
}

