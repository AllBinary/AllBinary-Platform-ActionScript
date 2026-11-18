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

    public class Line {
        private var p1:GPoint = null;
        private var p2:GPoint = null;
        private var deltaX:Number = 0.0;
        private var deltaY:Number = 0.0;

        // Java field initializers run after the base constructor
        private function initFieldsLine():void {
    
    
    this.deltaX = 0.0;
    this.deltaY = 0.0;
        }
    

    public function Line(p1:GPoint, p2:GPoint) {
        super();
        this.initFieldsLine();
        this.p1 = PointFactory.getInstance().ZERO_ZERO;
        this.p2 = this.p1;
        this.setP1(p1);
        this.setP2(p2);
    }
    

    public function getGradient():Number {
        return this.getDeltaY() / this.getDeltaX();
    }
    

    private function update():void {
        this.deltaX = Number(this.getP1().getX()) - Number(this.getP2().getX());
        this.deltaY = Number(this.getP1().getY()) - Number(this.getP2().getY());
    }
    

    public function getDeltaX():Number {
        return this.deltaX;
    }
    

    public function getDeltaY():Number {
        return this.deltaY;
    }
    

    public function getP1():GPoint {
        return this.p1;
    }
    

    public function getP2():GPoint {
        return this.p2;
    }
    

    public function setP1(p1:GPoint):void {
        this.p1 = p1;
        this.update();
    }
    

    public function setP2(p2:GPoint):void {
        this.p2 = p2;
        this.update();
    }
    }
}

