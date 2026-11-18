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
    import org.allbinary.animation.AnimationBehavior;
    import org.allbinary.direction.Direction;
    import org.allbinary.math.Angle;
    import org.allbinary.math.AngleFactory;
    import org.allbinary.math.AngleInfo;

    public class AllBinarySpriteRotationAnimation extends HackRotationSpriteIndexedAnimation {
    

    public function AllBinarySpriteRotationAnimation(sprite:Sprite, image:Image, animationBehavior:AnimationBehavior) {
        super(sprite, image, AngleInfo.getInstance1(((int((AngleFactory.getInstance().TOTAL_ANGLE / sprite.getRawFrameCount())) << 16) >> 16)), animationBehavior);
        this.angleInfo.adjustAngle(this.sprite.getFrame());
    }
    

    override public function nextRotation():void {
        this.sprite.nextFrame();
        this.angleInfo.adjustAngle(this.sprite.getFrame());
    }
    

    override public function previousRotation():void {
        this.sprite.prevFrame();
        this.angleInfo.adjustAngle(this.sprite.getFrame());
    }
    

    override public function setFrameByDirection(direction:Direction):void {
        var angle:Angle = this.directionUtil.getFrameAngle(direction);
        this.adjustFrameToAngle(angle);
    }
    

    override public function setFrameToAngle(angle:Angle):void {
        this.adjustFrameToAngle(angle);
    }
    

    override public function setFrame(index:int):void {
        this.sprite.setFrame(index);
        this.angleInfo.adjustAngle(this.getFrame());
    }
    

    override public function adjustFrameToAngle(angle:Angle):void {
        this.adjustFrame(angle.getValue());
    }
    

    override public function adjustFrame(angle:int):void {
        this.setFrame(this.frameUtil.getFrameForAngle(angle, this.angleInfo.getAngleIncrementInfo().getAngleIncrement()));
    }
    }
}

