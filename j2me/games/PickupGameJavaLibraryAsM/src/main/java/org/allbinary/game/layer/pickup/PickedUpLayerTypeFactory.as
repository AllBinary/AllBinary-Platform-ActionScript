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
package org.allbinary.game.layer.pickup {
    import org.allbinary.logic.string.StringUtil;

    public class PickedUpLayerTypeFactory {
    private static var instance_value:PickedUpLayerTypeFactory;
    private static var instance_set:Boolean = false;
    private static function get instance():PickedUpLayerTypeFactory {
        if (!PickedUpLayerTypeFactory.instance_set) {
            PickedUpLayerTypeFactory.instance_set = true;
            PickedUpLayerTypeFactory.instance_value = new PickedUpLayerTypeFactory();
        }
        return PickedUpLayerTypeFactory.instance_value;
    }
        public var NONE:PickedUpLayerType = null;
        public var BEAM:PickedUpLayerType = null;
        public var MINE:PickedUpLayerType = null;
        public var PROJECTILE:PickedUpLayerType = null;
        public var ENHANCEMENT:PickedUpLayerType = null;
        public var MORPH:PickedUpLayerType = null;
        public var PART:PickedUpLayerType = null;
        public var HEAL:PickedUpLayerType = null;
        public var LIFE:PickedUpLayerType = null;
        public var POINTS:PickedUpLayerType = null;

        // Java field initializers run after the base constructor
        private function initFieldsPickedUpLayerTypeFactory():void {
    this.NONE = new PickedUpLayerType(StringUtil.getInstance().NULL_STRING);
    this.BEAM = new PickedUpLayerType("BEAM");
    this.MINE = new PickedUpLayerType("MINE");
    this.PROJECTILE = new PickedUpLayerType("PROJECTILE");
    this.ENHANCEMENT = new PickedUpLayerType("Enhancement");
    this.MORPH = new PickedUpLayerType("Morph");
    this.PART = new PickedUpLayerType("Part");
    this.HEAL = new PickedUpLayerType("Heal");
    this.LIFE = new PickedUpLayerType("Life");
    this.POINTS = new PickedUpLayerType("Points");
        }

        public function PickedUpLayerTypeFactory() {
            super();
            this.initFieldsPickedUpLayerTypeFactory();
        }
    

    public static function getInstance():PickedUpLayerTypeFactory {
        return PickedUpLayerTypeFactory.instance;
    }
    }
}

