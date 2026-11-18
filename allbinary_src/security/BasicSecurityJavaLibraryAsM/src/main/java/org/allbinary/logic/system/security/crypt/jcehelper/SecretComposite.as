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
    import org.allbinary.logic.java.byteutil.ByteUtil;

    public class SecretComposite extends BaseSecretComposite {
        private var byteUtil:ByteUtil = null;
        private var cipher:Cipher = null;
        private var secretKey:SecretKey = null;
        private var key:Vector.<int> = null;

        // Java field initializers run after the base constructor
        private function initFieldsSecretComposite():void {
    this.byteUtil = ByteUtil.getInstance();
    
    
    
        }
    

    public function SecretComposite(secretKey:SecretKey, cipher:Cipher, key:Vector.<int>) {
        super();
        this.initFieldsSecretComposite();
        this.secretKey = secretKey;
        this.cipher = cipher;
        this.key = key;
    }
    

    override public function encrypt(array:Vector.<int>):Vector.<int> {
        array = this.mutilate(array);
        this.cipher.init(Cipher.ENCRYPT_MODE, this.secretKey);
        return this.cipher.doFinal(array);
    }
    

    override public function decrypt(array:Vector.<int>):Vector.<int> {
        this.cipher.init(Cipher.DECRYPT_MODE, this.secretKey);
        return this.mutilate(this.cipher.doFinal(array));
    }
    

    private function mutilate(array:Vector.<int>):Vector.<int> {
        for (var index:int = 0; index < this.key.length; index++) {
            var value:int = this.key[index];
            if (value < 8 && value > 0) {
                array = this.byteUtil.xorByte(array, value);
            }
        }
        return array;
    }
    }
}

