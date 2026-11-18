/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2022 AllBinary 
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

    public class NoDragVelocityBehavior extends VelocityBehaviorBase {
    private static var instance_value:NoDragVelocityBehavior;
    private static var instance_set:Boolean = false;
    public static function get instance():NoDragVelocityBehavior {
        if (!NoDragVelocityBehavior.instance_set) {
            NoDragVelocityBehavior.instance_set = true;
            NoDragVelocityBehavior.instance_value = new NoDragVelocityBehavior();
        }
        return NoDragVelocityBehavior.instance_value;
    }
    }
}

