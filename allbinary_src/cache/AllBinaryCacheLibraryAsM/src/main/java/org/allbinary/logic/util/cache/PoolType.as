/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2007 AllBinary 
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

    public class PoolType {
        private var cacheType:CacheType = null;

        // Java field initializers run after the base constructor
        private function initFieldsPoolType():void {
    
        }
    

    public function PoolType(cacheType:CacheType) {
        super();
        this.initFieldsPoolType();
        this.cacheType = cacheType;
    }
    

    public function getCacheType():CacheType {
        return this.cacheType;
    }
    

    public function toString():String {
        var POOL_TYPE:String = "PoolType: ";
        return POOL_TYPE + this.getCacheType().toString();
    }
    }
}

