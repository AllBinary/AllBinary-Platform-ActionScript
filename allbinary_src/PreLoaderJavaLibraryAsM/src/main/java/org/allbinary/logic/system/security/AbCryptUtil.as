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
package org.allbinary.logic.system.security {
    import java.io.JByteArrayOutputStream;
    import java.io.JInputStream;
    import org.allbinary.logic.io.StreamUtil;
    import org.allbinary.logic.system.security.crypt.jcehelper.AbCrypt;
    import org.allbinary.logic.system.security.crypt.jcehelper.KeySpecFactory;

    public class AbCryptUtil {
    private static var instance_value:AbCryptUtil;
    private static var instance_set:Boolean = false;
    private static function get instance():AbCryptUtil {
        if (!AbCryptUtil.instance_set) {
            AbCryptUtil.instance_set = true;
            AbCryptUtil.instance_value = new AbCryptUtil();
        }
        return AbCryptUtil.instance_value;
    }
        private var streamUtil:StreamUtil = null;

        // Java field initializers run after the base constructor
        private function initFieldsAbCryptUtil():void {
    this.streamUtil = StreamUtil.getInstance();
        }
    

    public static function getInstance():AbCryptUtil {
        return AbCryptUtil.instance;
    }
    

    public function AbCryptUtil() {
        super();
        this.initFieldsAbCryptUtil();
    }
    

    public function decrypt(inputStream:InputStream, key:String):Vector.<int> {
        var outputStream:JByteArrayOutputStream = null;
        try {
            outputStream = (this.streamUtil.get_(inputStream, new JByteArrayOutputStream(), new Vector.<int>(16384)) as JByteArrayOutputStream);
            var abCrypt:AbCrypt = new AbCrypt(KeySpecFactory.getInstance().DESEDE);
            abCrypt.init(key);
            return abCrypt.decrypt(outputStream.toByteArray());
        } finally {
            this.streamUtil.close(outputStream);
            this.streamUtil.close(inputStream);
        }
    }
    }
}

