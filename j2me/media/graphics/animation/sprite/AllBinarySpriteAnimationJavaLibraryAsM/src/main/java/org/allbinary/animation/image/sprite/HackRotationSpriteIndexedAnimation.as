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
package org.allbinary.animation.image.sprite {
    import javax.microedition.lcdui.Graphics;
    import javax.microedition.lcdui.Image;
    import javax.microedition.lcdui.game.Sprite;
    import org.allbinary.animation.AnimationBehavior;
    import org.allbinary.animation.RotationAnimation;
    import org.allbinary.logic.math.PrimitiveIntUtil;
    import org.allbinary.math.AngleInfo;
    import org.allbinary.util.CircularIndexUtil;

    public class HackRotationSpriteIndexedAnimation extends RotationAnimation {
        public var sprite:Sprite = null;
        private var image:Image = null;

        // Java field initializers run after the base constructor
        private function initFieldsHackRotationSpriteIndexedAnimation():void {
    
    
        }
    

    public function HackRotationSpriteIndexedAnimation(sprite:Sprite, image:Image, angleInfo:AngleInfo, animationBehavior:AnimationBehavior) {
        super(angleInfo, CircularIndexUtil.createInstance(int(360 / angleInfo.getAngleIncrementInfo().getAngleIncrement())), animationBehavior);
        this.initFieldsHackRotationSpriteIndexedAnimation();
        this.sprite = sprite;
        this.image = image;
    }
    

    override public function getAnimationSize():int {
        return this.getSize();
    }
    

    public function paintFrame(g:Graphics, frame:int, x:int, y:int):void {
        this.setFrame(frame);
        this.paintXY(g, x, y);
    }
    

    override public function paintXY(g:Graphics, x:int, y:int):void {
        this.sprite.setPosition(x, y);
        this.paint(g);
    }
    

    public function paint(...args):void {
        if (args.length == 1) {
            this.paint_jo1(args[0]);
            return;
        }
        throw new JException("IllegalArgumentException", "paint");
    }

    private function paint_jo1(g:Graphics):void {
        this.sprite.paint(g);
    }
    

    override public function nextRotation():void {
        this.sprite.nextFrame();
    }
    

    override public function previousRotation():void {
        this.sprite.prevFrame();
    }
    

    override public function getSize():int {
        return this.sprite.getRawFrameCount();
    }
    

    override public function setFrame(frame:int):void {
        this.sprite.setFrame(frame);
    }
    

    override public function getFrame():int {
        return this.sprite.getFrame();
    }
    

    override public function setSequence(sequence:Vector.<int>):void {
    }
    

    override public function getSequence():Vector.<int> {
        return PrimitiveIntUtil.getArrayInstance();
    }
    }
}

