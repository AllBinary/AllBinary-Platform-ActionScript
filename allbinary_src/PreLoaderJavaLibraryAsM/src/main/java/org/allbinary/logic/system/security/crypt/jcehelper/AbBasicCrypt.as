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
    import java.security.JProvider;
    import java.security.JSecurity;
    import java.security.spec.JKeySpec;
    import javax.crypto.Cipher;
    import javax.crypto.SecretKey;
    import javax.crypto.SecretKeyFactory;
    import org.allbinary.init.crypt.jcehelper.CryptInterface;
    import org.allbinary.logic.communication.log.PreLogUtil;
    import org.allbinary.string.CommonStrings;
    import com.sun.crypto.provider.SunJCE;

    public class AbBasicCrypt implements CryptInterface {
        private var cipher:Cipher = null;
        private var secretKey:SecretKey = null;
        private var algorithm:String = null;
        private var key:Vector.<int> = null;

        // Java field initializers run after the base constructor
        private function initFieldsAbBasicCrypt():void {
    this.cipher = null;
    this.secretKey = null;
    this.algorithm = null;
    this.key = null;
        }
    

    public function AbBasicCrypt(algorithm:String, key:String) {
        super();
        this.initFieldsAbBasicCrypt();
        try {
            this.algorithm = algorithm;
            this.key = JString.getBytes(key);
            this.init();
        } catch (e:*) {
            var commonStrings:CommonStrings = CommonStrings.getInstance();
            PreLogUtil.putOE(commonStrings.EXCEPTION, this, "AbCrypt(alg,key)", e);
        }
    }
    

    private function init():void {
        try {
            var sunJce:JProvider = new SunJCE();
            JSecurity.addProvider(sunJce);
            var keySpec:JKeySpec = KeySpecFactory.getInstance().getInstance2(this.algorithm, this.key);
            var keyFactory:SecretKeyFactory = SecretKeyFactory.getInstance1(this.algorithm);
            this.secretKey = keyFactory.generateSecret(keySpec);
            this.cipher = Cipher.getInstance1(this.algorithm);
        } catch (e:*) {
            var commonStrings:CommonStrings = CommonStrings.getInstance();
            PreLogUtil.putOE("init Failed", this, commonStrings.INIT, e);
        }
    }
    

    public function encrypt(array:Vector.<int>):Vector.<int> {
        try {
            this.cipher.init(Cipher.ENCRYPT_MODE, this.secretKey);
            var ivArray:Vector.<int> = this.secretKey.getEncoded();
            var encrypted:Vector.<int> = this.cipher.doFinal(array);
            var result:Vector.<int> = new Vector.<int>(int(ivArray.length + encrypted.length));
            PreLogUtil.put("ivArray Length: " + String(ivArray.length), this, "encrypt");
            for (var index:int = 0; index < ivArray.length; index++) {
                result[index] = ivArray[index];
            }
            for (index = 0; index < encrypted.length; index++) {
                result[int(index + ivArray.length)] = encrypted[index];
            }
            return result;
        } catch (e:*) {
            PreLogUtil.putOE("Encrypt Failed", this, "encrypt", e);
            return null;
        }
    }
    

    public function decrypt(array:Vector.<int>):Vector.<int> {
        try {
            this.cipher.init(Cipher.DECRYPT_MODE, this.secretKey);
            var ivArray:Vector.<int> = new Vector.<int>(8);
            for (var index:int = 0; index < 8; index++) {
                ivArray[index] = array[index];
            }
            PreLogUtil.put("ivArray Length: " + String(ivArray.length), this, "encrypt");
            var result:Vector.<int> = new Vector.<int>(int(array.length - ivArray.length));
            for (index = ivArray.length; index < array.length; index++) {
                result[int(index - ivArray.length)] = array[index];
            }
            var decrypted:Vector.<int> = this.cipher.doFinal(result);
            return result;
        } catch (e:*) {
            PreLogUtil.putOE("decrypt Failed", this, "decrypt", e);
            return null;
        }
    }
    }
}

