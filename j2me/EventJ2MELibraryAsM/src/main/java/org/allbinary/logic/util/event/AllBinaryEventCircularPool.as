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
package org.allbinary.logic.util.event {
    import org.allbinary.logic.util.cache.BaseCircularPool;
    import org.allbinary.util.CircularIndexUtil;

    public class AllBinaryEventCircularPool extends BaseCircularPool {
    

    public function AllBinaryEventCircularPool(max:int) {
        super();
        this.OBJECT_ARRAY = new Vector.<Object>(max);
        this.circularIndexUtil = CircularIndexUtil.createInstance(max);
    }
    

    public function initAllBinaryEventCircularPool(allBinaryEventObjectFactoryInterface:AllBinaryEventObjectFactoryInterface):void {
        this.circularIndexUtil.setIndex(0);
        var size:int = this.circularIndexUtil.getSize();
        for (var index:int = 0; index < size; index++) {
            this.OBJECT_ARRAY[index] = allBinaryEventObjectFactoryInterface.getInstance();
        }
    }
    }
}

