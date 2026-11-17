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
package org.allbinary.graphics {
    import org.allbinary.logic.string.StringMaker;
    import org.allbinary.math.PositionStrings;
    import org.allbinary.string.CommonSeps;

    public class GPoint {
    private static const POINT_LABEL:String = "Point: ";
        private var x:int = 0;
        private var y:int = 0;
        private var z:int = 0;

        // Java field initializers run after the base constructor
        private function initFieldsGPoint():void {
    
    
    
        }
    

    public static function getInstance1(point:GPoint):GPoint {
        return new GPoint(point.getX(), point.getY(), point.getZ());
    }
    

    public function GPoint(x:int, y:int, z:int) {
        super();
        this.initFieldsGPoint();
        this.x = x;
        this.y = y;
        this.z = z;
    }
    

    public function getX():int {
        return this.x;
    }
    

    public function getY():int {
        return this.y;
    }
    

    public function getZ():int {
        return this.z;
    }
    

    public function getRawX():int {
        return this.x;
    }
    

    public function getRawY():int {
        return this.y;
    }
    

    public function getRawZ():int {
        return this.z;
    }
    

    public function toString():String {
        return GPoint.toStringStatic(this.getX(), this.getY(), this.getZ());
    }
    

    public static function toStringStatic(x:int, y:int, z:int):String {
        var stringBuffer:StringMaker = new StringMaker();
        var positionStrings:PositionStrings = PositionStrings.getInstance();
        stringBuffer.append(GPoint.POINT_LABEL);
        stringBuffer.append(positionStrings.X_LABEL);
        stringBuffer.appendint(x);
        stringBuffer.append(CommonSeps.getInstance().SPACE);
        stringBuffer.append(positionStrings.Y_LABEL);
        stringBuffer.appendint(y);
        stringBuffer.append(CommonSeps.getInstance().SPACE);
        stringBuffer.append(positionStrings.Z_LABEL);
        stringBuffer.appendint(z);
        return stringBuffer.toString();
    }
    }
}

