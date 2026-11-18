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
package org.allbinary.animation.special {
    import org.allbinary.animation.AnimationBehavior;
    import org.allbinary.animation.IndexedAnimation;
    import org.allbinary.animation.IndexedAnimationBehavior;
    import org.allbinary.graphics.color.BasicColor;
    import org.allbinary.graphics.color.BasicColorFactory;
    import org.allbinary.graphics.displayable.DisplayInfoSingleton;
    import org.allbinary.logic.ABSystemWrapper;
    import org.allbinary.logic.math.PrimitiveIntUtil;
    import java.lang.JInteger;

    public class TitleAnimation extends SpecialAnimation {
        public var systemWrapper:ABSystemWrapper = null;
        public var deltaX:Number = 0.0;
        public var deltaY:Number = 0.0;
        public var deltaZ:Number = 0.0;
        public var basicColorArray:Vector.<BasicColor> = null;
        public var dxArray:Vector.<int> = null;
        public var dyArray:Vector.<int> = null;
        public var widthP:int = 0;
        public var animationInterfaceArray:Vector.<IndexedAnimation> = null;
        public var sizeP:int = 0;
        public var y:int = 0;
        private var lastFrameStartTime:Number = 0;
        private var displayInfoSingleton:DisplayInfoSingleton = null;
        public var CLEAR_COLOR:BasicColor = null;

        // Java field initializers run after the base constructor
        private function initFieldsTitleAnimation():void {
    this.systemWrapper = ABSystemWrapper.getInstance();
    this.deltaX = 0.0;
    this.deltaY = 0.0;
    this.deltaZ = 0.0;
    
    
    
    
    
    
    
    
    this.displayInfoSingleton = DisplayInfoSingleton.getInstance();
    this.CLEAR_COLOR = BasicColorFactory.getInstance().CLEAR_COLOR;
        }
    

    public static function createAnimation(animationInterfaceArray:Vector.<IndexedAnimation>, basicColorArray:Vector.<BasicColor>, dxArray:Vector.<int>, dyArray:Vector.<int>, y:int, width:int):TitleAnimation {
        return new TitleAnimation(animationInterfaceArray, basicColorArray, dxArray, dyArray, y, width, new IndexedAnimationBehavior(1, 250));
    }
    

    public function TitleAnimation(animationInterfaceArray:Vector.<IndexedAnimation>, basicColorArray:Vector.<BasicColor>, dxArray:Vector.<int>, dyArray:Vector.<int>, y:int, width:int, animationBehavior:AnimationBehavior) {
        super(animationBehavior);
        this.initFieldsTitleAnimation();
        this.lastFrameStartTime = this.systemWrapper.currentTimeMillis();
        this.animationInterfaceArray = animationInterfaceArray;
        this.sizeP = this.animationInterfaceArray.length;
        this.basicColorArray = basicColorArray;
        this.dxArray = dxArray;
        this.dyArray = dyArray;
        this.y = y;
        this.widthP = width;
        this.reset();
    }
    

    override public function nextFrame():void {
        var currentTime:Number = this.systemWrapper.currentTimeMillis();
        var totalTimeElapsed:Number = currentTime - this.lastFrameStartTime;
        var indexedAnimationBehavior:IndexedAnimationBehavior = (this.getAnimationBehavior() as IndexedAnimationBehavior);
        if (totalTimeElapsed > indexedAnimationBehavior.frameDelayTime) {
            this.previousFrame();
            this.lastFrameStartTime = currentTime;
        }
        if (this.animationInterfaceArray[0].getFrame() == 0) {
            indexedAnimationBehavior.loopIndex++;
        }
    }
    

    override public function isComplete():Boolean {
        var indexedAnimationBehavior:IndexedAnimationBehavior = (this.getAnimationBehavior() as IndexedAnimationBehavior);
        if (indexedAnimationBehavior.loopTotal == -1 || indexedAnimationBehavior.loopIndex < indexedAnimationBehavior.loopTotal || this.getFrame() != 0) {
            return false;
        } else {
            return true;
        }
    }
    

    override public function setSequence(sequence:Vector.<int>):void {
    }
    

    override public function getSequence():Vector.<int> {
        return PrimitiveIntUtil.getArrayInstance();
    }
    

    override public function getSize():int {
        return this.animationInterfaceArray[0].getSize();
    }
    

    override public function getFrame():int {
        return this.animationInterfaceArray[0].getFrame();
    }
    

    override public function setFrame(frame:int):void {
        for (var index:int = 0; index < this.sizeP; index++) {
            this.animationInterfaceArray[index].setFrame(frame);
        }
    }
    

    override public function setLastFrame():void {
        this.setFrame(int(this.getSize() - 1));
    }
    

    override public function reset():void {
        this.setLastFrame();
        var indexedAnimationBehavior:IndexedAnimationBehavior = ((this.getAnimationBehavior() as IndexedAnimationBehavior));
        indexedAnimationBehavior.reset();
    }
    

    override public function previousFrame():void {
        for (var index:int = 0; index < this.sizeP; index++) {
            this.animationInterfaceArray[index].previousFrame();
        }
    }
    

    public function paintFrameXY(graphics:Graphics, frame:int, x:int, y:int):void {
        this.setFrame(frame);
        this.paintXY(graphics, x, y);
    }
    

    override public function paintXY(graphics:Graphics, ax:int, ay:int):void {
        var x:int = 0;
        if (this.widthP != JInteger.MIN_VALUE) {
            x = (int((int(this.displayInfoSingleton.getLastWidth() - this.widthP)) / 2));
        }
        var deltaX:int = 0;
        var deltaY:int = 0;
        for (var index:int = 0; index < this.sizeP; index++) {
            deltaX = int(this.dxArray[index] + x);
            deltaY = int(this.dyArray[index] + this.y);
            if (this.basicColorArray[index] !== this.CLEAR_COLOR) {
                this.basicSetColorUtil.setBasicColorP(graphics, this.basicColorArray[index]);
            }
            this.animationInterfaceArray[index].paintXY(graphics, deltaX, deltaY);
        }
    }
    }
}

