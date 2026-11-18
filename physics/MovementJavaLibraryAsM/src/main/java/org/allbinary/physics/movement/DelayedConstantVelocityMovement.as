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
package org.allbinary.physics.movement {
    import org.allbinary.game.layer.AllBinaryGameLayer;
    import org.allbinary.game.physics.velocity.BasicVelocityProperties;
    import org.allbinary.logic.math.BasicDecimal;
    import org.allbinary.time.GameTickTimeDelayHelperFactory;
    import org.allbinary.time.TimeDelayHelper;

    public class DelayedConstantVelocityMovement extends BasicConstantVelocityMovement {
        private var timeDelayHelper:TimeDelayHelper = null;

        // Java field initializers run after the base constructor
        private function initFieldsDelayedConstantVelocityMovement():void {
    this.timeDelayHelper = new TimeDelayHelper(60);
        }
    

    public function DelayedConstantVelocityMovement(basicDecimal:BasicDecimal, velocityProperties:BasicVelocityProperties) {
        super(basicDecimal, velocityProperties);
        this.initFieldsDelayedConstantVelocityMovement();
    }
    

    override public function init(speedBasicDecimal:BasicDecimal, angle:int, otherAngle:int):void {
    }
    

    override public function process(layer:AllBinaryGameLayer):void {
        if (this.timeDelayHelper.isTime(GameTickTimeDelayHelperFactory.getInstance().startTime)) {
            super.process(layer);
        }
    }
    }
}

