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
    import org.allbinary.logic.math.BasicDecimal;

    public class DragVelocityBehavior extends VelocityBehaviorBase {
    private static var instance_value:DragVelocityBehavior;
    private static var instance_set:Boolean = false;
    public static function get instance():DragVelocityBehavior {
        if (!DragVelocityBehavior.instance_set) {
            DragVelocityBehavior.instance_set = true;
            DragVelocityBehavior.instance_value = new DragVelocityBehavior();
        }
        return DragVelocityBehavior.instance_value;
    }
    

    override public function reduce(velocityProperties:BasicVelocityProperties, nominator:int, denominator:int):void {
        if (velocityProperties.getVelocityXBasicDecimalP().getUnscaled() != 0) {
            var basicDecimal:BasicDecimal = velocityProperties.getVelocityXBasicDecimalP();
            basicDecimal.multiplyint(nominator);
            basicDecimal.divideint(denominator);
        }
        if (velocityProperties.getVelocityYBasicDecimalP().getUnscaled() != 0) {
            basicDecimal = velocityProperties.getVelocityYBasicDecimalP();
            basicDecimal.multiplyint(nominator);
            basicDecimal.divideint(denominator);
        }
    }
    

    override public function reduceX(velocityProperties:BasicVelocityProperties, nominator:int, denominator:int):void {
        var basicDecimal:BasicDecimal = velocityProperties.getVelocityXBasicDecimalP();
        if (basicDecimal.getUnscaled() != 0) {
            basicDecimal.multiplyint(nominator);
            basicDecimal.divideint(denominator);
        }
    }
    

    override public function reduceY(velocityProperties:BasicVelocityProperties, nominator:int, denominator:int):void {
        if (velocityProperties.getVelocityYBasicDecimalP().getUnscaled() != 0) {
            var basicDecimal:BasicDecimal = velocityProperties.getVelocityYBasicDecimalP();
            basicDecimal.multiplyint(nominator);
            basicDecimal.divideint(denominator);
        }
    }
    }
}

