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
package org.allbinary.logic.system.security.crypt.jcehelper {
    import org.allbinary.TsUtil;
    import org.allbinary.init.crypt.jcehelper.CryptInterface;
    import org.allbinary.logic.NullUtil;
    import org.allbinary.logic.communication.log.PreLogUtil;
    import org.allbinary.logic.java.byteutil.ByteUtil;
    import org.allbinary.string.CommonStrings;

    public class BasicCrypt implements CryptInterface {
        private var byteUtil:ByteUtil = null;
        private var key:Vector.<int> = null;

        // Java field initializers run after the base constructor
        private function initFieldsBasicCrypt():void {
    this.byteUtil = ByteUtil.getInstance();
    
        }
    

    public function BasicCrypt(keyAsString:String) {
        super();
        this.initFieldsBasicCrypt();
        var key:Vector.<int> = NullUtil.getInstance().NULL_BYTE_ARRAY;
        try {
            key = TsUtil.getInstance().getByteArray(keyAsString);
        } catch (e:*) {
            var commonStrings:CommonStrings = CommonStrings.getInstance();
            PreLogUtil.putOE(commonStrings.EXCEPTION, this, "AbCrypt(alg,key)", e);
        }
        this.key = key;
    }
    

    public function encrypt(array:Vector.<int>):Vector.<int> {
        try {
            return this.mutilate(array);
        } catch (e:*) {
            PreLogUtil.putOE("Encrypt Failed", this, "encrypt", e);
            return NullUtil.getInstance().NULL_BYTE_ARRAY;
        }
    }
    

    public function decrypt(array:Vector.<int>):Vector.<int> {
        try {
            return this.mutilate(array);
        } catch (e:*) {
            PreLogUtil.putOE("decrypt Failed", this, "decrypt", e);
            return NullUtil.getInstance().NULL_BYTE_ARRAY;
        }
    }
    

    public function mutilate(array:Vector.<int>):Vector.<int> {
        var value:int = 0;
        for (var index:int = 0; index < this.key.length; index++) {
            value = this.key[index];
            array = this.byteUtil.xor(array, value);
        }
        return array;
    }
    }
}

