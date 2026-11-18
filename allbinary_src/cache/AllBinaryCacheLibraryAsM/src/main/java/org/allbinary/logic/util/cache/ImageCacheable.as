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
    import org.allbinary.logic.string.StringUtil;

    public class ImageCacheable {
        private var name:String = null;

        // Java field initializers run after the base constructor
        private function initFieldsImageCacheable():void {
    this.name = StringUtil.getInstance().EMPTY_STRING;
        }
    

    public function ImageCacheable(name:String, anyType:Object) {
        super();
        this.initFieldsImageCacheable();
    }
    

    public function getKey():Object {
        return this.name;
    }
    

    public function toString():String {
        return this.name;
    }
    }
}

