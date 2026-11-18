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
package org.allbinary.graphics {
    import org.allbinary.logic.util.cache.BaseCircularPool;
    import org.allbinary.util.CircularIndexUtil;

    public class GPointCircularPool extends BaseCircularPool {
    

    public function GPointCircularPool(size:int) {
        super();
        this.circularIndexUtil = CircularIndexUtil.createInstance(size);
        this.OBJECT_ARRAY = new Vector.<Object>(size);
        for (var index:int = int(size - 1); index >= 0; index--) {
            this.OBJECT_ARRAY[index] = CustomGPoint.getInstance3(0, 0);
        }
    }
    }
}

