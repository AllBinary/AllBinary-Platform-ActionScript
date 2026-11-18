/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2022 AllBinary 
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
    import org.allbinary.init.crypt.jcehelper.CryptInterface;

    public class NoCrypt implements CryptInterface {
    

    public function encrypt(array:Vector.<int>):Vector.<int> {
        return array;
    }
    

    public function decrypt(array:Vector.<int>):Vector.<int> {
        return array;
    }
    }
}

