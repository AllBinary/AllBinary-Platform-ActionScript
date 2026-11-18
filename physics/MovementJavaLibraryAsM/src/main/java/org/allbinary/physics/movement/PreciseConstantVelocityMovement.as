// Generated Code Do Not Modify
package org.allbinary.physics.movement {
    import org.allbinary.game.layer.AllBinaryGameLayer;
    import org.allbinary.game.physics.velocity.BasicVelocityProperties;
    import org.allbinary.logic.math.BasicDecimal;
    import org.allbinary.logic.math.MathUtil;
    import org.allbinary.logic.math.ScaleFactorFactory;

    public class PreciseConstantVelocityMovement extends BasicConstantVelocityMovement {
        private var accumulatedX:int = 0;
        private var accumulatedY:int = 0;
        private var accumulatedZ:int = 0;
        private var factorValue:int = 0;

        // Java field initializers run after the base constructor
        private function initFieldsPreciseConstantVelocityMovement():void {
    this.accumulatedX = 0;
    this.accumulatedY = 0;
    this.accumulatedZ = 0;
    this.factorValue = ScaleFactorFactory.getInstance().DEFAULT_SCALE_VALUE;
        }
    

    public function PreciseConstantVelocityMovement(basicDecimal:BasicDecimal, velocityProperties:BasicVelocityProperties) {
        super(basicDecimal, velocityProperties);
        this.initFieldsPreciseConstantVelocityMovement();
    }
    

    override public function init(speedBasicDecimal:BasicDecimal, angle:int, otherAngle:int):void {
    }
    

    override public function process(layer:AllBinaryGameLayer):void {
        var mathUtil:MathUtil = MathUtil.getInstance();
        var velocityProperties:BasicVelocityProperties = this.getVelocityProperties();
        this.accumulatedX = int((Number(this.accumulatedX) + velocityProperties.getVelocityXBasicDecimalP().getUnscaled()));
        this.accumulatedY = int((Number(this.accumulatedY) + velocityProperties.getVelocityYBasicDecimalP().getUnscaled()));
        this.accumulatedZ = int((Number(this.accumulatedZ) + velocityProperties.getVelocityZBasicDecimalP().getUnscaled()));
        layer.moveDXYZ(int(this.accumulatedX / this.factorValue), int(this.accumulatedY / this.factorValue), int(this.accumulatedZ / this.factorValue));
        if (mathUtil.abs(this.accumulatedX) > this.factorValue) {
            this.accumulatedX = 0;
        }
        if (mathUtil.abs(this.accumulatedY) > this.factorValue) {
            this.accumulatedY = 0;
        }
        if (mathUtil.abs(this.accumulatedZ) > this.factorValue) {
            this.accumulatedZ = 0;
        }
    }
    }
}

