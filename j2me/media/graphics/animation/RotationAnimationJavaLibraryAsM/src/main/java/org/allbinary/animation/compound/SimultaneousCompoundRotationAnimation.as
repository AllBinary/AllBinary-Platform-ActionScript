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
    import org.allbinary.animation.RotationAnimation;
    import org.allbinary.direction.Direction;
    import org.allbinary.logic.math.PrimitiveIntUtil;
    import org.allbinary.math.Angle;
    import org.allbinary.math.AngleFactory;
    import org.allbinary.math.AngleInfo;
    import org.allbinary.util.CircularIndexUtil;

    public class SimultaneousCompoundRotationAnimation extends RotationAnimation {
        private var animationInterfaceArray:Vector.<RotationAnimation> = null;

        // Java field initializers run after the base constructor
        private function initFieldsSimultaneousCompoundRotationAnimation():void {
    
        }
    

    public function SimultaneousCompoundRotationAnimation(animationInterfaceArray:Vector.<RotationAnimation>, animationBehavior:AnimationBehavior) {
        super(AngleInfo.getInstance1(AngleFactory.getInstance().QUARTER_TOTAL_ANGLE), CircularIndexUtil.createInstance(4), animationBehavior);
        this.initFieldsSimultaneousCompoundRotationAnimation();
        this.animationInterfaceArray = animationInterfaceArray;
    }
    

    override public function setFrame(frameIndex:int):void {
        for (var index:int = this.animationInterfaceArray.length; --index >= 0; ) {
            this.animationInterfaceArray[index].setFrame(frameIndex);
        }
    }
    

    override public function getFrame():int {
        return this.animationInterfaceArray[0].getFrame();
    }
    

    override public function getAnimationSize():int {
        return this.animationInterfaceArray[0].getAnimationSize();
    }
    

    override public function getSize():int {
        return this.animationInterfaceArray[0].getSize();
    }
    

    override public function previousFrame():void {
        for (var index:int = this.animationInterfaceArray.length; --index >= 0; ) {
            this.animationInterfaceArray[index].previousFrame();
        }
    }
    

    override public function nextFrame():void {
        for (var index:int = this.animationInterfaceArray.length; --index >= 0; ) {
            this.animationInterfaceArray[index].nextFrame();
        }
    }
    

    override public function previousRotation():void {
        for (var index:int = this.animationInterfaceArray.length; --index >= 0; ) {
            this.animationInterfaceArray[index].previousRotation();
        }
    }
    

    override public function nextRotation():void {
        for (var index:int = this.animationInterfaceArray.length; --index >= 0; ) {
            this.animationInterfaceArray[index].nextRotation();
        }
    }
    

    override public function setSequence(sequence:Vector.<int>):void {
    }
    

    override public function getSequence():Vector.<int> {
        return PrimitiveIntUtil.getArrayInstance();
    }
    

    override public function paintXY(graphics:Graphics, x:int, y:int):void {
        for (var index:int = this.animationInterfaceArray.length; --index >= 0; ) {
            this.animationInterfaceArray[index].paintXY(graphics, x, y);
        }
    }
    

    override public function paintThreedXYZ(graphics:Graphics, x:int, y:int, z:int):void {
        for (var index:int = this.animationInterfaceArray.length; --index >= 0; ) {
            this.animationInterfaceArray[index].paintThreedXYZ(graphics, x, y, z);
        }
    }
    

    override public function setFrameByDirection(direction:Direction):void {
        for (var index:int = this.animationInterfaceArray.length; --index >= 0; ) {
            this.animationInterfaceArray[index].setFrameByDirection(direction);
        }
    }
    

    override public function setFrameToAngle(angle:Angle):void {
        for (var index:int = this.animationInterfaceArray.length; --index >= 0; ) {
            this.animationInterfaceArray[index].setFrameToAngle(angle);
        }
    }
    

    override public function adjustFrameToAngle(newAngle:Angle):void {
        this.adjustFrame(newAngle.getValue());
    }
    

    override public function adjustFrame(angle:int):void {
        for (var index:int = this.animationInterfaceArray.length; --index >= 0; ) {
            this.animationInterfaceArray[index].adjustFrame(angle);
        }
    }
    

    override public function getAngleInfoP():AngleInfo {
        return this.animationInterfaceArray[0].getAngleInfoP();
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

