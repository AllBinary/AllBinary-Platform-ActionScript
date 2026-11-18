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
    import org.allbinary.direction.DirectionUtil;
    import org.allbinary.logic.string.StringMaker;
    import org.allbinary.math.Angle;
    import org.allbinary.math.AngleInfo;
    import org.allbinary.math.FrameUtil;
    import org.allbinary.util.CircularIndexUtil;

    public class RotationAnimation extends IndexedAnimation implements RotationAnimationInterface {
        public var frameUtil:FrameUtil = null;
        public var directionUtil:DirectionUtil = null;
        public var angleInfo:AngleInfo = null;
        public var circularIndexUtil:CircularIndexUtil = null;

        // Java field initializers run after the base constructor
        private function initFieldsRotationAnimation():void {
    this.frameUtil = FrameUtil.getInstance();
    this.directionUtil = DirectionUtil.getInstance();
    
    
        }
    

    public function RotationAnimation(angleInfo:AngleInfo, circularIndexUtil:CircularIndexUtil, animationBehavior:AnimationBehavior) {
        super(animationBehavior);
        this.initFieldsRotationAnimation();
        this.angleInfo = angleInfo;
        this.circularIndexUtil = circularIndexUtil;
    }
    

    public function nextRotationX():void {
    }
    

    public function previousRotationX():void {
    }
    

    public function nextRotation():void {
        this.angleInfo.adjustAngle(this.circularIndexUtil.next());
    }
    

    public function previousRotation():void {
        this.angleInfo.adjustAngle(this.circularIndexUtil.previous());
    }
    

    public function nextRotationZ():void {
    }
    

    public function previousRotationZ():void {
    }
    

    override public function setFrame(index:int):void {
        this.circularIndexUtil.setIndex(index);
        var newFrame:int = this.circularIndexUtil.getIndex();
        this.angleInfo.adjustAngle(newFrame);
    }
    

    public function setFrameByDirection(direction:Direction):void {
        var angle:Angle = this.directionUtil.getFrameAngle(direction);
        this.adjustFrameToAngle(angle);
    }
    

    public function setFrameToAngle(angle:Angle):void {
        this.adjustFrameToAngle(angle);
    }
    

    public function adjustFrameToAngle(angle:Angle):void {
        this.adjustFrame(angle.getValue());
    }
    

    public function adjustFrame(angle:int):void {
        this.setFrame(this.frameUtil.getFrameForAngle(angle, this.angleInfo.getAngleIncrementInfo().getAngleIncrement()));
    }
    

    override public function getFrame():int {
        return this.circularIndexUtil.getIndex();
    }
    

    override public function getSize():int {
        return this.circularIndexUtil.getSize();
    }
    

    public function getAngleInfoP():AngleInfo {
        return this.angleInfo;
    }
    

    public function toString():String {
        return new StringMaker().append(super.toString()).append("circularIndexUtil: ").append(this.circularIndexUtil.toString()).append("angleInfo: ").append(this.angleInfo.toString()).toString();
    }
    }
}

