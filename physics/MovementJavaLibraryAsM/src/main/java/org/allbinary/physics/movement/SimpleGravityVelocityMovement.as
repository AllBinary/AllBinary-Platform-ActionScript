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
    import org.allbinary.game.physics.acceleration.GravityUtil;
    import org.allbinary.game.physics.velocity.VelocityProperties;
    import org.allbinary.logic.math.BasicDecimal;

    public class SimpleGravityVelocityMovement extends BasicConstantVelocityMovement {
        private var gravityUtil:GravityUtil = null;

        // Java field initializers run after the base constructor
        private function initFieldsSimpleGravityVelocityMovement():void {
    this.gravityUtil = GravityUtil.getInstance();
        }
    

    public function SimpleGravityVelocityMovement(speedBasicDecimal:BasicDecimal) {
        super(speedBasicDecimal, new VelocityProperties(int(speedBasicDecimal.getUnscaled()), int(speedBasicDecimal.getUnscaled())));
        this.initFieldsSimpleGravityVelocityMovement();
    }
    

    override public function process(layer:AllBinaryGameLayer):void {
        this.gravityUtil.process(this.getVelocityProperties(), this.gravityUtil.GAME_GRAVITY_VELOCITY);
        super.process(layer);
    }
    }
}

