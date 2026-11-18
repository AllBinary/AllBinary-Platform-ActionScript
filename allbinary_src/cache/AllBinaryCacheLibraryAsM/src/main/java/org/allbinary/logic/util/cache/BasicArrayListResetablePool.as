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
package org.allbinary.logic.util.cache {

    public class BasicArrayListResetablePool extends AbstractArrayListPool {
    

    public function BasicArrayListResetablePool(cacheableInterfaceFactoryInterface:CacheableInterfaceFactoryInterface) {
        super(cacheableInterfaceFactoryInterface);
    }
    

    override public function clear():void {
    }
    

    override public function remove(key:Object):CacheableInterface {
        var size:int = this.buffers.size();
        if (size > 0) {
            return (this.buffers.removeAt(int(size - 1)) as CacheableInterface);
        } else {
            return this.cacheableInterfaceFactoryInterface.getInstance1(key);
        }
    }
    }
}

