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
package org.allbinary.init.crypt.jcehelper {
    import java.io.JByteArrayInputStream;
    import java.io.JByteArrayOutputStream;
    import java.io.JInputStream;
    import org.allbinary.TsUtil;
    import org.allbinary.logic.communication.log.LogUtil;

    public class BasicCryptUtil {
    private static var instance_value:BasicCryptUtil;
    private static var instance_set:Boolean = false;
    private static function get instance():BasicCryptUtil {
        if (!BasicCryptUtil.instance_set) {
            BasicCryptUtil.instance_set = true;
            BasicCryptUtil.instance_value = new BasicCryptUtil();
        }
        return BasicCryptUtil.instance_value;
    }
        public var logUtil:LogUtil = null;
        private var tsUtil:TsUtil = null;
        private var XML_START:String = null;

        // Java field initializers run after the base constructor
        private function initFieldsBasicCryptUtil():void {
    this.logUtil = LogUtil.getInstance();
    this.tsUtil = TsUtil.getInstance();
    this.XML_START = "<?xml";
        }

        public function BasicCryptUtil() {
            super();
            this.initFieldsBasicCryptUtil();
        }
    

    public static function getInstance():BasicCryptUtil {
        return BasicCryptUtil.instance;
    }
    

    public function getDecryptedInputStream(inputStream:InputStream, cryptInterface:CryptInterface):InputStream {
        var buffer:JByteArrayOutputStream = new JByteArrayOutputStream();
        var ch:int = 0;
        while (true) {
            ch = inputStream.read();
            if (ch == -1) {
                break;
            }
            buffer.write(ch);
        }
        var decrypted:Vector.<int> = cryptInterface.decrypt(buffer.toByteArray());
        var decryptedString:String = decrypted;
        var index:int = JString.indexOf(decryptedString, this.XML_START);
        if (index > 0) {
            decryptedString = decryptedString.substring(index);
        }
        return new ByteArrayInputStream(this.tsUtil.getByteArray(decryptedString));
    }
    }
}

