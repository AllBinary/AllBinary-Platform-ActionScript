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
package org.allbinary.animation {
    import org.allbinary.logic.communication.log.LogUtil;
    import org.allbinary.logic.math.PrimitiveIntUtil;
    import org.allbinary.string.CommonStrings;

    public class IndexedAnimation extends Animation implements IndexedAnimationInterface {
        public var logUtil:LogUtil = null;
        public var commonStrings:CommonStrings = null;
        public var animationBehaviorP:AnimationBehavior = null;

        // Java field initializers run after the base constructor
        private function initFieldsIndexedAnimation():void {
    this.logUtil = LogUtil.getInstance();
    this.commonStrings = CommonStrings.getInstance();
    
        }
    

    public function IndexedAnimation(animationBehavior:AnimationBehavior) {
        super();
        this.initFieldsIndexedAnimation();
        this.animationBehaviorP = animationBehavior;
    }
    

    public function getAnimationBehavior():AnimationBehavior {
        return this.animationBehaviorP;
    }
    

    public function reset():void {
        this.animationBehaviorP.reset();
        this.setFrame(0);
    }
    

    public function setFrame(index:int):void {
    }
    

    public function getFrame():int {
        return 0;
    }
    

    public function getAnimationSize():int {
        throw new JException("Exception", this.commonStrings.NOT_IMPLEMENTED);
    }
    

    public function getSize():int {
        return 0;
    }
    

    public function previousFrame():void {
    }
    

    public function isLastFrame():Boolean {
        if (this.getFrame() == int(this.getSize() - 1)) {
            return true;
        } else {
            return false;
        }
    }
    

    public function setSequence(sequence:Vector.<int>):void {
    }
    

    public function getSequence():Vector.<int> {
        return PrimitiveIntUtil.getArrayInstance();
    }
    

    public function setState(indexedAnimation:IndexedAnimation):void {
        this.setFrame(indexedAnimation.getFrame());
        this.setDx(indexedAnimation.getDx());
        this.setDy(indexedAnimation.getDy());
    }
    

    public function getWidth():int {
        return 0;
    }
    

    public function getHeight():int {
        return 0;
    }
    }
}

