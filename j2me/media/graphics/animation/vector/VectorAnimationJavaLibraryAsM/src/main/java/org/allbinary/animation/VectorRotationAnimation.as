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
package org.allbinary.animation {
    import org.allbinary.direction.Direction;
    import org.allbinary.graphics.color.BasicColor;
    import org.allbinary.math.Angle;
    import org.allbinary.math.AngleFactory;
    import org.allbinary.math.AngleInfo;

    public class VectorRotationAnimation extends VectorBaseRotationAnimation {
    

    public function VectorRotationAnimation(currentPoints:Vector.<Vector.<Vector.<int>>>, basicColor:BasicColor, animationBehavior:AnimationBehavior) {
        super(AngleInfo.getInstance1(((int((int(AngleFactory.getInstance().TOTAL_ANGLE / currentPoints.length))) << 16) >> 16)), currentPoints, basicColor, animationBehavior);
        this.angleInfo.adjustAngle(this.getFrame());
    }
    

    override public function setFrameByDirection(direction:Direction):void {
        var angle:Angle = this.directionUtil.getFrameAngle(direction);
        this.adjustFrameToAngle(angle);
    }
    

    override public function setFrameToAngle(angle:Angle):void {
        this.adjustFrameToAngle(angle);
    }
    

    override public function setFrame(index:int):void {
        super.setFrame(index);
        this.angleInfo.adjustAngle(this.getFrame());
    }
    

    override public function adjustFrame(newAngle:int):void {
        this.setFrame(this.frameUtil.getFrameForAngle(newAngle, this.angleInfo.getAngleIncrementInfo().getAngleIncrement()));
    }
    

    override public function adjustFrameToAngle(newAngle:Angle):void {
        this.adjustFrame(newAngle.getValue());
    }
    }
}

