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
package org.allbinary.logic.io {
    import java.io.JByteArrayOutputStream;
    import java.io.JCloseable;
    import java.io.JInputStream;
    import java.io.JOutputStream;
    import org.allbinary.logic.communication.log.LogUtil;
    import org.allbinary.string.CommonStrings;

    public class StreamUtil {
    private static var instance_value:StreamUtil;
    private static var instance_set:Boolean = false;
    private static function get instance():StreamUtil {
        if (!StreamUtil.instance_set) {
            StreamUtil.instance_set = true;
            StreamUtil.instance_value = new StreamUtil();
        }
        return StreamUtil.instance_value;
    }
        public var logUtil:LogUtil = null;

        // Java field initializers run after the base constructor
        private function initFieldsStreamUtil():void {
    this.logUtil = LogUtil.getInstance();
        }
    

    public static function getInstance():StreamUtil {
        return StreamUtil.instance;
    }
    

    public function StreamUtil() {
        super();
        this.initFieldsStreamUtil();
    }
    

    public function get_(inputStream:InputStream, outputStream:OutputStream, buffer:Vector.<int>):OutputStream {
        var len:int = 0;
        while (true) {
            len = inputStream.read(buffer, 0, buffer.length);
            if (len != -1) {
            } else {
                break;
            }
            outputStream.write(buffer, 0, len);
        }
        return outputStream;
    }
    

    public function getByteArray(inputStream:InputStream, outputStream2:JByteArrayOutputStream, byteArray:Vector.<int>):Vector.<int> {
        var outputStream:JByteArrayOutputStream = outputStream2;
        try {
            this.get_(inputStream, outputStream, byteArray);
            return outputStream.toByteArray();
        } catch (e:*) {
            throw e;
        } finally {
            this.close(outputStream);
        }
    }
    

    public function close(closeable:Closeable):Boolean {
        try {
            if (closeable != null) {
                closeable.close();
            }
            return true;
        } catch (e:*) {
            var commonStrings:CommonStrings = CommonStrings.getInstance();
            this.logUtil.put(commonStrings.EXCEPTION, this, commonStrings.CLOSE, e);
            return false;
        }
    }
    }
}

