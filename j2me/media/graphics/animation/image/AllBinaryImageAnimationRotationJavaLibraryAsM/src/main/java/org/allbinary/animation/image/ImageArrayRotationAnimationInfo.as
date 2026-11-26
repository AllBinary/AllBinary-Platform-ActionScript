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
package org.allbinary.animation.image {
    import javax.microedition.lcdui.Image;
    import org.allbinary.math.AngleInfo;

    public class ImageArrayRotationAnimationInfo {
        private var imageArray:Vector.<Image> = null;
        private var angleIncrement:int = 0;
        private var totalAngle:int = 0;
        private var dx:int = 0;
        private var dy:int = 0;

        // Java field initializers run after the base constructor
        private function initFieldsImageArrayRotationAnimationInfo():void {
    
    
    
    
    
        }
    

    public function ImageArrayRotationAnimationInfo(imageArray:Vector.<Image>, angleIncrement:int, totalAngle:int, dx:int, dy:int) {
        super();
        this.initFieldsImageArrayRotationAnimationInfo();
        this.imageArray = imageArray;
        this.angleIncrement = angleIncrement;
        this.totalAngle = totalAngle;
        this.dx = dx;
        this.dy = dy;
    }
    

    public function setImageArray(imageArray:Vector.<Image>):void {
        this.imageArray = imageArray;
    }
    

    public function getImageArray():Vector.<Image> {
        return this.imageArray;
    }
    

    public function getAngleInfoP():AngleInfo {
        return AngleInfo.getInstance1(((int(this.angleIncrement) << 16) >> 16));
    }
    

    public function setTotalAngle(totalAngle:int):void {
        this.totalAngle = totalAngle;
    }
    

    public function getTotalAngle():int {
        return this.totalAngle;
    }
    

    public function setDx(dx:int):void {
        this.dx = dx;
    }
    

    public function getDx():int {
        return this.dx;
    }
    

    public function setDy(dy:int):void {
        this.dy = dy;
    }
    

    public function getDy():int {
        return this.dy;
    }
    }
}

