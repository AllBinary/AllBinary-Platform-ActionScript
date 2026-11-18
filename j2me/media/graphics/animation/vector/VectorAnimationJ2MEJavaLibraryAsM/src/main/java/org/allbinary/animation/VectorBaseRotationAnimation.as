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
    import org.allbinary.graphics.color.BasicColor;
    import org.allbinary.logic.NullUtil;
    import org.allbinary.logic.math.PrimitiveIntUtil;
    import org.allbinary.math.AngleInfo;
    import org.allbinary.util.CircularIndexUtil;

    public class VectorBaseRotationAnimation extends RotationAnimation implements VectorAnimationInterface {
        private var currentPoints:Vector.<Vector.<Vector.<int>>> = null;

        // Java field initializers run after the base constructor
        private function initFieldsVectorBaseRotationAnimation():void {
    this.currentPoints = NullUtil.getInstance().NULL_INT_ARRAY_ARRAY_ARRAY;
        }
    

    public function VectorBaseRotationAnimation(angleInfo:AngleInfo, currentPoints:Vector.<Vector.<Vector.<int>>>, basicColor:BasicColor, animationBehavior:AnimationBehavior) {
        super(angleInfo, CircularIndexUtil.createInstance(int(360 / angleInfo.getAngleIncrementInfo().getAngleIncrement())), animationBehavior);
        this.initFieldsVectorBaseRotationAnimation();
        this.setPoints(currentPoints);
        this.setBasicColorP(basicColor);
    }
    

    override public function getAnimationSize():int {
        return this.getSize();
    }
    

    override public function getFrame():int {
        return this.circularIndexUtil.getIndex();
    }
    

    override public function setFrame(index:int):void {
        this.circularIndexUtil.setIndex(index);
    }
    

    override public function nextFrame():void {
        this.circularIndexUtil.next();
    }
    

    override public function previousFrame():void {
        this.circularIndexUtil.previous();
    }
    

    override public function getSize():int {
        return this.currentPoints.length;
    }
    

    override public function setSequence(sequence:Vector.<int>):void {
    }
    

    override public function getSequence():Vector.<int> {
        return PrimitiveIntUtil.getArrayInstance();
    }
    

    override public function paintXY(graphics:Graphics, x:int, y:int):void {
        this.basicSetColorUtil.setBasicColorP(graphics, this.basicColor);
        try {
            var nextPointX:int = 0;
            var nextPointY:int = 0;
            var nextPoint:Vector.<int> = null;
            var point:Vector.<int> = null;
            var currentPointsFrame:Vector.<Vector.<int>> = this.currentPoints[this.circularIndexUtil.getIndex()];
            var size:int = currentPointsFrame.length;
            var index:int = int(size - 2);
            while (--index >= 0) {
                nextPoint = currentPointsFrame[index];
                point = currentPointsFrame[int(index + 1)];
                nextPointX = nextPoint[0];
                nextPointY = nextPoint[1];
                if (nextPointX != 1000) {
                    graphics.drawLine(int(point[0] + x), int(point[1] + y), int(nextPointX + x), int(nextPointY + y));
                } else {
                    index--;
                }
            }
        } catch (e:*) {
            this.logUtil.put(this.commonStrings.EXCEPTION, this, "paintVectors", e);
        }
    }
    

    public function getPoints(frame:int):Vector.<Vector.<int>> {
        return this.currentPoints[frame];
    }
    

    public function setPoints(currentPoints:Vector.<Vector.<Vector.<int>>>):void {
        this.currentPoints = currentPoints;
        this.circularIndexUtil = CircularIndexUtil.createInstance(this.currentPoints.length);
    }
    

    override public function getBasicColorP():BasicColor {
        return super.getBasicColorP();
    }
    

    override public function setBasicColorP(basicColor:BasicColor):void {
        super.setBasicColorP(basicColor);
    }
    }
}

