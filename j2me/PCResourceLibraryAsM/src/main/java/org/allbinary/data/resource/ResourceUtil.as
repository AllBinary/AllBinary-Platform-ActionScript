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
package org.allbinary.data.resource {
    import java.io.JByteArrayInputStream;
    import java.io.JByteArrayOutputStream;
    import java.io.JFileInputStream;
    import java.io.JInputStream;
    import org.allbinary.logic.communication.log.LogUtil;
    import org.allbinary.logic.io.StreamUtil;
    import org.allbinary.logic.string.StringMaker;
    import org.allbinary.logic.string.StringUtil;
    import java.lang.JInteger;

    //J2SE - PC
    public class ResourceUtil {
    private static var instance_value:ResourceUtil;
    private static var instance_set:Boolean = false;
    private static function get instance():ResourceUtil {
        if (!ResourceUtil.instance_set) {
            ResourceUtil.instance_set = true;
            ResourceUtil.instance_value = new ResourceUtil();
        }
        return ResourceUtil.instance_value;
    }
        public var logUtil:LogUtil = null;
        private var path:String = null;
        private var ext:String = null;

        // Java field initializers run after the base constructor
        private function initFieldsResourceUtil():void {
    this.logUtil = LogUtil.getInstance();
    this.path = StringUtil.getInstance().EMPTY_STRING;
    this.ext = StringUtil.getInstance().EMPTY_STRING;
        }
    

    public static function getInstance():ResourceUtil {
        return ResourceUtil.instance;
    }
    

    public function ResourceUtil() {
        super();
        this.initFieldsResourceUtil();
    }
    

    public function setLoadingPaths(path:String, ext:String):void {
        this.path = path;
        this.ext = ext;
    }
    

    public function setClassLoader(classLoader:ClassLoader):void {
    }
    

    public function getResourceAsStream(resource:String):InputStream {
        var inputStream:InputStream = this.getResourceAsStreamAtStart(resource, 2);
        if (inputStream == null) {
            inputStream = this.getResourceAsStreamAtStart(resource, 1);
            if (inputStream == null) {
                throw new JException("Exception", new StringMaker().append("Unable to obtain: ").append(resource).toString());
            }
        }
        return inputStream;
    }
    

    private function getResourceAsStreamAtStart(resource:String, startIndex:int):InputStream {
        var inputStream:InputStream = new FileInputStream(new StringMaker().append(this.path).append(resource).append(this.ext).toString());
        if (inputStream != null) {
            var byteArray:Vector.<int> = new Vector.<int>(inputStream.available());
            StreamUtil.getInstance().getByteArray(inputStream, new JByteArrayOutputStream(), byteArray);
            return new ByteArrayInputStream(byteArray);
        }
        return inputStream;
    }
    

    public function addResource(resource:String, value:*):void {
    }
    }
}

