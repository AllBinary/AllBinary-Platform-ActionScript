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
    import org.allbinary.util.BasicArrayList;
    import org.allbinary.util.BasicArrayListD;

    public class CountedPickedUpLayerInterfaceFactoryPool {
    private static var SINGLETON_value:CountedPickedUpLayerInterfaceFactoryPool;
    private static var SINGLETON_set:Boolean = false;
    private static function get SINGLETON():CountedPickedUpLayerInterfaceFactoryPool {
        if (!CountedPickedUpLayerInterfaceFactoryPool.SINGLETON_set) {
            CountedPickedUpLayerInterfaceFactoryPool.SINGLETON_set = true;
            CountedPickedUpLayerInterfaceFactoryPool.SINGLETON_value = new CountedPickedUpLayerInterfaceFactoryPool();
        }
        return CountedPickedUpLayerInterfaceFactoryPool.SINGLETON_value;
    }
        private var list:BasicArrayList = null;

        // Java field initializers run after the base constructor
        private function initFieldsCountedPickedUpLayerInterfaceFactoryPool():void {
    
        }
    

    public function CountedPickedUpLayerInterfaceFactoryPool() {
        super();
        this.initFieldsCountedPickedUpLayerInterfaceFactoryPool();
        this.list = new BasicArrayListD();
    }
    

    public function getList():BasicArrayList {
        return this.list;
    }
    

    public static function getInstance():CountedPickedUpLayerInterfaceFactoryPool {
        return CountedPickedUpLayerInterfaceFactoryPool.SINGLETON;
    }
    

    public static function init():void {
        CountedPickedUpLayerInterfaceFactoryPool.SINGLETON = new CountedPickedUpLayerInterfaceFactoryPool();
    }
    }
}

