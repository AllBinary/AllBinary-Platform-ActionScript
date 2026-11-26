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
    import javax.microedition.lcdui.Graphics;
    import org.allbinary.graphics.color.BasicColor;
    import org.allbinary.logic.NullUtil;
    import org.allbinary.logic.math.PrimitiveIntUtil;
    import org.allbinary.util.CircularIndexUtil;

    public class VectorAnimation extends IndexedAnimation implements VectorAnimationInterface {
        private var currentPoints:Vector.<Vector.<Vector.<int>>> = null;
        private var circularIndexUtil:CircularIndexUtil = null;

        // Java field initializers run after the base constructor
        private function initFieldsVectorAnimation():void {
    this.currentPoints = NullUtil.getInstance().NULL_INT_ARRAY_ARRAY_ARRAY;
    this.circularIndexUtil = CircularIndexUtil.createInstance(0);
        }
    

    public static function createVectorAnimation(currentPoints2:Vector.<Vector.<int>>, basicColor:BasicColor, animationBehavior:AnimationBehavior):VectorAnimation {
        var currentPoints:Vector.<Vector.<Vector.<int>>> = (function():Vector.<Vector.<Vector.<int>>> { var array:Vector.<Vector.<Vector.<int>>> = new Vector.<Vector.<Vector.<int>>>(1); for (var index:int = 0; index < array.length; index++) { array[index] = (function():Vector.<Vector.<int>> { var array:Vector.<Vector.<int>> = new Vector.<Vector.<int>>(currentPoints2.length); for (var index:int = 0; index < array.length; index++) { array[index] = new Vector.<int>(2); } return array; })(); } return array; })();
        var size:int = currentPoints2.length;
        for (var index:int = 0; index < size; index++) {
            currentPoints[0][index][0] = currentPoints2[index][0];
            currentPoints[0][index][1] = currentPoints2[index][1];
        }
        return new VectorAnimation(currentPoints, basicColor, animationBehavior);
    }
    

    public function VectorAnimation(currentPoints:Vector.<Vector.<Vector.<int>>>, basicColor:BasicColor, animationBehavior:AnimationBehavior) {
        super(animationBehavior);
        this.initFieldsVectorAnimation();
        this.setPoints(currentPoints);
        this.setBasicColorP(basicColor);
    }
    

    override public function setBasicColorP(basicColor:BasicColor):void {
        var changed:Boolean = false;
        if (this.getBasicColorP() == null || this.getBasicColorP().intValue() != basicColor.intValue()) {
            changed = true;
        }
        super.setBasicColorP(basicColor);
        if (changed) {
            this.updateModifiers();
        }
    }
    

    override public function changeBasicColor(basicColor:BasicColor):void {
        var changed:Boolean = false;
        if (this.getChangeBasicColor() == null || this.getChangeBasicColor().intValue() != basicColor.intValue()) {
            changed = true;
        }
        super.changeBasicColor(basicColor);
        if (changed) {
            this.updateModifiers();
        }
    }
    

    override public function setAlpha(alpha:int):void {
        var changed:Boolean = false;
        if (this.alphaP != alpha) {
            changed = true;
        }
        super.setAlpha(alpha);
        if (changed) {
            this.updateModifiers();
        }
    }
    

    override public function setScale(scaleX:Number, scaleY:Number):void {
    }
    

    override public function setMaxScale(maxScaleX:Number, maxScaleY:Number):void {
    }
    

    private function updateModifiers():void {
    }
    

    override public function getAnimationSize():int {
        return this.getSize();
    }
    

    override public function getSize():int {
        return this.currentPoints.length;
    }
    

    override public function setSequence(sequence:Vector.<int>):void {
    }
    

    override public function getSequence():Vector.<int> {
        return PrimitiveIntUtil.getArrayInstance();
    }
    

    override public function nextFrame():void {
        this.circularIndexUtil.next();
    }
    

    override public function previousFrame():void {
        this.circularIndexUtil.previous();
    }
    

    public function paintVectors(graphics:Graphics, x:int, y:int):void {
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
    

    override public function paintXY(graphics:Graphics, x:int, y:int):void {
        this.basicSetColorUtil.setBasicColorP(graphics, this.basicColor);
        this.paintVectors(graphics, x, y);
    }
    

    override public function getFrame():int {
        return this.circularIndexUtil.getIndex();
    }
    

    override public function setFrame(index:int):void {
        this.circularIndexUtil.setIndex(index);
    }
    

    public function getPoints(frame:int):Vector.<Vector.<int>> {
        return this.currentPoints[frame];
    }
    

    public function setPoints(currentPoints:Vector.<Vector.<Vector.<int>>>):void {
        this.currentPoints = currentPoints;
        this.circularIndexUtil = CircularIndexUtil.createInstance(currentPoints.length);
    }
    

    override public function getBasicColorP():BasicColor {
        return super.getBasicColorP();
    }
    }
}

