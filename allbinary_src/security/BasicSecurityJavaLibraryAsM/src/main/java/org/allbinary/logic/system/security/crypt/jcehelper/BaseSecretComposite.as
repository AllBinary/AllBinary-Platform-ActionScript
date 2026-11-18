/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2025 AllBinary 
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
package org.allbinary.logic.system.security.crypt.jcehelper {
    import org.allbinary.logic.NullUtil;

    public class BaseSecretComposite {
    private static var NULL_SECRET_COMPOSITE_value:BaseSecretComposite;
    private static var NULL_SECRET_COMPOSITE_set:Boolean = false;
    public static function get NULL_SECRET_COMPOSITE():BaseSecretComposite {
        if (!BaseSecretComposite.NULL_SECRET_COMPOSITE_set) {
            BaseSecretComposite.NULL_SECRET_COMPOSITE_set = true;
            BaseSecretComposite.NULL_SECRET_COMPOSITE_value = new BaseSecretComposite();
        }
        return BaseSecretComposite.NULL_SECRET_COMPOSITE_value;
    }
    

    public function encrypt(array:Vector.<int>):Vector.<int> {
        return NullUtil.getInstance().NULL_BYTE_ARRAY;
    }
    

    public function decrypt(array:Vector.<int>):Vector.<int> {
        return NullUtil.getInstance().NULL_BYTE_ARRAY;
    }
    }
}

