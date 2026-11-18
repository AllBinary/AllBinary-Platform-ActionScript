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
package org.allbinary.logic.system.security.licensing {

    public class LockedResources {
    private static var instance_value:LockedResources;
    private static var instance_set:Boolean = false;
    private static function get instance():LockedResources {
        if (!LockedResources.instance_set) {
            LockedResources.instance_set = true;
            LockedResources.instance_value = new LockedResources();
        }
        return LockedResources.instance_value;
    }
        public var LOCKED_DEMO_GAME_FEATURE_RESOURCE:String = null;

        // Java field initializers run after the base constructor
        private function initFieldsLockedResources():void {
    this.LOCKED_DEMO_GAME_FEATURE_RESOURCE = "/locked_demo_game_feature_64_by_64.png";
        }

        public function LockedResources() {
            super();
            this.initFieldsLockedResources();
        }
    

    public static function getInstance():LockedResources {
        return LockedResources.instance;
    }
    }
}

