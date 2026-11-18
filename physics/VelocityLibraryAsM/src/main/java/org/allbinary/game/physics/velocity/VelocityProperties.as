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

    public class VelocityProperties extends BasicVelocityProperties implements VelocityInterface {
    private static var NULL_VELOCITY_PROPERTIES_value:VelocityProperties;
    private static var NULL_VELOCITY_PROPERTIES_set:Boolean = false;
    public static function get NULL_VELOCITY_PROPERTIES():VelocityProperties {
        if (!VelocityProperties.NULL_VELOCITY_PROPERTIES_set) {
            VelocityProperties.NULL_VELOCITY_PROPERTIES_set = true;
            VelocityProperties.NULL_VELOCITY_PROPERTIES_value = new VelocityProperties(0, 0);
        }
        return VelocityProperties.NULL_VELOCITY_PROPERTIES_value;
    }
        private var maxForwardVelocity:int = 0;
        private var maxReverseVelocity:int = 0;

        // Java field initializers run after the base constructor
        private function initFieldsVelocityProperties():void {
    this.maxForwardVelocity = 0;
    this.maxReverseVelocity = 0;
        }
    

    public function VelocityProperties(maxForwardVelocity:int, maxReverseVelocity:int) {
        super();
        this.initFieldsVelocityProperties();
        this.setMaxForwardVelocity(maxForwardVelocity);
        this.setMaxReverseVelocity(maxReverseVelocity);
    }
    

    public function getMaxForwardVelocity():int {
        return this.maxForwardVelocity;
    }
    

    public function setMaxForwardVelocity(maxForwardVelocity:int):void {
        this.maxForwardVelocity = maxForwardVelocity;
    }
    

    public function getMaxReverseVelocity():int {
        return this.maxReverseVelocity;
    }
    

    public function setMaxReverseVelocity(maxReverseVelocity:int):void {
        this.maxReverseVelocity = maxReverseVelocity;
    }
    

    public function limitMaxXYForwardVelocity():void {
        this.limitMaxXYVelocity(this.getMaxForwardVelocity());
    }
    

    public function limitMaxXYReverseVelocity():void {
        this.limitMaxXYVelocity(this.getMaxReverseVelocity());
    }
    

    public function limitMaxYForwardVelocity():void {
        this.limitMaxYVelocity(this.getMaxForwardVelocity());
    }
    

    public function limitMaxYReverseVelocity():void {
        this.limitMaxYVelocity(this.getMaxReverseVelocity());
    }
    

    public function limitMaxXForwardVelocity():void {
        this.limitMaxXVelocity(this.getMaxForwardVelocity());
    }
    

    public function limitMaxXReverseVelocity():void {
        this.limitMaxXVelocity(this.getMaxReverseVelocity());
    }
    

    public function isOverXYMaxForwardVelocity():Boolean {
        return this.isOverXYMaxVelocity(this.getMaxForwardVelocity());
    }
    

    public function isOverXYMaxReverseVelocity():Boolean {
        return this.isOverXYMaxVelocity(this.getMaxReverseVelocity());
    }
    

    public function limitXYToForwardAndReverseMaxVelocity():void {
        this.limitMaxXYForwardVelocity();
        this.limitMaxXYReverseVelocity();
    }
    

    public function limitMaxXYVelocity(maxVelocity:int):void {
        this.limitMaxXVelocity(maxVelocity);
        this.limitMaxYVelocity(maxVelocity);
    }
    

    public function limitMaxPositiveYVelocity(maxVelocity:int):void {
        if (this.velocityYBasicDecimal.getUnscaled() > Number(maxVelocity)) {
            this.velocityYBasicDecimal.setint(maxVelocity);
        }
    }
    

    public function limitMaxNegativeYVelocity(maxVelocity:int):void {
        if (this.velocityYBasicDecimal.getUnscaled() < Number(-maxVelocity)) {
            this.velocityYBasicDecimal.setint(-maxVelocity);
        }
    }
    

    public function limitMaxYVelocity(maxVelocity:int):void {
        this.limitMaxPositiveYVelocity(maxVelocity);
        this.limitMaxNegativeYVelocity(maxVelocity);
    }
    

    public function limitMaxXVelocity(maxVelocity:int):void {
        if (this.velocityXBasicDecimal.getUnscaled() > Number(maxVelocity)) {
            this.velocityXBasicDecimal.setint(maxVelocity);
        }
        if (this.velocityXBasicDecimal.getUnscaled() < Number(-maxVelocity)) {
            this.velocityXBasicDecimal.setint(-maxVelocity);
        }
    }
    

    public function isOverXYMaxVelocity(maxVelocity:int):Boolean {
        if (this.velocityXBasicDecimal.getUnscaled() > Number(maxVelocity)) {
            return true;
        }
        if (this.velocityXBasicDecimal.getUnscaled() < Number(-maxVelocity)) {
            return true;
        }
        if (this.velocityYBasicDecimal.getUnscaled() > Number(maxVelocity)) {
            return true;
        }
        if (this.velocityYBasicDecimal.getUnscaled() < Number(-maxVelocity)) {
            return true;
        }
        return false;
    }
    

    override public function setVelocityi(magnitude:Number, angle:int, otherAngle:int):void {
        super.setVelocityi(magnitude, angle, otherAngle);
        this.limitXYToForwardAndReverseMaxVelocity();
    }
    

    override public function addVelocityi(magnitude:Number, angle:int, otherAngle:int):void {
        super.addVelocityi(magnitude, angle, otherAngle);
        this.limitXYToForwardAndReverseMaxVelocity();
    }
    }
}

