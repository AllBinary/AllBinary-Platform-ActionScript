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

    public class NoMovementFactory {
    private static var instance_value:NoMovementFactory;
    private static var instance_set:Boolean = false;
    private static function get instance():NoMovementFactory {
        if (!NoMovementFactory.instance_set) {
            NoMovementFactory.instance_set = true;
            NoMovementFactory.instance_value = new NoMovementFactory();
        }
        return NoMovementFactory.instance_value;
    }
        private var movement:Movement = null;

        // Java field initializers run after the base constructor
        private function initFieldsNoMovementFactory():void {
    this.movement = new Movement();
        }

        public function NoMovementFactory() {
            super();
            this.initFieldsNoMovementFactory();
        }
    

    public static function getInstance():NoMovementFactory {
        return NoMovementFactory.instance;
    }
    

    public function getMovmentInstance():Movement {
        return this.movement;
    }
    }
}

