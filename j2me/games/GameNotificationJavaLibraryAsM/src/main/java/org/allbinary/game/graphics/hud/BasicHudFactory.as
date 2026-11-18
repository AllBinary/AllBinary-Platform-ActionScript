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
package org.allbinary.game.graphics.hud {

    public class BasicHudFactory {
    private static var instance_value:BasicHudFactory;
    private static var instance_set:Boolean = false;
    private static function get instance():BasicHudFactory {
        if (!BasicHudFactory.instance_set) {
            BasicHudFactory.instance_set = true;
            BasicHudFactory.instance_value = new BasicHudFactory();
        }
        return BasicHudFactory.instance_value;
    }
        public var DIRECTION_EXCEPTION:String = null;
        public var VERTICAL:int = 0;
        public var HORIZONTAL:int = 0;
        public var BOTTOMLEFT:int = 0;
        public var BOTTOMRIGHT:int = 0;
        public var TOPLEFT:int = 0;
        public var TOPRIGHT:int = 0;
        public var BOTTOMCENTER:int = 0;
        public var TOPCENTER:int = 0;
        public var ABSOLUTE:int = 0;

        // Java field initializers run after the base constructor
        private function initFieldsBasicHudFactory():void {
    this.DIRECTION_EXCEPTION = "Only Horizontal Direction is Allowed Currently";
    this.VERTICAL = 0;
    this.HORIZONTAL = 1;
    this.BOTTOMLEFT = 0;
    this.BOTTOMRIGHT = 1;
    this.TOPLEFT = 2;
    this.TOPRIGHT = 3;
    this.BOTTOMCENTER = 4;
    this.TOPCENTER = 5;
    this.ABSOLUTE = 6;
        }
    

    public static function getInstance():BasicHudFactory {
        return BasicHudFactory.instance;
    }
    

    public function BasicHudFactory() {
        super();
        this.initFieldsBasicHudFactory();
    }
    }
}

