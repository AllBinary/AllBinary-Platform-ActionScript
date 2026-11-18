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

    public class VectorInfo {
        private var width:int = 0;
        private var height:int = 0;
        private var points:Vector.<Vector.<int>> = null;
        private var totalFrames:int = 0;

        // Java field initializers run after the base constructor
        private function initFieldsVectorInfo():void {
    
    
    
    
        }
    

    public function VectorInfo(width:int, height:int, points:Vector.<Vector.<int>>, totalFrames:int) {
        super();
        this.initFieldsVectorInfo();
        this.width = width;
        this.height = height;
        this.points = points;
        this.totalFrames = totalFrames;
    }
    

    public function getWidth():int {
        return this.width;
    }
    

    private function setWidth(width:int):void {
        this.width = width;
    }
    

    public function getHeight():int {
        return this.height;
    }
    

    private function setHeight(height:int):void {
        this.height = height;
    }
    

    public function getPoints():Vector.<Vector.<int>> {
        return this.points;
    }
    

    private function setPoints(points:Vector.<Vector.<int>>):void {
        this.points = points;
    }
    

    public function getTotalFrames():int {
        return this.totalFrames;
    }
    

    private function setTotalFrames(totalFrames:int):void {
        this.totalFrames = totalFrames;
    }
    }
}

