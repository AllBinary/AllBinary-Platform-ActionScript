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
    import org.allbinary.logic.math.PrimitiveIntUtil;

    public class RightToLeftImageAnimation extends ImageSegmentAnimation {
        private var startWidth:int = 0;
        private var currentWidth:int = 0;
        private var anchor:int = 0;

        // Java field initializers run after the base constructor
        private function initFieldsRightToLeftImageAnimation():void {
    this.startWidth = 0;
    this.currentWidth = 0;
    this.anchor = Anchor.TOP_LEFT;
        }
    

    public function RightToLeftImageAnimation(image:Image, animationBehavior:AnimationBehavior) {
        super(image, PrimitiveIntUtil.getArrayInstance(), animationBehavior);
        this.initFieldsRightToLeftImageAnimation();
        this.setFrame(int(this.getSize() - 1));
    }
    

    override public function nextFrame():void {
        super.previousFrame();
        this.update();
    }
    

    override public function previousFrame():void {
        super.nextFrame();
        this.update();
    }
    

    override public function setFrame(index:int):void {
        super.setFrame(index);
        this.update();
    }
    

    private function update():void {
        this.startWidth = int(int(this.getDrawWidth() * this.getFrame()) / this.getSize());
        this.currentWidth = int(this.getDrawWidth() - this.startWidth);
    }
    

    override public function paintXY(graphics:Graphics, x:int, y:int):void {
        graphics.drawRegion(this.getImage(), this.startWidth, this.getStartY(), this.currentWidth, this.getDrawHeight(), Sprite.TRANS_NONE, int(x + this.startWidth), y, this.anchor);
    }
    }
}

