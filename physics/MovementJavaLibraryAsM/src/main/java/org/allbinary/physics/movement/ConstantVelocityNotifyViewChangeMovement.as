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
    import org.allbinary.layer.AllBinaryLayer;
    import org.allbinary.logic.math.BasicDecimal;
    import org.allbinary.logic.math.vector.AxisMathVectorUtil;
    import org.allbinary.math.AngleFactory;

    public class ConstantVelocityNotifyViewChangeMovement extends Movement {
        public var basicVelocityProperties:BasicVelocityProperties = null;
        private var speedBasicDecimal:BasicDecimal = null;
        private var axisMathVectorUtil:AxisMathVectorUtil = null;

        // Java field initializers run after the base constructor
        private function initFieldsConstantVelocityNotifyViewChangeMovement():void {
    
    
    this.axisMathVectorUtil = AxisMathVectorUtil.getInstance();
        }
    

    public function ConstantVelocityNotifyViewChangeMovement() {
        super();
        this.initFieldsConstantVelocityNotifyViewChangeMovement();
        this.speedBasicDecimal = BasicDecimal.ZERO_BIGDECIMAL;
        this.basicVelocityProperties = new BasicVelocityProperties();
    }
    

    override public function init(speedBasicDecimal:BasicDecimal, angle:int, otherAngle:int):void {
        this.speedBasicDecimal = speedBasicDecimal;
        var angleFactory:AngleFactory = AngleFactory.getInstance();
        this.basicVelocityProperties.setVelocityWithBigDecimal(speedBasicDecimal, angleFactory.getAt(angle), angleFactory.getAt(otherAngle));
    }
    

    public function moveOutsideRadius(layer:AllBinaryLayer, radius:Number, angle:int, otherAngle:int):void {
        var scaleFactorValue:int = this.speedBasicDecimal.getScaledFactorValue();
        var xVector:int = int((this.axisMathVectorUtil.calculateX(radius, angle) / Number(scaleFactorValue)));
        var yVector:int = int((this.axisMathVectorUtil.calculateY(radius, angle) / Number(scaleFactorValue)));
        var zVector:int = int((this.axisMathVectorUtil.calculateZ(radius, otherAngle) / Number(scaleFactorValue)));
        layer.moveDXYZ(xVector, yVector, zVector);
    }
    

    override public function process(layer:AllBinaryGameLayer):void {
        var x:int = this.basicVelocityProperties.getVelocityXBasicDecimalP().getScaled();
        var y:int = this.basicVelocityProperties.getVelocityYBasicDecimalP().getScaled();
        var z:int = this.basicVelocityProperties.getVelocityZBasicDecimalP().getScaled();
        layer.moveDXYZ(x, y, z);
        if (x != 0 || y != 0 || z != 0) {
            layer.onViewPositionChangeEvent();
        }
    }
    

    override public function stop():void {
        this.basicVelocityProperties.zero();
    }
    }
}

