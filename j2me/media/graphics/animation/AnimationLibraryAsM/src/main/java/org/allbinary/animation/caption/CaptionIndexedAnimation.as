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
package org.allbinary.animation.caption {
    import javax.microedition.lcdui.Graphics;
    import javax.microedition.media.Player;
    import org.allbinary.animation.Animation;
    import org.allbinary.animation.AnimationBehavior;
    import org.allbinary.animation.AnimationEventHandler;
    import org.allbinary.animation.IndexedAnimation;
    import org.allbinary.logic.math.PrimitiveIntUtil;
    import org.allbinary.logic.util.event.AllBinaryEventObject;
    import org.allbinary.time.GameTickTimeDelayHelperFactory;
    import org.allbinary.time.TimeDelayHelper;

    public class CaptionIndexedAnimation extends IndexedAnimation {
        private var animationInterface:Animation = null;
        private var movieIndexedAnimationInterface:IndexedAnimation = null;
        private var captionDx:int = 0;
        private var captionDy:int = 0;
        private var dx:int = 0;
        private var dy:int = 0;
        private var time:int = 0;
        private var END_EVENT:AllBinaryEventObject = null;
        private var timeDelayHelper:TimeDelayHelper = null;
        private var player:Player = null;

        // Java field initializers run after the base constructor
        private function initFieldsCaptionIndexedAnimation():void {
    
    
    
    
    
    
    
    
    
    
        }
    

    public function CaptionIndexedAnimation(animationInterface:Animation, movieIndexedAnimationInterface:IndexedAnimation, player:Player, captionDx:int, captionDy:int, dx:int, dy:int, time:int, animationBehavior:AnimationBehavior) {
        super(animationBehavior);
        this.initFieldsCaptionIndexedAnimation();
        this.animationInterface = animationInterface;
        this.movieIndexedAnimationInterface = movieIndexedAnimationInterface;
        this.captionDx = captionDx;
        this.captionDy = captionDy;
        this.dx = dx;
        this.dy = dy;
        this.time = time;
        this.END_EVENT = new AllBinaryEventObject(this);
        var timePerFrame:int = int(this.time / this.getSize());
        this.timeDelayHelper = new TimeDelayHelper(timePerFrame);
        this.player = player;
        this.player.start();
    }
    

    override public function nextFrame():void {
        if (this.timeDelayHelper.isTime(GameTickTimeDelayHelperFactory.getInstance().startTime)) {
            this.movieIndexedAnimationInterface.nextFrame();
        }
        if (this.isLastFrame()) {
            AnimationEventHandler.getInstance().fireEvent(this.END_EVENT);
        }
    }
    

    override public function isLastFrame():Boolean {
        if (this.movieIndexedAnimationInterface.getFrame() == int(this.getSize() - 1)) {
            return true;
        } else {
            return false;
        }
    }
    

    override public function previousFrame():void {
        this.movieIndexedAnimationInterface.previousFrame();
    }
    

    override public function setFrame(index:int):void {
        this.movieIndexedAnimationInterface.setFrame(index);
    }
    

    override public function getFrame():int {
        return this.movieIndexedAnimationInterface.getFrame();
    }
    

    override public function getSize():int {
        return this.movieIndexedAnimationInterface.getSize();
    }
    

    override public function setSequence(sequence:Vector.<int>):void {
    }
    

    override public function getSequence():Vector.<int> {
        return PrimitiveIntUtil.getArrayInstance();
    }
    

    override public function paintXY(graphics:Graphics, x:int, y:int):void {
        this.animationInterface.paintXY(graphics, int(x + this.captionDx), int(y + this.captionDy));
        this.movieIndexedAnimationInterface.paintXY(graphics, int(int(x + this.captionDx) + this.dx), int(int(y + this.captionDy) + this.dy));
    }
    

    override public function paintThreedXYZ(graphics:Graphics, x:int, y:int, z:int):void {
        this.animationInterface.paintThreedXYZ(graphics, int(x + this.captionDx), int(y + this.captionDy), z);
        this.movieIndexedAnimationInterface.paintThreedXYZ(graphics, int(int(x + this.captionDx) + this.dx), int(int(y + this.captionDy) + this.dy), z);
    }
    }
}

