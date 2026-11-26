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
    import java.security.spec.JKeySpec;
    import javax.crypto.spec.DESKeySpec;
    import javax.crypto.spec.DESedeKeySpec;
    import org.allbinary.TsUtil;
    import org.allbinary.logic.communication.log.PreLogUtil;
    import org.allbinary.string.CommonStrings;

    public class KeySpecFactory {
    private static var instance_value:KeySpecFactory;
    private static var instance_set:Boolean = false;
    private static function get instance():KeySpecFactory {
        if (!KeySpecFactory.instance_set) {
            KeySpecFactory.instance_set = true;
            KeySpecFactory.instance_value = new KeySpecFactory();
        }
        return KeySpecFactory.instance_value;
    }
        public var DES:String = null;
        public var DESEDE:String = null;
        public var BLOWFISH:String = null;

        // Java field initializers run after the base constructor
        private function initFieldsKeySpecFactory():void {
    this.DES = "DES";
    this.DESEDE = "DESede";
    this.BLOWFISH = "Blowfish";
        }
    

    public static function getInstance():KeySpecFactory {
        return KeySpecFactory.instance;
    }
    

    public function KeySpecFactory() {
        super();
        this.initFieldsKeySpecFactory();
    }
    

    public function getInstance2(algorithm:String, keyData:Vector.<int>):JKeySpec {
        try {
            var tsUtil:TsUtil = TsUtil.getInstance();
            if (tsUtil.compareTo(algorithm, this.DES) == 0) {
                return new DESKeySpec(keyData);
            } else if (tsUtil.compareTo(algorithm, this.DESEDE) == 0) {
                return new DESedeKeySpec(keyData);
            } else {
                throw new JException("RuntimeException", "");
            }
        } catch (e:*) {
            var commonStrings:CommonStrings = CommonStrings.getInstance();
            PreLogUtil.putOE(commonStrings.EXCEPTION, this, commonStrings.GET_INSTANCE, e);
            throw new JException("RuntimeException", "");
        }
    }
    }
}

