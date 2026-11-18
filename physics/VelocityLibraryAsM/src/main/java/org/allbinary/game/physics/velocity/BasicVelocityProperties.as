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
package org.allbinary.game.physics.velocity {
    import org.allbinary.direction.Direction;
    import org.allbinary.direction.DirectionUtil;
    import org.allbinary.logic.communication.log.LogUtil;
    import org.allbinary.logic.math.BasicDecimal;
    import org.allbinary.logic.math.vector.AxisMathVectorUtil;
    import org.allbinary.logic.string.StringMaker;
    import org.allbinary.logic.string.StringUtil;
    import org.allbinary.math.Angle;
    import org.allbinary.math.PositionStrings;
    import org.allbinary.string.CommonSeps;

    public class BasicVelocityProperties implements BasicVelocityInterface {
        public var logUtil:LogUtil = null;
        public var velocityXBasicDecimal:BasicDecimal = null;
        public var velocityYBasicDecimal:BasicDecimal = null;
        public var velocityZBasicDecimal:BasicDecimal = null;
        private var axisMathVectorUtil:AxisMathVectorUtil = null;
        public var directionUtil:DirectionUtil = null;

        // Java field initializers run after the base constructor
        private function initFieldsBasicVelocityProperties():void {
    this.logUtil = LogUtil.getInstance();
    
    
    
    this.axisMathVectorUtil = AxisMathVectorUtil.getInstance();
    this.directionUtil = DirectionUtil.getInstance();
        }
    

    public function BasicVelocityProperties() {
        super();
        this.initFieldsBasicVelocityProperties();
        this.velocityXBasicDecimal = new BasicDecimal(0);
        this.velocityYBasicDecimal = new BasicDecimal(0);
        this.velocityZBasicDecimal = new BasicDecimal(0);
    }
    

    public function zero():void {
        this.velocityXBasicDecimal.setint(0);
        this.velocityYBasicDecimal.setint(0);
        this.velocityZBasicDecimal.setint(0);
    }
    

    public function getVelocityXBasicDecimalP():BasicDecimal {
        return this.velocityXBasicDecimal;
    }
    

    public function getVelocityYBasicDecimalP():BasicDecimal {
        return this.velocityYBasicDecimal;
    }
    

    public function getVelocityZBasicDecimalP():BasicDecimal {
        return this.velocityZBasicDecimal;
    }
    

    public function setVelocityWithBigDecimalAndDirection(magnitudeBasicDecimal:BasicDecimal, direction:Direction, otherDirection:Direction):void {
        var angle:Angle = this.directionUtil.getAngle(direction);
        var otherAngle:Angle = this.directionUtil.getAngle(otherDirection);
        this.setVelocityWithBigDecimal(magnitudeBasicDecimal, angle, otherAngle);
    }
    

    public function setVelocityWithDirection(magnitude:Number, direction:Direction, otherDirection:Direction):void {
        var angle:Angle = this.directionUtil.getAngle(direction);
        var otherAngle:Angle = this.directionUtil.getAngle(otherDirection);
        this.setVelocity(magnitude, angle, otherAngle);
    }
    

    public function addVelocityWithBigDecimalAndDirection(magnitudeBasicDecimal:BasicDecimal, direction:Direction, otherDirection:Direction):void {
        var angle:Angle = this.directionUtil.getAngle(direction);
        var otherAngle:Angle = this.directionUtil.getAngle(otherDirection);
        this.addVelocityWithBigDecimal(magnitudeBasicDecimal, angle, otherAngle);
    }
    

    public function addVelocityWithDirection(magnitude:Number, direction:Direction, otherDirection:Direction):void {
        var angle:Angle = this.directionUtil.getAngle(direction);
        var otherAngle:Angle = this.directionUtil.getAngle(otherDirection);
        this.addVelocity(magnitude, angle, otherAngle);
    }
    

    public function setVelocityWithBigDecimal(magnitudeBasicDecimal:BasicDecimal, angle:Angle, otherAngle:Angle):void {
        var magnitude:Number = magnitudeBasicDecimal.getUnscaled();
        this.setVelocity(magnitude, angle, otherAngle);
    }
    

    public function addVelocityWithBigDecimal(magnitudeBasicDecimal:BasicDecimal, angle:Angle, otherAngle:Angle):void {
        var magnitude:Number = magnitudeBasicDecimal.getUnscaled();
        this.addVelocity(magnitude, angle, otherAngle);
    }
    

    public function setVelocity(magnitude:Number, angle:Angle, otherAngle:Angle):void {
        this.setVelocityi(magnitude, angle.getValue(), otherAngle.getValue());
    }
    

    public function addVelocity(magnitude:Number, angle:Angle, otherAngle:Angle):void {
        this.addVelocityi(magnitude, angle.getValue(), otherAngle.getValue());
    }
    

    public function setVelocityi(magnitude:Number, angle:int, otherAngle:int):void {
        var xVector:Number = (this.axisMathVectorUtil.calculateX(magnitude, angle) / Number(this.velocityXBasicDecimal.getScaledFactorValue()));
        var yVector:Number = (this.axisMathVectorUtil.calculateY(magnitude, angle) / Number(this.velocityYBasicDecimal.getScaledFactorValue()));
        var zVector:Number = (this.axisMathVectorUtil.calculateZ(magnitude, otherAngle) / Number(this.velocityZBasicDecimal.getScaledFactorValue()));
        this.velocityXBasicDecimal.setlong(xVector);
        this.velocityYBasicDecimal.setlong(yVector);
        this.velocityZBasicDecimal.setlong(zVector);
    }
    

    public function addVelocityi(magnitude:Number, angle:int, otherAngle:int):void {
        var xVector:Number = (this.axisMathVectorUtil.calculateX(magnitude, angle) / Number(this.velocityXBasicDecimal.getScaledFactorValue()));
        var yVector:Number = (this.axisMathVectorUtil.calculateY(magnitude, angle) / Number(this.velocityYBasicDecimal.getScaledFactorValue()));
        var zVector:Number = (this.axisMathVectorUtil.calculateZ(magnitude, otherAngle) / Number(this.velocityZBasicDecimal.getScaledFactorValue()));
        this.velocityXBasicDecimal.addlong(xVector);
        this.velocityYBasicDecimal.addlong(yVector);
        this.velocityZBasicDecimal.addlong(zVector);
    }
    

    public function toString():String {
        var commonSeps:CommonSeps = CommonSeps.getInstance();
        var positionStrings:PositionStrings = PositionStrings.getInstance();
        var stringBuffer:StringMaker = new StringMaker();
        var stringUtil:StringUtil = StringUtil.getInstance();
        stringBuffer.append("Velocity ");
        stringBuffer.append(positionStrings.X_LABEL);
        stringBuffer.append(stringUtil.toString1(this.velocityXBasicDecimal));
        stringBuffer.append(commonSeps.SPACE);
        stringBuffer.append(positionStrings.Y_LABEL);
        stringBuffer.append(stringUtil.toString1(this.velocityYBasicDecimal));
        stringBuffer.append(commonSeps.SPACE);
        stringBuffer.append(positionStrings.Z_LABEL);
        stringBuffer.append(stringUtil.toString1(this.velocityZBasicDecimal));
        return stringBuffer.toString();
    }
    }
}

