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
    import org.allbinary.logic.math.BasicDecimal;
    import org.allbinary.math.Angle;

    public interface BasicVelocityInterface {
    

    function getVelocityXBasicDecimalP():BasicDecimal;
    

    function getVelocityYBasicDecimalP():BasicDecimal;
    

    function zero():void;
    

    function setVelocityWithBigDecimalAndDirection(magnitudeBasicDecimal:BasicDecimal, direction:Direction, otherDirection:Direction):void;
    

    function addVelocityWithBigDecimalAndDirection(magnitudeBasicDecimal:BasicDecimal, direction:Direction, otherDirection:Direction):void;
    

    function setVelocityWithDirection(magnitude:Number, direction:Direction, otherDirection:Direction):void;
    

    function addVelocityWithDirection(magnitude:Number, direction:Direction, otherDirection:Direction):void;
    

    function setVelocityWithBigDecimal(magnitudeBasicDecimal:BasicDecimal, angle:Angle, otherAngle:Angle):void;
    

    function addVelocityWithBigDecimal(magnitudeBasicDecimal:BasicDecimal, angle:Angle, otherAngle:Angle):void;
    

    function setVelocity(magnitude:Number, angle:Angle, otherAngle:Angle):void;
    

    function addVelocity(magnitude:Number, angle:Angle, otherAngle:Angle):void;
    

    function addVelocityi(magnitude:Number, angle:int, otherAngle:int):void;
    }
}

