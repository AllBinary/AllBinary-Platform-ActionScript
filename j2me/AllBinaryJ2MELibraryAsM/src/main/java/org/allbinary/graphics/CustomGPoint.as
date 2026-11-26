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

    public class CustomGPoint extends GPoint {
    private static var NULL_CUSTOM_POINT_value:CustomGPoint;
    private static var NULL_CUSTOM_POINT_set:Boolean = false;
    public static function get NULL_CUSTOM_POINT():CustomGPoint {
        if (!CustomGPoint.NULL_CUSTOM_POINT_set) {
            CustomGPoint.NULL_CUSTOM_POINT_set = true;
            CustomGPoint.NULL_CUSTOM_POINT_value = new CustomGPoint(0, 0, 0);
        }
        return CustomGPoint.NULL_CUSTOM_POINT_value;
    }
        private var cx:int = 0;
        private var cy:int = 0;
        private var cz:int = 0;

        // Java field initializers run after the base constructor
        private function initFieldsCustomGPoint():void {
    this.cx = 0;
    this.cy = 0;
    this.cz = 0;
        }
    

    public static function getInstance1(point:GPoint):CustomGPoint {
        return new CustomGPoint(point.getX(), point.getY(), point.getZ());
    }
    

    public static function getInstance3(x:int, y:int):CustomGPoint {
        return new CustomGPoint(x, y, 3);
    }
    

    public function CustomGPoint(x:int, y:int, z:int) {
        super(x, y, z);
        this.initFieldsCustomGPoint();
    }
    

    public function setX(x:int):void {
        this.cx = x;
    }
    

    override public function getX():int {
        return this.cx;
    }
    

    public function setY(y:int):void {
        this.cy = y;
    }
    

    override public function getY():int {
        return this.cy;
    }
    

    public function setZ(z:int):void {
        this.cz = z;
    }
    

    override public function getZ():int {
        return this.cz;
    }
    }
}

