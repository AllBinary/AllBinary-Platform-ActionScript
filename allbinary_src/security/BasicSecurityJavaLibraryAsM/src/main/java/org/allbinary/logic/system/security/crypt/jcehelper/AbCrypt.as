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
    import java.security.JSecurity;
    import java.security.spec.JKeySpec;
    import org.allbinary.TsUtil;
    import org.allbinary.init.crypt.jcehelper.CryptInterface;
    import org.allbinary.logic.NullUtil;
    import org.allbinary.logic.communication.log.PreLogUtil;
    import org.allbinary.string.CommonStrings;
    import org.bouncycastle.jce.provider.BouncyCastleProvider;

    public class AbCrypt implements CryptInterface {
        private var tsUtil:TsUtil = null;
        private var secretComposite:BaseSecretComposite = null;
        private var algorithm:String = null;

        // Java field initializers run after the base constructor
        private function initFieldsAbCrypt():void {
    this.tsUtil = TsUtil.getInstance();
    this.secretComposite = BaseSecretComposite.NULL_SECRET_COMPOSITE;
    
        }
    

    public function AbCrypt(algorithm:String) {
        super();
        this.initFieldsAbCrypt();
        this.algorithm = algorithm;
    }
    

    public function init(keyAsString:String):void {
        var commonStrings:CommonStrings = CommonStrings.getInstance();
        try {
            try {
                Security.addProvider(new BouncyCastleProvider());
            } catch (e:*) {
                PreLogUtil.putOE(commonStrings.EXCEPTION, this, commonStrings.INIT, e);
            }
            var key:Vector.<int> = this.tsUtil.getByteArray(keyAsString);
            var keySpec:KeySpec = KeySpecFactory.getInstance().getInstance2(this.algorithm, key);
            var keyFactory:SecretKeyFactory = SecretKeyFactory.getInstance1(this.algorithm);
            var secretKey:SecretKey = keyFactory.generateSecret(keySpec);
            var cipher:Cipher = Cipher.getInstance1(this.algorithm);
            this.secretComposite = new SecretComposite(secretKey, cipher, key);
        } catch (e:*) {
            PreLogUtil.putOE("init Failed", this, commonStrings.INIT, e);
        }
    }
    

    public function encrypt(array:Vector.<int>):Vector.<int> {
        try {
            return this.secretComposite.encrypt(array);
        } catch (e:*) {
            PreLogUtil.putOE("Encrypt Failed", this, "encrypt", e);
            return NullUtil.getInstance().NULL_BYTE_ARRAY;
        }
    }
    

    public function decrypt(array:Vector.<int>):Vector.<int> {
        try {
            return this.secretComposite.decrypt(array);
        } catch (e:*) {
            PreLogUtil.putOE("decrypt Failed", this, "decrypt", e);
            return NullUtil.getInstance().NULL_BYTE_ARRAY;
        }
    }
    }
}

