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
    import org.allbinary.graphics.GPoint;
    import org.allbinary.util.BasicArrayList;

    public class VectorAnimationUtil {
    private static var instance_value:VectorAnimationUtil;
    private static var instance_set:Boolean = false;
    private static function get instance():VectorAnimationUtil {
        if (!VectorAnimationUtil.instance_set) {
            VectorAnimationUtil.instance_set = true;
            VectorAnimationUtil.instance_value = new VectorAnimationUtil();
        }
        return VectorAnimationUtil.instance_value;
    }
    

    public static function getInstance():VectorAnimationUtil {
        return VectorAnimationUtil.instance;
    }
    

    public function VectorAnimationUtil() {
        super();
    }
    

    public function toAnimationArrayFromListOfPointListWithPointsPerFrame(vector:BasicArrayList, pointsPerFrame:int):Vector.<Vector.<Vector.<int>>> {
        var size:int = vector.size();
        var points:Vector.<Vector.<Vector.<int>>> = (function():Vector.<Vector.<Vector.<int>>> { var array:Vector.<Vector.<Vector.<int>>> = new Vector.<Vector.<Vector.<int>>>(size); for (var index:int = 0; index < array.length; index++) { array[index] = (function():Vector.<Vector.<int>> { var array:Vector.<Vector.<int>> = new Vector.<Vector.<int>>(pointsPerFrame); for (var index:int = 0; index < array.length; index++) { array[index] = new Vector.<int>(2); } return array; })(); } return array; })();
        var nextBasicArrayList:BasicArrayList = null;
        var framePoints:Vector.<Vector.<int>> = null;
        for (var index:int = 0; index < size; index++) {
            nextBasicArrayList = (vector.objectArray[index] as BasicArrayList);
            framePoints = this.toFrameArrayFromPointBasicArrayList(nextBasicArrayList);
            for (var pointIndex:int = 0; pointIndex < framePoints.length; pointIndex++) {
                points[index][pointIndex][0] = framePoints[pointIndex][0];
                points[index][pointIndex][1] = framePoints[pointIndex][1];
            }
        }
        return points;
    }
    

    public function toAnimationArrayFromListOfPointList(vector:BasicArrayList):Vector.<Vector.<Vector.<int>>> {
        var size:int = vector.size();
        var points:Vector.<Vector.<Vector.<int>>> = (function():Vector.<Vector.<Vector.<int>>> { var array:Vector.<Vector.<Vector.<int>>> = new Vector.<Vector.<Vector.<int>>>(size); for (var index:int = 0; index < array.length; index++) { array[index] = (function():Vector.<Vector.<int>> { var array:Vector.<Vector.<int>> = new Vector.<Vector.<int>>(0); for (var index:int = 0; index < array.length; index++) { array[index] = new Vector.<int>(0); } return array; })(); } return array; })();
        var nextBasicArrayList:BasicArrayList = null;
        var framePoints:Vector.<Vector.<int>> = null;
        for (var index:int = 0; index < size; index++) {
            nextBasicArrayList = (vector.objectArray[index] as BasicArrayList);
            framePoints = this.toFrameArrayFromPointBasicArrayList(nextBasicArrayList);
            points[index] = (function():Vector.<Vector.<int>> { var array:Vector.<Vector.<int>> = new Vector.<Vector.<int>>(framePoints.length); for (var index:int = 0; index < array.length; index++) { array[index] = new Vector.<int>(2); } return array; })();
            for (var pointIndex:int = 0; pointIndex < framePoints.length; pointIndex++) {
                points[index][pointIndex][0] = framePoints[pointIndex][0];
                points[index][pointIndex][1] = framePoints[pointIndex][1];
            }
        }
        return points;
    }
    

    public function toFrameArrayFromPointBasicArrayList(list:BasicArrayList):Vector.<Vector.<int>> {
        var points:Vector.<Vector.<int>> = (function():Vector.<Vector.<int>> { var array:Vector.<Vector.<int>> = new Vector.<Vector.<int>>(list.size()); for (var index:int = 0; index < array.length; index++) { array[index] = new Vector.<int>(2); } return array; })();
        var size:int = list.size();
        for (var index:int = 0; index < size; index++) {
            var nextPoint:GPoint = (list.objectArray[index] as GPoint);
            points[index][0] = nextPoint.getX();
            points[index][1] = nextPoint.getY();
        }
        return points;
    }
    }
}

