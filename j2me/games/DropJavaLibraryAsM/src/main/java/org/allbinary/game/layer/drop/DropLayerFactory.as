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
package org.allbinary.game.layer.drop {
    import org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactoryInterface;
    import org.allbinary.util.BasicArrayList;
    import org.allbinary.util.BasicArrayListD;
    import org.allbinary.util.BasicArrayListUtil;

    public class DropLayerFactory {
    private static var DROP_LAYER_FACTORY_value:DropLayerFactory;
    private static var DROP_LAYER_FACTORY_set:Boolean = false;
    private static function get DROP_LAYER_FACTORY():DropLayerFactory {
        if (!DropLayerFactory.DROP_LAYER_FACTORY_set) {
            DropLayerFactory.DROP_LAYER_FACTORY_set = true;
            DropLayerFactory.DROP_LAYER_FACTORY_value = new DropLayerFactory();
        }
        return DropLayerFactory.DROP_LAYER_FACTORY_value;
    }
        private var list:BasicArrayList = null;
        private var basicArrayListUtil:BasicArrayListUtil = null;

        // Java field initializers run after the base constructor
        private function initFieldsDropLayerFactory():void {
    this.list = new BasicArrayListD();
    this.basicArrayListUtil = BasicArrayListUtil.getInstance();
        }
    

    public function DropLayerFactory() {
        super();
        this.initFieldsDropLayerFactory();
    }
    

    public function clear():void {
        this.list.clear();
    }
    

    public static function getInstance():DropLayerFactory {
        return DropLayerFactory.DROP_LAYER_FACTORY;
    }
    

    public function getSize():int {
        return this.list.size();
    }
    

    public function getRandomInstance():PickedUpLayerInterfaceFactoryInterface {
        return (this.basicArrayListUtil.getRandom(this.list) as PickedUpLayerInterfaceFactoryInterface);
    }
    

    public function add(layerInterfaceFactoryInterface:PickedUpLayerInterfaceFactoryInterface):void {
        this.list.add(layerInterfaceFactoryInterface);
    }
    

    public function getList():BasicArrayList {
        return this.list;
    }
    }
}

