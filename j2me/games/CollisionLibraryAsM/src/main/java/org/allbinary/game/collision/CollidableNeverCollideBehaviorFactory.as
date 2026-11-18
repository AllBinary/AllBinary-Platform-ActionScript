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

    public class CollidableNeverCollideBehaviorFactory extends CollidableBaseBehaviorFactory {
    private static var instanceC_value:CollidableNeverCollideBehaviorFactory;
    private static var instanceC_set:Boolean = false;
    private static function get instanceC():CollidableNeverCollideBehaviorFactory {
        if (!CollidableNeverCollideBehaviorFactory.instanceC_set) {
            CollidableNeverCollideBehaviorFactory.instanceC_set = true;
            CollidableNeverCollideBehaviorFactory.instanceC_value = new CollidableNeverCollideBehaviorFactory();
        }
        return CollidableNeverCollideBehaviorFactory.instanceC_value;
    }
        private var instance:CollidableNeverCollideBehavior = null;

        // Java field initializers run after the base constructor
        private function initFieldsCollidableNeverCollideBehaviorFactory():void {
    this.instance = new CollidableNeverCollideBehavior(false);
        }

        public function CollidableNeverCollideBehaviorFactory() {
            super();
            this.initFieldsCollidableNeverCollideBehaviorFactory();
        }
    

    public static function getInstance():CollidableNeverCollideBehaviorFactory {
        return CollidableNeverCollideBehaviorFactory.instanceC;
    }
    

    override public function createBehavior():CollidableBaseBehavior {
        return this.instance;
    }
    }
}

