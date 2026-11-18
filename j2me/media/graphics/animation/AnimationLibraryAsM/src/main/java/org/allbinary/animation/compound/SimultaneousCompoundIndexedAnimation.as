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
package org.allbinary.animation.compound {
    import org.allbinary.animation.Animation;
    import org.allbinary.animation.AnimationBehavior;
    import org.allbinary.animation.IndexedAnimation;
    import org.allbinary.logic.math.PrimitiveIntUtil;

    public class SimultaneousCompoundIndexedAnimation extends IndexedAnimation {
        private var animationInterfaceArray:Vector.<Animation> = null;

        // Java field initializers run after the base constructor
        private function initFieldsSimultaneousCompoundIndexedAnimation():void {
    
        }
    

    public function SimultaneousCompoundIndexedAnimation(animationInterfaceArray:Vector.<Animation>, animationBehavior:AnimationBehavior) {
        super(animationBehavior);
        this.initFieldsSimultaneousCompoundIndexedAnimation();
        this.animationInterfaceArray = animationInterfaceArray;
    }
    

    override public function setFrame(frameIndex:int):void {
        var indexedAnimation:IndexedAnimation = null;
        for (var index:int = this.animationInterfaceArray.length; --index >= 0; ) {
            indexedAnimation = (this.animationInterfaceArray[index] as IndexedAnimation);
            indexedAnimation.setFrame(frameIndex);
        }
    }
    

    override public function getFrame():int {
        var indexedAnimation:IndexedAnimation = (this.animationInterfaceArray[0] as IndexedAnimation);
        return indexedAnimation.getFrame();
    }
    

    override public function getSize():int {
        var indexedAnimation:IndexedAnimation = (this.animationInterfaceArray[0] as IndexedAnimation);
        return indexedAnimation.getSize();
    }
    

    override public function previousFrame():void {
        var indexedAnimation:IndexedAnimation = null;
        for (var index:int = this.animationInterfaceArray.length; --index >= 0; ) {
            indexedAnimation = (this.animationInterfaceArray[index] as IndexedAnimation);
            indexedAnimation.previousFrame();
        }
    }
    

    override public function setSequence(sequence:Vector.<int>):void {
    }
    

    override public function getSequence():Vector.<int> {
        return PrimitiveIntUtil.getArrayInstance();
    }
    

    override public function nextFrame():void {
        for (var index:int = this.animationInterfaceArray.length; --index >= 0; ) {
            this.animationInterfaceArray[index].nextFrame();
        }
    }
    

    override public function paintXY(graphics:Graphics, x:int, y:int):void {
        var size:int = this.animationInterfaceArray.length;
        for (var index:int = 0; index < size; index++) {
            this.animationInterfaceArray[index].paintXY(graphics, x, y);
        }
    }
    

    override public function paintThreedXYZ(graphics:Graphics, x:int, y:int, z:int):void {
        var size:int = this.animationInterfaceArray.length;
        for (var index:int = 0; index < size; index++) {
            this.animationInterfaceArray[index].paintThreedXYZ(graphics, x, y, z);
        }
    }
    

    public function getAnimationInterfaceArray():Vector.<Animation> {
        return this.animationInterfaceArray;
    }
    

    public function setAnimationInterfaceArray(animationInterfaceArray:Vector.<Animation>):void {
        this.animationInterfaceArray = animationInterfaceArray;
    }
    }
}

