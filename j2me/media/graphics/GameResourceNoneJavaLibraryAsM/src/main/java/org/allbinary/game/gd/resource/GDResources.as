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
package org.allbinary.game.gd.resource {

    public class GDResources {
    private static var instance_value:GDResources;
    private static var instance_set:Boolean = false;
    private static function get instance():GDResources {
        if (!GDResources.instance_set) {
            GDResources.instance_set = true;
            GDResources.instance_value = new GDResources();
        }
        return GDResources.instance_value;
    }
        public var resourceStringArray:Vector.<String> = null;
        public var currentLayoutRequiredTotal:int = 0;

        // Java field initializers run after the base constructor
        private function initFieldsGDResources():void {
    this.resourceStringArray = new <String>[];
    this.currentLayoutRequiredTotal = 0;
        }

        public function GDResources() {
            super();
            this.initFieldsGDResources();
        }
    

    public static function getInstance():GDResources {
        return GDResources.instance;
    }
    }
}

