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
package org.allbinary.math {
    import org.allbinary.graphics.GPoint;
    import org.allbinary.util.BasicArrayList;

    public class RectangleCollisionPointUtil {
    

    public function RectangleCollisionPointUtil() {
        super();
    }
    

    public static function allPointsInside(rectX1:int, rectY1:int, rectX2:int, rectY2:int, list:BasicArrayList):Boolean {
        var rectangleCollisionUtil:RectangleCollisionUtil = RectangleCollisionUtil.getInstance();
        var point:GPoint = null;
        for (var index:int = list.size(); --index >= 0; ) {
            point = (list.objectArray[index] as GPoint);
            if (!rectangleCollisionUtil.isInside(rectX1, rectY1, rectX2, rectY2, point.getX(), point.getY())) {
                return false;
            }
        }
        return true;
    }
    

    public static function allPointsInsideCell(rectX1:int, rectY1:int, rectX2:int, rectY2:int, list:BasicArrayList, xCellSize:int, yCellSize:int):Boolean {
        var rectangleCollisionUtil:RectangleCollisionUtil = RectangleCollisionUtil.getInstance();
        var point:GPoint = null;
        for (var index:int = list.size(); --index >= 0; ) {
            point = (list.objectArray[index] as GPoint);
            if (!rectangleCollisionUtil.isInside(rectX1, rectY1, rectX2, rectY2, int(point.getX() * xCellSize), int(point.getY() * yCellSize))) {
                return false;
            }
        }
        return true;
    }
    }
}

