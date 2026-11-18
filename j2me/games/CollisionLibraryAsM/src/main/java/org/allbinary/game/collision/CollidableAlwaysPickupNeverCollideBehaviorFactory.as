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

    public class CollidableAlwaysPickupNeverCollideBehaviorFactory extends CollidableBaseBehaviorFactory {
    private static var instanceC_value:CollidableAlwaysPickupNeverCollideBehaviorFactory;
    private static var instanceC_set:Boolean = false;
    private static function get instanceC():CollidableAlwaysPickupNeverCollideBehaviorFactory {
        if (!CollidableAlwaysPickupNeverCollideBehaviorFactory.instanceC_set) {
            CollidableAlwaysPickupNeverCollideBehaviorFactory.instanceC_set = true;
            CollidableAlwaysPickupNeverCollideBehaviorFactory.instanceC_value = new CollidableAlwaysPickupNeverCollideBehaviorFactory();
        }
        return CollidableAlwaysPickupNeverCollideBehaviorFactory.instanceC_value;
    }
        private var instance:CollidableAlwaysPickupNeverCollideBehavior = null;

        // Java field initializers run after the base constructor
        private function initFieldsCollidableAlwaysPickupNeverCollideBehaviorFactory():void {
    this.instance = new CollidableAlwaysPickupNeverCollideBehavior();
        }

        public function CollidableAlwaysPickupNeverCollideBehaviorFactory() {
            super();
            this.initFieldsCollidableAlwaysPickupNeverCollideBehaviorFactory();
        }
    

    public static function getInstance():CollidableAlwaysPickupNeverCollideBehaviorFactory {
        return CollidableAlwaysPickupNeverCollideBehaviorFactory.instanceC;
    }
    

    override public function createBehavior():CollidableBaseBehavior {
        return this.instance;
    }
    }
}

