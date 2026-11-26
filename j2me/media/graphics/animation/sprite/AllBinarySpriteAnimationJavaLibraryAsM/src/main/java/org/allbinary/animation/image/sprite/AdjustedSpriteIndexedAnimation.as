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
    import org.allbinary.graphics.color.BasicColor;

    public class AdjustedSpriteIndexedAnimation extends SpriteIndexedAnimation {
        private var dx:int = 0;
        private var dy:int = 0;

        // Java field initializers run after the base constructor
        private function initFieldsAdjustedSpriteIndexedAnimation():void {
    
    
        }
    

    public function AdjustedSpriteIndexedAnimation(sprite:Sprite, image:Image, basicColorArray:Vector.<BasicColor>, dx:int, dy:int, animationBehavior:AnimationBehavior) {
        super(sprite, image, basicColorArray, animationBehavior);
        this.initFieldsAdjustedSpriteIndexedAnimation();
        this.dx = dx;
        this.dy = dy;
    }
    

    override public function paintFrame(graphics:Graphics, frame:int, x:int, y:int):void {
        this.setFrame(frame);
        this.sprite.setPosition(int(x + this.dx), int(y + this.dy));
        super.paint(graphics);
    }
    

    override public function paintXY(g:Graphics, x:int, y:int):void {
        this.sprite.setPosition(int(x + this.dx), int(y + this.dy));
        super.paint(g);
    }
    

    override public function paint(...args):void {
        if (args.length == 1) {
            this.paint_jo1(args[0]);
            return;
        }
        super.paint.apply(this, args);
    }

    private function paint_jo1(g:Graphics):void {
        this.sprite.setPosition(this.dx, this.dy);
        super.paint(g);
    }
    }
}

