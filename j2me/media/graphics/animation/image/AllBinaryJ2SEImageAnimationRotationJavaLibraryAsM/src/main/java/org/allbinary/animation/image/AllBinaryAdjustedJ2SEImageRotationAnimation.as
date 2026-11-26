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
    import org.allbinary.animation.AnimationBehavior;
    import org.allbinary.math.AngleInfo;

    public class AllBinaryAdjustedJ2SEImageRotationAnimation extends AllBinaryJ2SEImageRotationAnimation {
        private var dx:int = 0;
        private var dy:int = 0;

        // Java field initializers run after the base constructor
        private function initFieldsAllBinaryAdjustedJ2SEImageRotationAnimation():void {
    this.dx = 0;
    this.dy = 0;
        }
    

    public function AllBinaryAdjustedJ2SEImageRotationAnimation(originalImage:Image, image:Image, angleInfo:AngleInfo, totalAngle:int, dx:int, dy:int, animationBehavior:AnimationBehavior) {
        super(originalImage, image, angleInfo, totalAngle, animationBehavior);
        this.initFieldsAllBinaryAdjustedJ2SEImageRotationAnimation();
        this.init(dx, dy);
    }
    

    public function init(dx:int, dy:int):void {
        this.dx = dx;
        this.dy = dy;
    }
    

    override public function setDx(dx:int):void {
        this.dx = dx;
    }
    

    override public function getDx():int {
        return this.dx;
    }
    

    override public function setDy(dy:int):void {
        this.dy = dy;
    }
    

    override public function getDy():int {
        return this.dy;
    }
    

    override public function paintXY(graphics:Graphics, x:int, y:int):void {
        super.paintXY(graphics, int(x + this.dx), int(y + this.dy));
    }
    }
}

