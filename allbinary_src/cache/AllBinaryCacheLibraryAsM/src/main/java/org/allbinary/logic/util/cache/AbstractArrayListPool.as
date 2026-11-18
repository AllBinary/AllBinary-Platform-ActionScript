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
    import org.allbinary.string.CommonStrings;
    import org.allbinary.util.BasicArrayList;
    import org.allbinary.util.BasicArrayListD;

    public class AbstractArrayListPool implements PoolInterface {
        public var commonStrings:CommonStrings = null;
        public var buffers:BasicArrayList = null;
        public var cacheableInterfaceFactoryInterface:CacheableInterfaceFactoryInterface = null;

        // Java field initializers run after the base constructor
        private function initFieldsAbstractArrayListPool():void {
    this.commonStrings = CommonStrings.getInstance();
    this.buffers = new BasicArrayListD();
    
        }
    

    public function AbstractArrayListPool(cacheableInterfaceFactoryInterface:CacheableInterfaceFactoryInterface) {
        super();
        this.initFieldsAbstractArrayListPool();
        this.cacheableInterfaceFactoryInterface = cacheableInterfaceFactoryInterface;
    }
    

    public function clear():void {
        throw new JException("Exception", this.commonStrings.NOT_IMPLEMENTED);
    }
    

    public function remove(key:Object):CacheableInterface {
        throw new JException("Exception", this.commonStrings.NOT_IMPLEMENTED);
    }
    

    public function add(cacheableInterface:CacheableInterface):void {
        this.buffers.add(cacheableInterface);
    }
    

    public function addArray(cacheableInterfaces:Vector.<CacheableInterface>):void {
        for (var index:int = 0; index < cacheableInterfaces.length; index++) {
            this.buffers.add(cacheableInterfaces[index]);
        }
    }
    }
}

