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
    import org.allbinary.DisposalUtil;
    import org.allbinary.animation.AnimationBehavior;
    import org.allbinary.animation.IndexedAnimation;
    import org.allbinary.graphics.Anchor;
    import org.allbinary.logic.math.PrimitiveIntUtil;

    public class ImageAnimation extends IndexedAnimation {
        private var image:Image = null;
        private var anchor:int = 0;

        // Java field initializers run after the base constructor
        private function initFieldsImageAnimation():void {
    
    this.anchor = Anchor.TOP_LEFT;
        }
    

    public function ImageAnimation(image:Image, animationBehavior:AnimationBehavior) {
        super(animationBehavior);
        this.initFieldsImageAnimation();
        this.image = image;
    }
    

    override public function getAnimationSize():int {
        return this.getSize();
    }
    

    override public function nextFrame():void {
    }
    

    override public function previousFrame():void {
    }
    

    override public function setFrame(index:int):void {
    }
    

    override public function getFrame():int {
        return 0;
    }
    

    override public function getSize():int {
        return 1;
    }
    

    override public function setSequence(sequence:Vector.<int>):void {
    }
    

    override public function getSequence():Vector.<int> {
        return PrimitiveIntUtil.getArrayInstance();
    }
    

    override public function paintXY(graphics:Graphics, x:int, y:int):void {
        graphics.drawImage(this.image, x, y, this.anchor);
    }
    

    public function getImage(...args):* {
        if (args.length == 0) {
            return this.getImage_jo0();
        }
        throw new JException("IllegalArgumentException", "getImage");
    }

    private function getImage_jo0():Image {
        return this.image;
    }
    

    public function close():void {
        DisposalUtil.getInstance().disposeImage(this.image);
    }
    

    public function finalize():void {
        DisposalUtil.getInstance().disposeImage(this.image);
    }
    }
}

