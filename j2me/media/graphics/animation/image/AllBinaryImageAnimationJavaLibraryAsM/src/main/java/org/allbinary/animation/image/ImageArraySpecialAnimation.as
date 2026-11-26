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
    import javax.microedition.lcdui.Graphics;
    import javax.microedition.lcdui.Image;
    import org.allbinary.animation.AnimationBehavior;
    import org.allbinary.animation.special.SpecialAnimationInterface;
    import org.allbinary.graphics.displayable.DisplayInfoSingleton;
    import org.allbinary.time.GameTickTimeDelayHelperFactory;
    import org.allbinary.time.TimeDelayHelper;

    public class ImageArraySpecialAnimation extends ImageArrayAnimation implements SpecialAnimationInterface {
        private var timeDelayHelper:TimeDelayHelper = null;
        private var loopCount:int = 0;
        private var loopCountTotal:int = 0;

        // Java field initializers run after the base constructor
        private function initFieldsImageArraySpecialAnimation():void {
    this.timeDelayHelper = new TimeDelayHelper(270);
    this.loopCount = 0;
    this.loopCountTotal = 1;
        }
    

    public function ImageArraySpecialAnimation(imageArray:Vector.<Image>, animationBehavior:AnimationBehavior) {
        super(imageArray, animationBehavior);
        this.initFieldsImageArraySpecialAnimation();
        this.reset();
    }
    

    public function getLoopCount():int {
        return this.loopCount;
    }
    

    public function setLastFrame():void {
        this.circularIndexUtil.setIndex(int(this.circularIndexUtil.getSize() - 1));
    }
    

    override public function reset():void {
        this.setFrame(int(this.getSize() - 1));
        this.loopCount = 0;
    }
    

    override public function nextFrame():void {
        if (this.getFrame() > 0) {
            if (this.timeDelayHelper.isTime(GameTickTimeDelayHelperFactory.getInstance().startTime)) {
                this.previousFrame();
                if (this.getFrame() == 0) {
                    this.loopCount++;
                }
            }
        }
    }
    

    public function isComplete():Boolean {
        if (this.loopCount < this.loopCountTotal || this.getFrame() != 0) {
            return false;
        } else {
            return true;
        }
    }
    

    override public function paintXY(graphics:Graphics, x:int, y:int):void {
        x = int(DisplayInfoSingleton.getInstance().getLastHalfWidth() - (this.getImage(this.circularIndexUtil.getIndex()).getWidth() >> 1));
        y = 5;
        super.paintXY(graphics, x, y);
    }
    }
}

