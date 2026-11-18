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
package org.allbinary.animation.compound {
    import org.allbinary.animation.AnimationBehavior;
    import org.allbinary.animation.IndexedAnimation;
    import org.allbinary.animation.RotationAnimation;
    import org.allbinary.direction.Direction;
    import org.allbinary.logic.math.PrimitiveIntUtil;
    import org.allbinary.math.Angle;
    import org.allbinary.math.AngleFactory;
    import org.allbinary.math.AngleInfo;
    import org.allbinary.util.CircularIndexUtil;

    public class CompoundRotationAnimation extends RotationAnimation implements CompoundAnimationInterface {
        private var animationInterfaceArray:Vector.<RotationAnimation> = null;

        // Java field initializers run after the base constructor
        private function initFieldsCompoundRotationAnimation():void {
    
        }
    

    public function CompoundRotationAnimation(animationInterfaceArray:Vector.<RotationAnimation>, animationBehavior:AnimationBehavior) {
        super(AngleInfo.getInstance1(AngleFactory.getInstance().QUARTER_TOTAL_ANGLE), CircularIndexUtil.createInstance(4), animationBehavior);
        this.initFieldsCompoundRotationAnimation();
        this.animationInterfaceArray = animationInterfaceArray;
        this.circularIndexUtil = CircularIndexUtil.createInstance(this.animationInterfaceArray.length);
    }
    

    override public function setFrame(index:int):void {
        this.animationInterfaceArray[this.circularIndexUtil.getIndex()].setFrame(index);
    }
    

    override public function getFrame():int {
        return this.animationInterfaceArray[this.circularIndexUtil.getIndex()].getFrame();
    }
    

    override public function getAnimationSize():int {
        return this.animationInterfaceArray[this.circularIndexUtil.getIndex()].getAnimationSize();
    }
    

    override public function getSize():int {
        return this.animationInterfaceArray[this.circularIndexUtil.getIndex()].getSize();
    }
    

    override public function previousFrame():void {
        this.animationInterfaceArray[this.circularIndexUtil.getIndex()].previousFrame();
    }
    

    override public function nextFrame():void {
        this.animationInterfaceArray[this.circularIndexUtil.getIndex()].nextFrame();
    }
    

    override public function previousRotation():void {
        this.animationInterfaceArray[this.circularIndexUtil.getIndex()].previousRotation();
    }
    

    override public function nextRotation():void {
        this.animationInterfaceArray[this.circularIndexUtil.getIndex()].nextRotation();
    }
    

    override public function setSequence(sequence:Vector.<int>):void {
    }
    

    override public function getSequence():Vector.<int> {
        return PrimitiveIntUtil.getArrayInstance();
    }
    

    override public function paintXY(graphics:Graphics, x:int, y:int):void {
        this.animationInterfaceArray[this.circularIndexUtil.getIndex()].paintXY(graphics, x, y);
    }
    

    override public function paintThreedXYZ(graphics:Graphics, x:int, y:int, z:int):void {
        this.animationInterfaceArray[this.circularIndexUtil.getIndex()].paintThreedXYZ(graphics, x, y, z);
    }
    

    public function getCurrentAnimation():IndexedAnimation {
        return this.animationInterfaceArray[this.circularIndexUtil.getIndex()];
    }
    

    public function nextAnimation():void {
        var frame:int = this.getFrame();
        this.circularIndexUtil.next();
        this.setFrame(frame);
    }
    

    public function previousAnimation():void {
        var frame:int = this.getFrame();
        this.circularIndexUtil.previous();
        this.setFrame(frame);
    }
    

    public function setAnimation(index:int):void {
        var frame:int = this.getFrame();
        this.circularIndexUtil.setIndex(index);
        this.setFrame(frame);
    }
    

    override public function setFrameByDirection(direction:Direction):void {
        this.animationInterfaceArray[this.circularIndexUtil.getIndex()].setFrameByDirection(direction);
    }
    

    override public function setFrameToAngle(angle:Angle):void {
        this.animationInterfaceArray[this.circularIndexUtil.getIndex()].setFrameToAngle(angle);
    }
    

    override public function adjustFrameToAngle(newAngle:Angle):void {
        this.adjustFrame(newAngle.getValue());
    }
    

    override public function adjustFrame(angle:int):void {
        this.animationInterfaceArray[this.circularIndexUtil.getIndex()].adjustFrame(angle);
    }
    

    override public function getAngleInfoP():AngleInfo {
        return this.animationInterfaceArray[this.circularIndexUtil.getIndex()].getAngleInfoP();
    }
    

    public function getAnimationInterfaceArray():Vector.<RotationAnimation> {
        return this.animationInterfaceArray;
    }
    

    public function setAnimationInterfaceArray(animationInterfaceArray:Vector.<RotationAnimation>):void {
        this.animationInterfaceArray = animationInterfaceArray;
    }
    

    override public function set_(gl:GL):void {
        for (var index:int = this.animationInterfaceArray.length; --index >= 0; ) {
            this.animationInterfaceArray[index].set_(gl);
        }
    }
    }
}

