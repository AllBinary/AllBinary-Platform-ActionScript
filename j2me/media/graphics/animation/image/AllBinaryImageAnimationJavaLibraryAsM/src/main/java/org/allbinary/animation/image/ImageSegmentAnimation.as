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
    import org.allbinary.animation.AnimationBehavior;
    import org.allbinary.util.CircularIndexUtil;

    public class ImageSegmentAnimation extends ImageAnimation {
        private var startX:int = 0;
        private var startY:int = 0;
        private var drawWidth:int = 0;
        private var drawHeight:int = 0;
        private var circularIndexUtil:CircularIndexUtil = null;
        private var sequenceArray:Vector.<int> = null;

        // Java field initializers run after the base constructor
        private function initFieldsImageSegmentAnimation():void {
    
    
    
    
    
    
        }
    

    public function ImageSegmentAnimation(image:Image, sequenceArray:Vector.<int>, animationBehavior:AnimationBehavior) {
        super(image, animationBehavior);
        this.initFieldsImageSegmentAnimation();
        this.startX = 0;
        this.startY = 0;
        this.drawWidth = this.getImage().getWidth();
        this.drawHeight = this.getImage().getHeight();
        this.circularIndexUtil = CircularIndexUtil.createInstance(this.drawHeight);
        this.sequenceArray = sequenceArray;
    }
    

    override public function nextFrame():void {
        this.circularIndexUtil.next();
    }
    

    override public function previousFrame():void {
        this.circularIndexUtil.previous();
    }
    

    override public function setFrame(index:int):void {
        this.circularIndexUtil.setIndex(index);
    }
    

    override public function getFrame():int {
        return this.circularIndexUtil.getIndex();
    }
    

    override public function getSize():int {
        return this.circularIndexUtil.getSize();
    }
    

    override public function setSequence(sequenceArray:Vector.<int>):void {
        this.sequenceArray = sequenceArray;
    }
    

    override public function getSequence():Vector.<int> {
        return this.sequenceArray;
    }
    

    override public function paintXY(graphics:Graphics, x:int, y:int):void {
    }
    

    public function getStartX():int {
        return this.startX;
    }
    

    public function setStartX(startX:int):void {
        this.startX = startX;
    }
    

    public function getStartY():int {
        return this.startY;
    }
    

    public function setStartY(startY:int):void {
        this.startY = startY;
    }
    

    public function getDrawWidth():int {
        return this.drawWidth;
    }
    

    public function setDrawWidth(drawWidth:int):void {
        this.drawWidth = drawWidth;
    }
    

    public function getDrawHeight():int {
        return this.drawHeight;
    }
    

    public function setDrawHeight(drawHeight:int):void {
        this.drawHeight = drawHeight;
    }
    }
}

