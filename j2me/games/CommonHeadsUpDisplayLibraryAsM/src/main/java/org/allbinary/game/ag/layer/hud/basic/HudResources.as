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
package org.allbinary.game.ag.layer.hud.basic {

    public class HudResources {
    private static var instance_value:HudResources;
    private static var instance_set:Boolean = false;
    private static function get instance():HudResources {
        if (!HudResources.instance_set) {
            HudResources.instance_set = true;
            HudResources.instance_value = new HudResources();
        }
        return HudResources.instance_value;
    }
        public var RESOURCE_LIFE:String = null;
        public var RESOURCE_HEALTH:String = null;

        // Java field initializers run after the base constructor
        private function initFieldsHudResources():void {
    this.RESOURCE_LIFE = "/hud_life_10_by_10.png";
    this.RESOURCE_HEALTH = "/hud_health_10_by_10.png";
        }
    

    public static function getInstance():HudResources {
        return HudResources.instance;
    }
    

    public function HudResources() {
        super();
        this.initFieldsHudResources();
    }
    }
}

