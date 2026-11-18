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
    import org.allbinary.game.physics.velocity.VelocityProperties;
    import org.allbinary.logic.math.BasicDecimal;

    public class OscillateVelocityMovement extends BasicConstantVelocityMovement {
        private var oscillateMin:int = 0;
        private var oscillateMax:int = 0;
        private var oscillate:int = 0;
        private var oscillatePositive:Boolean = false;

        // Java field initializers run after the base constructor
        private function initFieldsOscillateVelocityMovement():void {
    
    
    this.oscillate = 0;
    this.oscillatePositive = false;
        }
    

    public function OscillateVelocityMovement(speedBasicDecimal:BasicDecimal, oscillateMin:int, oscillateMax:int) {
        super(speedBasicDecimal, new VelocityProperties(int(speedBasicDecimal.getUnscaled()), int(speedBasicDecimal.getUnscaled())));
        this.initFieldsOscillateVelocityMovement();
        this.oscillateMin = oscillateMin;
        this.oscillateMax = oscillateMax;
    }
    

    override public function process(layer:AllBinaryGameLayer):void {
        super.process(layer);
        if (this.oscillate < this.oscillateMin) {
            this.oscillatePositive = true;
        } else if (this.oscillate > this.oscillateMax) {
            this.oscillatePositive = false;
        }
        if (this.oscillatePositive) {
            this.oscillate++;
            this.getVelocityProperties().getVelocityXBasicDecimalP().addint(2000);
        } else {
            this.oscillate--;
            this.getVelocityProperties().getVelocityXBasicDecimalP().subtractint(2000);
        }
    }
    }
}

