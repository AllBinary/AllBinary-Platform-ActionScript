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
package org.allbinary.game.combat.damage {

    public class ExplosionResources {
    private static var instance_value:ExplosionResources;
    private static var instance_set:Boolean = false;
    private static function get instance():ExplosionResources {
        if (!ExplosionResources.instance_set) {
            ExplosionResources.instance_set = true;
            ExplosionResources.instance_value = new ExplosionResources();
        }
        return ExplosionResources.instance_value;
    }
        public var EXPLOSION_90_RESOURCE:String = null;
        public var EXPLOSION_60_RESOURCE:String = null;
        public var HALF_EXPLOSION_RESOURCE:String = null;
        public var THIRD_EXPLOSION_RESOURCE:String = null;

        // Java field initializers run after the base constructor
        private function initFieldsExplosionResources():void {
    this.EXPLOSION_90_RESOURCE = "/explosion_sprite_90_by_90.png";
    this.EXPLOSION_60_RESOURCE = "/explosion_sprite_60_by_60.png";
    this.HALF_EXPLOSION_RESOURCE = "/explosion_sprite_30_by_30.png";
    this.THIRD_EXPLOSION_RESOURCE = "/explosion_sprite_15_by_15.png";
        }
    

    public static function getInstance():ExplosionResources {
        return ExplosionResources.instance;
    }
    

    public function ExplosionResources() {
        super();
        this.initFieldsExplosionResources();
    }
    }
}

