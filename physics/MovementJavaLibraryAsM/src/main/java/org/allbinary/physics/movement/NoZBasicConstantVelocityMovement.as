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
    import org.allbinary.game.physics.velocity.VelocityInterfaceCompositeInterface;
    import org.allbinary.layer.AllBinaryLayer;
    import org.allbinary.logic.math.BasicDecimal;
    import org.allbinary.logic.math.vector.AxisMathVectorUtil;
    import org.allbinary.math.AngleFactory;

    public class NoZBasicConstantVelocityMovement extends Movement implements VelocityInterfaceCompositeInterface {
        private var velocityProperties:BasicVelocityProperties = null;
        private var speedBasicDecimal:BasicDecimal = null;
        private var axisMathVectorUtil:AxisMathVectorUtil = null;

        // Java field initializers run after the base constructor
        private function initFieldsNoZBasicConstantVelocityMovement():void {
    
    this.speedBasicDecimal = BasicDecimal.ZERO_BIGDECIMAL;
    this.axisMathVectorUtil = AxisMathVectorUtil.getInstance();
        }
    

    public function NoZBasicConstantVelocityMovement(basicDecimal:BasicDecimal, velocityProperties:BasicVelocityProperties) {
        super();
        this.initFieldsNoZBasicConstantVelocityMovement();
        this.setSpeedBasicDecimal(basicDecimal);
        this.velocityProperties = velocityProperties;
    }
    

    override public function init(speedBasicDecimal:BasicDecimal, angle:int, otherAngle:int):void {
        this.speedBasicDecimal = speedBasicDecimal;
        var angleFactory:AngleFactory = AngleFactory.getInstance();
        this.velocityProperties.setVelocityWithBigDecimal(speedBasicDecimal, angleFactory.getAt(angle), angleFactory.getAt(otherAngle));
    }
    

    public function moveOutsideRadius(layer:AllBinaryLayer, radius:Number, angle:int, otherAngle:int):void {
        var scaleFactorValue:int = this.speedBasicDecimal.getScaledFactorValue();
        var xVector:int = int((this.axisMathVectorUtil.calculateX(radius, angle) / Number(scaleFactorValue)));
        var yVector:int = int((this.axisMathVectorUtil.calculateY(radius, angle) / Number(scaleFactorValue)));
        layer.moveDXYZ(xVector, yVector, 0);
    }
    

    override public function process(layer:AllBinaryGameLayer):void {
        layer.moveDXYZ(this.velocityProperties.getVelocityXBasicDecimalP().getScaled(), this.velocityProperties.getVelocityYBasicDecimalP().getScaled(), 0);
    }
    

    public function toString():String {
        return this.velocityProperties.toString();
    }
    

    override public function stop():void {
        this.velocityProperties.zero();
    }
    

    public function getVelocityProperties():BasicVelocityProperties {
        return this.velocityProperties;
    }
    

    public function setVelocityProperties(velocityProperties:BasicVelocityProperties):void {
        this.velocityProperties = velocityProperties;
    }
    

    public function setSpeedBasicDecimal(speedBasicDecimal:BasicDecimal):void {
        this.speedBasicDecimal = speedBasicDecimal;
    }
    

    public function getSpeedBasicDecimal():BasicDecimal {
        return this.speedBasicDecimal;
    }
    }
}

