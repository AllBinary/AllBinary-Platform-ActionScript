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
package org.allbinary.graphics.pipeline {
    import org.allbinary.graphics.GPoint;
    import org.allbinary.graphics.PointFactory;
    import org.allbinary.math.Angle;
    import org.allbinary.math.NoDecimalTrigTable;
    import org.allbinary.util.BasicArrayList;
    import org.allbinary.util.BasicArrayListD;

    public class BasicGraphicsPipeline {
        public var pointBasicArrayList:BasicArrayList = null;
        private var noDecimalTrigTable:NoDecimalTrigTable = null;

        // Java field initializers run after the base constructor
        private function initFieldsBasicGraphicsPipeline():void {
    
    this.noDecimalTrigTable = NoDecimalTrigTable.getInstance();
        }
    

    public function BasicGraphicsPipeline(points:BasicArrayList) {
        super();
        this.initFieldsBasicGraphicsPipeline();
        this.pointBasicArrayList = points;
    }
    

    public function setInitMatrix(points:BasicArrayList):void {
        this.pointBasicArrayList = points;
    }
    

    public function createMatrix():void {
    }
    

    public function translate(x:int, y:int):void {
        var newBasicArrayList:BasicArrayList = new BasicArrayListD();
        var size:int = this.pointBasicArrayList.size();
        var pointFactory:PointFactory = PointFactory.getInstance();
        var secondPoint:GPoint = null;
        for (var index:int = 0; index < size; index++) {
            secondPoint = (this.pointBasicArrayList.objectArray[index] as GPoint);
            if (secondPoint.getX() != 1000) {
                newBasicArrayList.add(pointFactory.createXY(int(secondPoint.getX() + x), int(secondPoint.getY() + y)));
            } else {
                newBasicArrayList.add(secondPoint);
            }
        }
        this.pointBasicArrayList = newBasicArrayList;
    }
    

    public function rotateToAngle(angle:Angle):void {
        this.rotate(angle.getValue());
    }
    

    private function rotate(angle:int):void {
        var newBasicArrayList:BasicArrayList = new BasicArrayListD();
        var secondPoint:GPoint = null;
        var y:Number = 0;
        var secondX:Number = 0;
        var secondY:Number = 0;
        var point:GPoint = null;
        var pointFactory:PointFactory = PointFactory.getInstance();
        var size:int = this.pointBasicArrayList.size();
        var sin:Number = 0;
        var cos:Number = 0;
        for (var index:int = 0; index < size; index++) {
            secondPoint = (this.pointBasicArrayList.objectArray[index] as GPoint);
            if (secondPoint.getX() != 1000) {
                sin = this.noDecimalTrigTable.sin(angle);
                cos = this.noDecimalTrigTable.cos(angle);
                y = Number(secondPoint.getY()) * sin;
                secondX = (Number(secondPoint.getX()) * cos) - y;
                secondY = (Number(secondPoint.getX()) * sin) + (Number(secondPoint.getY()) * cos);
                point = pointFactory.createXY(int(int(secondX) / 10000), int(int(secondY) / 10000));
                newBasicArrayList.add(point);
            } else {
                newBasicArrayList.add(secondPoint);
            }
        }
        this.pointBasicArrayList = newBasicArrayList;
    }
    

    public function mirror(width:int):void {
        var pointFactory:PointFactory = PointFactory.getInstance();
        var halfWidth:int = (width >> 1);
        var newBasicArrayList:BasicArrayList = new BasicArrayListD();
        var secondPoint:GPoint = null;
        var newX:int = 0;
        var point:GPoint = null;
        var size:int = this.pointBasicArrayList.size();
        for (var index:int = 0; index < size; index++) {
            secondPoint = (this.pointBasicArrayList.objectArray[index] as GPoint);
            if (secondPoint.getX() != 1000) {
                newX = 0;
                if (secondPoint.getX() > halfWidth) {
                    newX = int(halfWidth - (int(secondPoint.getX() - halfWidth)));
                } else {
                    newX = int(halfWidth + (int(halfWidth - secondPoint.getX())));
                }
                point = pointFactory.createXY(newX, secondPoint.getY());
                newBasicArrayList.add(point);
            } else {
                newBasicArrayList.add(secondPoint);
            }
        }
        this.pointBasicArrayList = newBasicArrayList;
    }
    

    public function getMatrix():BasicArrayList {
        return this.pointBasicArrayList;
    }
    }
}

