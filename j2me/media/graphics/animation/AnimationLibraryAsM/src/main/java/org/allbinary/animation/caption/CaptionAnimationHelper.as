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
    import org.allbinary.animation.Animation;
    import org.allbinary.animation.AnimationBehavior;
    import org.allbinary.animation.NullAnimationFactory;
    import org.allbinary.animation.text.TextAnimation;
    import org.allbinary.graphics.color.BasicColor;
    import org.allbinary.logic.string.StringUtil;
    import org.allbinary.time.GameTickTimeDelayHelperFactory;
    import org.allbinary.time.TimeDelayHelper;

    public class CaptionAnimationHelper extends CaptionAnimationHelperBase {
        private var timeHelper:TimeDelayHelper = null;
        private var textAnimation:TextAnimation = null;
        private var captionAnimation:Animation = null;
        private var animation:Animation = null;

        // Java field initializers run after the base constructor
        private function initFieldsCaptionAnimationHelper():void {
    this.timeHelper = new TimeDelayHelper(620);
    this.textAnimation = new TextAnimation(StringUtil.getInstance().EMPTY_STRING, AnimationBehavior.getInstance());
    
    this.animation = NullAnimationFactory.getFactoryInstance().getInstance1(0);
        }
    

    public function CaptionAnimationHelper(captionAnimation:Animation, captionDx:int, captionDy:int, dx:int, dy:int) {
        super();
        this.initFieldsCaptionAnimationHelper();
        this.captionAnimation = new CaptionAnimation(captionAnimation, this.textAnimation, captionDx, captionDy, dx, dy);
    }
    

    override public function isShowing():Boolean {
        if (this.animation === this.captionAnimation) {
            return true;
        } else {
            return false;
        }
    }
    

    override public function tick():void {
        if (this.timeHelper.isTime(GameTickTimeDelayHelperFactory.getInstance().startTime)) {
            this.animation = NullAnimationFactory.getFactoryInstance().getInstance1(0);
        }
    }
    

    override public function update(message:String, basicColor:BasicColor):void {
        this.textAnimation.setBasicColorP(basicColor);
        this.textAnimation.setText(message);
        this.animation = this.captionAnimation;
        this.timeHelper.setStartTimeTNT();
    }
    

    override public function paintXY(graphics:Graphics, x:int, y:int):void {
        this.animation.paintXY(graphics, x, y);
    }
    }
}

