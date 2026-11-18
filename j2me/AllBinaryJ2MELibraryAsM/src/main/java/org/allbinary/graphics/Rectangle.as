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
    import org.allbinary.string.CommonLabels;
    import org.allbinary.string.CommonSeps;

    public class Rectangle {
        private var point:GPoint = null;
        private var width:int = 0;
        private var height:int = 0;

        // Java field initializers run after the base constructor
        private function initFieldsRectangle():void {
    
    
    
        }
    

    public function Rectangle(point:GPoint, width:int, height:int) {
        super();
        this.initFieldsRectangle();
        this.point = point;
        this.width = width;
        this.height = height;
    }
    

    public function getPoint():GPoint {
        return this.point;
    }
    

    public function setPoint(point:GPoint):void {
        this.point = point;
    }
    

    public function getMaxX():int {
        return int(this.point.getX() + this.width);
    }
    

    public function getMaxY():int {
        return int(this.point.getY() + this.height);
    }
    

    public function getWidth():int {
        return this.width;
    }
    

    public function setWidth(width:int):void {
        this.width = width;
    }
    

    public function getHeight():int {
        return this.height;
    }
    

    public function setHeight(height:int):void {
        this.height = height;
    }
    

    public function toString():String {
        var stringBuffer:StringMaker = new StringMaker();
        stringBuffer.append(this.getPoint().toString());
        stringBuffer.append(CommonSeps.getInstance().SPACE);
        stringBuffer.append(CommonLabels.getInstance().WIDTH_LABEL);
        stringBuffer.appendint(this.getWidth());
        stringBuffer.append(CommonSeps.getInstance().SPACE);
        stringBuffer.append(CommonLabels.getInstance().HEIGHT_LABEL);
        stringBuffer.appendint(this.getHeight());
        stringBuffer.append(" MaxX: ");
        stringBuffer.appendint(this.getMaxX());
        stringBuffer.append(" MaxY: ");
        stringBuffer.appendint(this.getMaxY());
        return stringBuffer.toString();
    }
    }
}

