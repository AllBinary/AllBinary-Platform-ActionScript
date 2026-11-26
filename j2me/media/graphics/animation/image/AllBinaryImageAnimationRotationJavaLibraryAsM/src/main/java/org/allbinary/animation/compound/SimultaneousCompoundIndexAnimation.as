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
    import org.allbinary.animation.AnimationBehavior;
    import org.allbinary.animation.IndexedAnimation;
    import org.allbinary.logic.math.PrimitiveIntUtil;

    public class SimultaneousCompoundIndexAnimation extends IndexedAnimation {
        private var animationInterfaceArray:Vector.<IndexedAnimation> = null;

        // Java field initializers run after the base constructor
        private function initFieldsSimultaneousCompoundIndexAnimation():void {
    
        }
    

    public function SimultaneousCompoundIndexAnimation(animationInterfaceArray:Vector.<IndexedAnimation>, animationBehavior:AnimationBehavior) {
        super(animationBehavior);
        this.initFieldsSimultaneousCompoundIndexAnimation();
        this.animationInterfaceArray = animationInterfaceArray;
    }
    

    override public function setFrame(frameIndex:int):void {
        for (var index:int = this.animationInterfaceArray.length; --index >= 0; ) {
            this.animationInterfaceArray[index].setFrame(frameIndex);
        }
    }
    

    override public function getFrame():int {
        return this.animationInterfaceArray[0].getFrame();
    }
    

    override public function getAnimationSize():int {
        return this.animationInterfaceArray[0].getAnimationSize();
    }
    

    override public function getSize():int {
        return this.animationInterfaceArray[0].getSize();
    }
    

    override public function previousFrame():void {
        for (var index:int = this.animationInterfaceArray.length; --index >= 0; ) {
            this.animationInterfaceArray[index].previousFrame();
        }
    }
    

    override public function nextFrame():void {
        for (var index:int = this.animationInterfaceArray.length; --index >= 0; ) {
            this.animationInterfaceArray[index].nextFrame();
        }
    }
    

    override public function setSequence(sequence:Vector.<int>):void {
    }
    

    override public function getSequence():Vector.<int> {
        return PrimitiveIntUtil.getArrayInstance();
    }
    

    override public function paintXY(graphics:Graphics, x:int, y:int):void {
        for (var index:int = this.animationInterfaceArray.length; --index >= 0; ) {
            this.animationInterfaceArray[index].paintXY(graphics, x, y);
        }
    }
    

    override public function paintThreedXYZ(graphics:Graphics, x:int, y:int, z:int):void {
        for (var index:int = this.animationInterfaceArray.length; --index >= 0; ) {
            this.animationInterfaceArray[index].paintThreedXYZ(graphics, x, y, z);
        }
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
    

    public function getAnimationInterfaceArray():Vector.<IndexedAnimation> {
        return this.animationInterfaceArray;
    }
    

    public function setAnimationInterfaceArray(animationInterfaceArray:Vector.<IndexedAnimation>):void {
        this.animationInterfaceArray = animationInterfaceArray;
    }
    }
}

