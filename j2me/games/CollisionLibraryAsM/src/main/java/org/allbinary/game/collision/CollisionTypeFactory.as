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
package org.allbinary.game.collision {

    public class CollisionTypeFactory {
    private static var SINGLETON_value:CollisionTypeFactory;
    private static var SINGLETON_set:Boolean = false;
    private static function get SINGLETON():CollisionTypeFactory {
        if (!CollisionTypeFactory.SINGLETON_set) {
            CollisionTypeFactory.SINGLETON_set = true;
            CollisionTypeFactory.SINGLETON_value = new CollisionTypeFactory();
        }
        return CollisionTypeFactory.SINGLETON_value;
    }
        public var NONE:CollisionType = null;
        public var DAMAGE:CollisionType = null;
        public var PICKUP:CollisionType = null;
        public var COLLISION:CollisionType = null;

        // Java field initializers run after the base constructor
        private function initFieldsCollisionTypeFactory():void {
    this.NONE = new CollisionType("None");
    this.DAMAGE = new CollisionType("Damage");
    this.PICKUP = new CollisionType("Pickup");
    this.COLLISION = new CollisionType("Collision");
        }

        public function CollisionTypeFactory() {
            super();
            this.initFieldsCollisionTypeFactory();
        }
    

    public static function getInstance():CollisionTypeFactory {
        return CollisionTypeFactory.SINGLETON;
    }
    }
}

