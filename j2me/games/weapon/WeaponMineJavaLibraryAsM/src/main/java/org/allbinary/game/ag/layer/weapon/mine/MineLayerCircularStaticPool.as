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
package org.allbinary.game.ag.layer.weapon.mine {
    import org.allbinary.game.layer.weapon.WeaponLayerCircularPool;
    import org.allbinary.view.ViewPositionFactoryInterface;

    public class MineLayerCircularStaticPool {
    private static var WEAPON_LAYER_CIRCULAR_STATIC_POOL_value:WeaponLayerCircularPool;
    private static var WEAPON_LAYER_CIRCULAR_STATIC_POOL_set:Boolean = false;
    private static function get WEAPON_LAYER_CIRCULAR_STATIC_POOL():WeaponLayerCircularPool {
        if (!MineLayerCircularStaticPool.WEAPON_LAYER_CIRCULAR_STATIC_POOL_set) {
            MineLayerCircularStaticPool.WEAPON_LAYER_CIRCULAR_STATIC_POOL_set = true;
            MineLayerCircularStaticPool.WEAPON_LAYER_CIRCULAR_STATIC_POOL_value = new WeaponLayerCircularPool();
        }
        return MineLayerCircularStaticPool.WEAPON_LAYER_CIRCULAR_STATIC_POOL_value;
    }
    

    public static function init(viewPositionFactoryInterface:ViewPositionFactoryInterface):void {
        MineCountedPickedUpLayerInterfaceFactory.init();
        MineLayerCircularStaticPool.WEAPON_LAYER_CIRCULAR_STATIC_POOL.initAllBinaryLayerCircularPool(new MineLayerFactory(viewPositionFactoryInterface), 20);
    }
    

    public static function getInstance():WeaponLayerCircularPool {
        return MineLayerCircularStaticPool.WEAPON_LAYER_CIRCULAR_STATIC_POOL;
    }
    }
}

