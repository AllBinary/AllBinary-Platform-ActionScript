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
    import org.allbinary.animation.IndexedAnimation;
    import org.allbinary.graphics.color.BasicColor;
    import org.allbinary.graphics.color.BasicColorFactory;
    import org.allbinary.graphics.color.ColorCompositeInterface;
    import org.allbinary.logic.math.PrimitiveIntUtil;
    import org.allbinary.logic.string.StringMaker;
    import org.allbinary.string.CommonLabels;

    public class SpriteIndexedAnimation extends IndexedAnimation implements ColorCompositeInterface {
        public var sprite:Sprite = null;
        public var image:Image = null;
        private var basicColorArray:Vector.<BasicColor> = null;

        // Java field initializers run after the base constructor
        private function initFieldsSpriteIndexedAnimation():void {
    
    
    
        }
    

    public function SpriteIndexedAnimation(sprite:Sprite, image:Image, basicColorArray:Vector.<BasicColor>, animationBehavior:AnimationBehavior) {
        super(animationBehavior);
        this.initFieldsSpriteIndexedAnimation();
        this.sprite = sprite;
        this.image = image;
        this.basicColorArray = basicColorArray;
        if (this.basicColorArray.length != 0 && this.getSize() != this.basicColorArray.length) {
            throw new JException("Exception", new StringMaker().append(CommonLabels.getInstance().TOTAL_LABEL).appendint(this.getSize()).append("!=").appendint(this.basicColorArray.length).toString());
        }
    }
    

    override public function getAnimationSize():int {
        return this.getSize();
    }
    

    override public function setBasicColorP(basicColor:BasicColor):void {
        for (var index:int = 0; index < this.basicColorArray.length; index++) {
            if (basicColor === this.basicColorArray[index]) {
                this.setFrame(index);
                break;
            }
        }
    }
    

    override public function getBasicColorP():BasicColor {
        if (this.basicColorArray.length < this.getFrame()) {
            return this.basicColorArray[this.getFrame()];
        } else {
            return BasicColorFactory.getInstance().WHITE;
        }
    }
    

    public function paintFrame(graphics:Graphics, frame:int, x:int, y:int):void {
        this.setFrame(frame);
        this.sprite.setPosition(x, y);
        this.sprite.paint(graphics);
    }
    

    override public function paintXY(graphics:Graphics, x:int, y:int):void {
        this.sprite.setPosition(x, y);
        this.sprite.paint(graphics);
    }
    

    public function paint(...args):void {
        if (args.length == 1) {
            this.paint_jo1(args[0]);
            return;
        }
        throw new JException("IllegalArgumentException", "paint");
    }

    private function paint_jo1(graphics:Graphics):void {
        this.sprite.paint(graphics);
    }
    

    override public function nextFrame():void {
        this.sprite.nextFrame();
    }
    

    override public function previousFrame():void {
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
    

    override public function isLastFrame():Boolean {
        if (this.sprite.getFrame() == int(this.getSize() - 1)) {
            return true;
        } else {
            return false;
        }
    }
    

    public function getLastFrame():int {
        return this.getSize();
    }
    

    override public function setSequence(sequence:Vector.<int>):void {
    }
    

    override public function getSequence():Vector.<int> {
        return PrimitiveIntUtil.getArrayInstance();
    }
    

    public function close():void {
    }
    

    public function finalize():void {
    }
    }
}

