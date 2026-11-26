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
package org.allbinary.game.ag.ai.scroller {
    import javax.microedition.lcdui.Canvas;
    import org.allbinary.game.ai.BasicAI;
    import org.allbinary.game.input.GameInput;
    import org.allbinary.layer.AllBinaryLayer;
    import org.allbinary.layer.AllBinaryLayerManager;
    import org.allbinary.logic.math.SmallIntegerSingletonFactory;
    import org.allbinary.time.GameTickTimeDelayHelperFactory;
    import org.allbinary.time.TimeDelayHelper;
    import java.lang.JInteger;

    public class TimedFireAI extends BasicAI {
    private static var TIME_value:*;
    private static var TIME_set:Boolean = false;
    public static function get TIME():* {
        if (!TimedFireAI.TIME_set) {
            TimedFireAI.TIME_set = true;
            TimedFireAI.TIME_value = SmallIntegerSingletonFactory.getInstance().getAt(1);
        }
        return TimedFireAI.TIME_value;
    }
        public var maxFireDelayTimeHelper:TimeDelayHelper = null;
        private var delay:int = 0;

        // Java field initializers run after the base constructor
        private function initFieldsTimedFireAI():void {
    this.maxFireDelayTimeHelper = new TimeDelayHelper(0);
    
        }
    

    public function TimedFireAI(delay:int, ownerLayerInterface:AllBinaryLayer, gameInput:GameInput) {
        super(ownerLayerInterface, gameInput);
        this.initFieldsTimedFireAI();
        this.delay = delay;
    }
    

    override public function processAI(allBinaryLayerManager:AllBinaryLayerManager):void {
        var timeFiredInterface:TimeFiredInterface = (this.getOwnerLayerInterface() as TimeFiredInterface);
        if (this.maxFireDelayTimeHelper.isTime(GameTickTimeDelayHelperFactory.getInstance().startTime) && timeFiredInterface.getLastFireTime() + this.maxFireDelayTimeHelper.delay < this.maxFireDelayTimeHelper.getStartTime()) {
            super.processKeyAI(Canvas.KEY_NUM1);
            this.maxFireDelayTimeHelper.delay = this.delay;
        }
    }
    }
}

