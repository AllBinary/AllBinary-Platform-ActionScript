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
package org.allbinary.vector {

    public class PointsUtil {
    private static var instance_value:PointsUtil;
    private static var instance_set:Boolean = false;
    private static function get instance():PointsUtil {
        if (!PointsUtil.instance_set) {
            PointsUtil.instance_set = true;
            PointsUtil.instance_value = new PointsUtil();
        }
        return PointsUtil.instance_value;
    }
    

    public static function getInstance():PointsUtil {
        return PointsUtil.instance;
    }
    

    public function adjustXY(points:Vector.<Vector.<Vector.<int>>>, x:int, y:int):Vector.<Vector.<Vector.<int>>> {
        var size:int = points.length;
        var newPoints:Vector.<Vector.<Vector.<int>>> = (function():Vector.<Vector.<Vector.<int>>> { var array:Vector.<Vector.<Vector.<int>>> = new Vector.<Vector.<Vector.<int>>>(size); for (var index:int = 0; index < array.length; index++) { array[index] = (function():Vector.<Vector.<int>> { var array:Vector.<Vector.<int>> = new Vector.<Vector.<int>>(0); for (var index:int = 0; index < array.length; index++) { array[index] = new Vector.<int>(0); } return array; })(); } return array; })();
        for (var index:int = 0; index < size; index++) {
            var size2:int = points[index].length;
            newPoints[index] = (function():Vector.<Vector.<int>> { var array:Vector.<Vector.<int>> = new Vector.<Vector.<int>>(size2); for (var index:int = 0; index < array.length; index++) { array[index] = new Vector.<int>(2); } return array; })();
            for (var index2:int = 0; index2 < size2; index2++) {
                if (points[index][index2][0] != 1000) {
                    newPoints[index][index2][0] = points[index][index2][0] + x;
                    newPoints[index][index2][1] = points[index][index2][1] + y;
                } else {
                    newPoints[index][index2][0] = 1000;
                    newPoints[index][index2][1] = 1000;
                }
            }
        }
        return newPoints;
    }
    

    public function adjust(...args):Vector.<Vector.<int>> {
        if (args.length == 2) {
            return this.adjust_jo2(args[0], args[1]);
        }
        if (args.length == 3) {
            return this.adjust_jo3(args[0], args[1], args[2]);
        }
        throw new JException("IllegalArgumentException", "adjust");
    }

    private function adjust_jo2(points:Vector.<Vector.<int>>, both:int):Vector.<Vector.<int>> {
        return this.adjust(points, both, both);
    }

    private function adjust_jo3(points:Vector.<Vector.<int>>, x:int, y:int):Vector.<Vector.<int>> {
        var newPoints:Vector.<Vector.<int>> = (function():Vector.<Vector.<int>> { var array:Vector.<Vector.<int>> = new Vector.<Vector.<int>>(points.length); for (var index:int = 0; index < array.length; index++) { array[index] = new Vector.<int>(2); } return array; })();
        for (var index2:int = 0; index2 < points.length; index2++) {
            if (points[index2][0] != 1000) {
                newPoints[index2][0] = points[index2][0] + x;
                newPoints[index2][1] = points[index2][1] + y;
            } else {
                newPoints[index2][0] = 1000;
                newPoints[index2][1] = 1000;
            }
        }
        return newPoints;
    }
    
    }
}

