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
    import javax.microedition.khronos.opengles.GL;
    import javax.microedition.lcdui.Graphics;
    import org.allbinary.animation.Animation;
    import org.allbinary.animation.AnimationBehavior;
    import org.allbinary.animation.IndexedAnimation;
    import org.allbinary.logic.math.PrimitiveIntUtil;
    import org.allbinary.util.CircularIndexUtil;

    public class CompoundIndexedAnimation extends IndexedAnimation implements CompoundAnimationInterface {
        private var circularIndexUtil:CircularIndexUtil = null;
        private var animationInterfaceArray:Vector.<Animation> = null;

        // Java field initializers run after the base constructor
        private function initFieldsCompoundIndexedAnimation():void {
    
    
        }
    

    public function CompoundIndexedAnimation(animationInterfaceArray:Vector.<Animation>, animationBehavior:AnimationBehavior) {
        super(animationBehavior);
        this.initFieldsCompoundIndexedAnimation();
        this.animationInterfaceArray = animationInterfaceArray;
        this.circularIndexUtil = CircularIndexUtil.createInstance(this.animationInterfaceArray.length);
    }
    

    override public function setFrame(index:int):void {
        var indexedAnimation:IndexedAnimation = (this.animationInterfaceArray[this.circularIndexUtil.getIndex()] as IndexedAnimation);
        indexedAnimation.setFrame(index);
    }
    

    override public function getFrame():int {
        var indexedAnimation:IndexedAnimation = (this.animationInterfaceArray[this.circularIndexUtil.getIndex()] as IndexedAnimation);
        return indexedAnimation.getFrame();
    }
    

    override public function getSize():int {
        var indexedAnimation:IndexedAnimation = (this.animationInterfaceArray[this.circularIndexUtil.getIndex()] as IndexedAnimation);
        return indexedAnimation.getSize();
    }
    

    override public function previousFrame():void {
        var indexedAnimation:IndexedAnimation = (this.animationInterfaceArray[this.circularIndexUtil.getIndex()] as IndexedAnimation);
        indexedAnimation.previousFrame();
    }
    

    override public function setSequence(sequence:Vector.<int>):void {
    }
    

    override public function getSequence():Vector.<int> {
        return PrimitiveIntUtil.getArrayInstance();
    }
    

    override public function nextFrame():void {
        this.animationInterfaceArray[this.circularIndexUtil.getIndex()].nextFrame();
    }
    

    override public function paintXY(graphics:Graphics, x:int, y:int):void {
        this.animationInterfaceArray[this.circularIndexUtil.getIndex()].paintXY(graphics, x, y);
    }
    

    override public function paintThreedXYZ(graphics:Graphics, x:int, y:int, z:int):void {
        this.animationInterfaceArray[this.circularIndexUtil.getIndex()].paintThreedXYZ(graphics, x, y, z);
    }
    

    public function getCurrentAnimation():IndexedAnimation {
        return (this.animationInterfaceArray[this.circularIndexUtil.getIndex()] as IndexedAnimation);
    }
    

    public function nextAnimation():void {
        var frame:int = this.getFrame();
        this.circularIndexUtil.next();
        this.setFrame(frame);
    }
    

    public function previousAnimation():void {
        var frame:int = this.getFrame();
        this.circularIndexUtil.previous();
        this.setFrame(frame);
    }
    

    public function setAnimation(index:int):void {
        var frame:int = this.getFrame();
        this.circularIndexUtil.setIndex(index);
        this.setFrame(frame);
    }
    

    public function getAnimationInterfaceArray():Vector.<Animation> {
        return this.animationInterfaceArray;
    }
    

    public function setAnimationInterfaceArray(animationInterfaceArray:Vector.<Animation>):void {
        this.animationInterfaceArray = animationInterfaceArray;
    }
    

    override public function set_(...args):* {
        if (args.length == 1) {
            return this.set__jo1(args[0]);
        }
        return super.set_.apply(this, args);
    }

    private function set__jo1(gl:GL):void {
        for (var index:int = this.animationInterfaceArray.length; --index >= 0; ) {
            this.animationInterfaceArray[index].set_(gl);
        }
    }
    }
}

