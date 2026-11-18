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
    import org.allbinary.layer.AllBinaryLayerCircularPool;

    public class PickupLayerCircularStaticPool extends AllBinaryLayerCircularPool {
    private static var SINGLETON_value:PickupLayerCircularStaticPool;
    private static var SINGLETON_set:Boolean = false;
    private static function get SINGLETON():PickupLayerCircularStaticPool {
        if (!PickupLayerCircularStaticPool.SINGLETON_set) {
            PickupLayerCircularStaticPool.SINGLETON_set = true;
            PickupLayerCircularStaticPool.SINGLETON_value = new PickupLayerCircularStaticPool();
        }
        return PickupLayerCircularStaticPool.SINGLETON_value;
    }
    

    public function PickupLayerCircularStaticPool() {
        super();
    }
    

    public static function getInstance():PickupLayerCircularStaticPool {
        return PickupLayerCircularStaticPool.SINGLETON;
    }
    

    public function getInstanceXYZ(pickedUpLayerInterfaceFactoryInterface:PickedUpLayerInterfaceFactoryInterface, x:int, y:int, z:int):PickedUpLayerInterface {
        var pickupLayer:PickupLayer = (this.getNextInstance() as PickupLayer);
        pickupLayer.initXYZ(x, y, z);
        pickupLayer.init(pickedUpLayerInterfaceFactoryInterface, pickedUpLayerInterfaceFactoryInterface.getAnimationInterface());
        return pickupLayer;
    }
    }
}

