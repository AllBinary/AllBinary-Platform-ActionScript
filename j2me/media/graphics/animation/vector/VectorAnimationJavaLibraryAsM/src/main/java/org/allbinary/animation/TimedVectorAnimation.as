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
    import org.allbinary.graphics.color.BasicColor;
    import org.allbinary.time.GameTickTimeDelayHelperFactory;
    import org.allbinary.time.TimeDelayHelper;

    public class TimedVectorAnimation extends VectorAnimation {
        private var timeElapsedHelper:TimeDelayHelper = null;

        // Java field initializers run after the base constructor
        private function initFieldsTimedVectorAnimation():void {
    this.timeElapsedHelper = new TimeDelayHelper(200);
        }
    

    public function TimedVectorAnimation(currentPoints:Vector.<Vector.<Vector.<int>>>, basicColor:BasicColor, animationBehavior:AnimationBehavior) {
        super(currentPoints, basicColor, animationBehavior);
        this.initFieldsTimedVectorAnimation();
    }
    

    override public function nextFrame():void {
        if (this.timeElapsedHelper.isTime(GameTickTimeDelayHelperFactory.getInstance().startTime)) {
            super.nextFrame();
        }
    }
    }
}

