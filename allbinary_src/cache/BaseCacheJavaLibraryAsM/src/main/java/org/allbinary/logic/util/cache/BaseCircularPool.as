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
    import org.allbinary.logic.NullUtil;
    import org.allbinary.util.CircularIndexUtil;

    public class BaseCircularPool {
        public var circularIndexUtil:CircularIndexUtil = null;
        public var OBJECT_ARRAY:Vector.<Object> = null;

        // Java field initializers run after the base constructor
        private function initFieldsBaseCircularPool():void {
    this.circularIndexUtil = CircularIndexUtil.NULL_CIRCULAR_INDEX_UTIL;
    this.OBJECT_ARRAY = NullUtil.getInstance().NULL_OBJECT_ARRAY;
        }

        public function BaseCircularPool() {
            super();
            this.initFieldsBaseCircularPool();
        }
    

    public function getNextInstance():Object {
        var anyType:Object = this.OBJECT_ARRAY[this.circularIndexUtil.getIndex()];
        this.circularIndexUtil.next();
        return anyType;
    }
    

    public function init(allBinaryObjectFactoryInterface:AllBinaryObjectFactoryInterface):void {
        this.circularIndexUtil.setIndex(0);
        var size:int = this.circularIndexUtil.getSize();
        for (var index:int = 0; index < size; index++) {
            this.OBJECT_ARRAY[index] = allBinaryObjectFactoryInterface.getInstance();
        }
    }
    

    public function getInstance1(index:int):Object {
        return this.OBJECT_ARRAY[index];
    }
    }
}

