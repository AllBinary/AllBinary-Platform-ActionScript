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
package org.allbinary.game.tracking {
    import org.allbinary.layer.AllBinaryLayerCircularPool;

    public class GenericTrackingLayerCircularStaticPool extends AllBinaryLayerCircularPool {
    private static var SINGLETON_value:GenericTrackingLayerCircularStaticPool;
    private static var SINGLETON_set:Boolean = false;
    private static function get SINGLETON():GenericTrackingLayerCircularStaticPool {
        if (!GenericTrackingLayerCircularStaticPool.SINGLETON_set) {
            GenericTrackingLayerCircularStaticPool.SINGLETON_set = true;
            GenericTrackingLayerCircularStaticPool.SINGLETON_value = new GenericTrackingLayerCircularStaticPool();
        }
        return GenericTrackingLayerCircularStaticPool.SINGLETON_value;
    }
    private static function set SINGLETON(value:GenericTrackingLayerCircularStaticPool):void {
        GenericTrackingLayerCircularStaticPool.SINGLETON_set = true;
        GenericTrackingLayerCircularStaticPool.SINGLETON_value = value;
    }
    

    public function GenericTrackingLayerCircularStaticPool() {
        super();
    }
    

    public static function getInstance():GenericTrackingLayerCircularStaticPool {
        return GenericTrackingLayerCircularStaticPool.SINGLETON;
    }
    }
}

