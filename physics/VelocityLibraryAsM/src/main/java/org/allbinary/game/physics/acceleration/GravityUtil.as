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
package org.allbinary.game.physics.acceleration {
    import org.allbinary.game.physics.velocity.BasicVelocityProperties;

    public class GravityUtil {
    private static var instance_value:GravityUtil;
    private static var instance_set:Boolean = false;
    private static function get instance():GravityUtil {
        if (!GravityUtil.instance_set) {
            GravityUtil.instance_set = true;
            GravityUtil.instance_value = new GravityUtil();
        }
        return GravityUtil.instance_value;
    }
        public var GAME_GRAVITY_VELOCITY:int = 0;
        public var MAX_GAME_VELOCITY:int = 0;

        // Java field initializers run after the base constructor
        private function initFieldsGravityUtil():void {
    this.GAME_GRAVITY_VELOCITY = 1800;
    this.MAX_GAME_VELOCITY = 18000;
        }

        public function GravityUtil() {
            super();
            this.initFieldsGravityUtil();
        }
    

    public static function getInstance():GravityUtil {
        return GravityUtil.instance;
    }
    

    public function process(velocityProperties:BasicVelocityProperties, customGravity:int):void {
        velocityProperties.getVelocityYBasicDecimalP().addint(customGravity);
    }
    }
}

