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
    import org.allbinary.logic.string.StringMaker;

    public class CacheType {
        private var vendor:String = null;
        private var type:String = null;

        // Java field initializers run after the base constructor
        private function initFieldsCacheType():void {
    
    
        }
    

    public function CacheType(vendor:String, type:String) {
        super();
        this.initFieldsCacheType();
        this.vendor = vendor;
        this.type = type;
    }
    

    public function getVendor():String {
        return this.vendor;
    }
    

    public function getType():String {
        return this.type;
    }
    

    public function toString():String {
        var stringBuffer:StringMaker = new StringMaker();
        stringBuffer.append("CacheType: Vendor: ");
        stringBuffer.append(this.getVendor());
        stringBuffer.append(" Type: ");
        stringBuffer.append(this.getType());
        return stringBuffer.toString();
    }
    }
}

