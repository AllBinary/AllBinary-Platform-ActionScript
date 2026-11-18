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
package org.allbinary.game.layer {
    import org.allbinary.direction.DirectionFactory;
    import java.lang.JInteger;

    public class LayerPlacementTypeFactory {
    private static var instance_value:LayerPlacementTypeFactory;
    private static var instance_set:Boolean = false;
    private static function get instance():LayerPlacementTypeFactory {
        if (!LayerPlacementTypeFactory.instance_set) {
            LayerPlacementTypeFactory.instance_set = true;
            LayerPlacementTypeFactory.instance_value = new LayerPlacementTypeFactory();
        }
        return LayerPlacementTypeFactory.instance_value;
    }
        public var MAP:LayerPlacementType = null;
        public var LEFT:LayerPlacementType = null;
        public var DOWN:LayerPlacementType = null;
        public var UP:LayerPlacementType = null;
        public var RIGHT:LayerPlacementType = null;

        // Java field initializers run after the base constructor
        private function initFieldsLayerPlacementTypeFactory():void {
    this.MAP = new LayerPlacementType(JInteger.MAX_VALUE);
    this.LEFT = new LayerPlacementType(DirectionFactory.getInstance().LEFT.getValue());
    this.DOWN = new LayerPlacementType(DirectionFactory.getInstance().DOWN.getValue());
    this.UP = new LayerPlacementType(DirectionFactory.getInstance().UP.getValue());
    this.RIGHT = new LayerPlacementType(DirectionFactory.getInstance().RIGHT.getValue());
        }

        public function LayerPlacementTypeFactory() {
            super();
            this.initFieldsLayerPlacementTypeFactory();
        }
    

    public static function getInstance():LayerPlacementTypeFactory {
        return LayerPlacementTypeFactory.instance;
    }
    }
}

