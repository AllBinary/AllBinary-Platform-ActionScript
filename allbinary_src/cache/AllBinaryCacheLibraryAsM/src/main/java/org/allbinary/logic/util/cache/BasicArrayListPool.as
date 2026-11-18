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
    import org.allbinary.util.BasicArrayList;

    public class BasicArrayListPool extends AbstractArrayListPool {
    

    public function BasicArrayListPool(cacheableInterfaceFactoryInterface:CacheableInterfaceFactoryInterface) {
        super(cacheableInterfaceFactoryInterface);
    }
    

    override public function clear():void {
        this.buffers.clear();
    }
    

    override public function remove(key:Object):CacheableInterface {
        var size:int = this.buffers.size();
        if (size > 0) {
            return (this.buffers.removeAt(int(size - 1)) as CacheableInterface);
        } else {
            return this.cacheableInterfaceFactoryInterface.getInstance1(key);
        }
    }
    

    public function addAll(usedList:BasicArrayList):void {
        for (var index:int = usedList.size(); --index >= 0; ) {
            var anyType:CacheableInterface = (usedList.objectArray[index] as CacheableInterface);
            this.add(anyType);
        }
        usedList.clear();
    }
    

    public function releaseUsedBackToPool(usedList:BasicArrayList):void {
        for (var index:int = usedList.size(); --index >= 0; ) {
            var list:BasicArrayListCacheable = (usedList.objectArray[index] as BasicArrayListCacheable);
            if (list.size() == 0) {
                usedList.removeAt(index);
                this.add(list);
            }
        }
    }
    }
}

