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

    public class RectangleCollisionUtil {
    private static var instance_value:RectangleCollisionUtil;
    private static var instance_set:Boolean = false;
    private static function get instance():RectangleCollisionUtil {
        if (!RectangleCollisionUtil.instance_set) {
            RectangleCollisionUtil.instance_set = true;
            RectangleCollisionUtil.instance_value = new RectangleCollisionUtil();
        }
        return RectangleCollisionUtil.instance_value;
    }
    

    public static function getInstance():RectangleCollisionUtil {
        return RectangleCollisionUtil.instance;
    }
    

    public function RectangleCollisionUtil() {
        super();
    }
    

    public function isCollision(rectX1:int, rectY1:int, rectX2:int, rectY2:int, rect2X1:int, rect2Y1:int, rect2X2:int, rect2Y2:int):Boolean {
        if (rect2X1 >= rectX2 || rect2Y1 >= rectY2 || rect2X2 <= rectX1 || rect2Y2 <= rectY1) {
            return false;
        } else {
            return true;
        }
    }
    

    public function isInside(rectX1:int, rectY1:int, rectX2:int, rectY2:int, x:int, y:int):Boolean {
        if (x >= rectX2 || y >= rectY2 || x <= rectX1 || y <= rectY1) {
            return false;
        } else {
            return true;
        }
    }
    }
}

