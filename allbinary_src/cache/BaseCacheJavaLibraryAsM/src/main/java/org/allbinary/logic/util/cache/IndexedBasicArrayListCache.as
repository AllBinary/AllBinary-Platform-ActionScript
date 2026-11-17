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

    public class IndexedBasicArrayListCache extends BaseBasicArrayListCache implements CacheInterface {
        public var commonStrings:CommonStrings = null;
        private var size:int = 0;
        public var index:int = 0;

        // Java field initializers run after the base constructor
        private function initFieldsIndexedBasicArrayListCache():void {
    this.commonStrings = CommonStrings.getInstance();
    this.size = 0;
    this.index = 0;
        }
    

    public static function createCache(size:int):IndexedBasicArrayListCache {
        var indexedBasicArrayListCache:IndexedBasicArrayListCache = new IndexedBasicArrayListCache();
        indexedBasicArrayListCache.init(size);
        return indexedBasicArrayListCache;
    }
    

    public function IndexedBasicArrayListCache() {
        super();
        this.initFieldsIndexedBasicArrayListCache();
    }
    

    public function init(size:int):void {
        if (this.size < size) {
            this.list.ensureCapacity(size);
            for (var index:int = int(size - 1); index >= this.size; index--) {
                this.addDefault();
            }
            this.size = size;
        }
    }
    

    public function getAt(index:int):Object {
        return this.list.objectArray[index];
    }
    

    public function addDefault():void {
    }
    

    public function addObject(anyType:Object):void {
        this.list.add(anyType);
    }
    

    public function add(cacheableInterface:CacheableInterface):void {
        this.list.add(cacheableInterface);
    }
    

    public function addArray(cacheableInterfaces:Vector.<CacheableInterface>):void {
        throw new JException("Exception", "No Imple");
    }
    

    public function clear():void {
        this.index = 0;
    }
    }
}

