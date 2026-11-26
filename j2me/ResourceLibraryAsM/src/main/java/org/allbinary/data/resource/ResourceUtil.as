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
    import java.io.JInputStream;
    import org.allbinary.logic.NullUtil;
    import org.allbinary.logic.communication.log.LogUtil;
    import org.allbinary.logic.string.StringMaker;
    import org.allbinary.string.CommonSeps;
    import org.allbinary.string.CommonStrings;
    import java.lang.JInteger;
    import java.lang.JThread;
    import java.lang.JClassLoader;

    //J2SE - J2ME
    public class ResourceUtil {
    private static var classLoader_value:Object;
    private static var classLoader_set:Boolean = false;
    private static function get classLoader():Object {
        if (!ResourceUtil.classLoader_set) {
            ResourceUtil.classLoader_set = true;
            ResourceUtil.classLoader_value = NullUtil.getInstance().NULL_OBJECT;
        }
        return ResourceUtil.classLoader_value;
    }
    private static function set classLoader(value:Object):void {
        ResourceUtil.classLoader_set = true;
        ResourceUtil.classLoader_value = value;
    }
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

        // Java field initializers run after the base constructor
        private function initFieldsResourceUtil():void {
    this.logUtil = LogUtil.getInstance();
        }
    

    public static function getInstance():ResourceUtil {
        return ResourceUtil.instance;
    }
    

    public function ResourceUtil() {
        super();
        this.initFieldsResourceUtil();
    }
    

    public function setLoadingPaths(path:String, ext:String):void {
        this.logUtil.putF(CommonStrings.getInstance().NOT_IMPLEMENTED, this, "setLoadingPaths");
    }
    

    public function setClassLoader(classLoader:JClassLoader):void {
        this.logUtil.putF(new StringMaker().append("Resource Loader: ").append(JSystem.className(classLoader)).toString(), this, "setClassLoader");
        ResourceUtil.classLoader = classLoader;
    }
    

    public function getResourceAsStream(resource:String):JInputStream {
        var inputStream:JInputStream = this.getResourceAsStreamAtStart(resource, 2);
        if (inputStream == null) {
            inputStream = this.getResourceAsStreamAtStart(resource, 1);
            if (inputStream == null) {
                throw new JException("Exception", new StringMaker().append("Unable to obtain: ").append(resource).toString());
            }
        }
        return inputStream;
    }
    

    private function getResourceAsStreamAtStart(resource:String, startIndex:int):JInputStream {
        var commonSeps:CommonSeps = CommonSeps.getInstance();
        var index:int = JString.indexOf(resource, commonSeps.COLON);
        var resourcePath:String = resource.substring(int(index + startIndex));
        var inputStream:JInputStream = JClass.getResourceAsStream(JSystem.className(resource), resourcePath);
        if (inputStream != null) {
            return inputStream;
        }
        var classLoader:JClassLoader = (ResourceUtil.classLoader as JClassLoader);
        inputStream = classLoader.getResourceAsStream(resourcePath);
        if (inputStream != null) {
            return inputStream;
        }
        inputStream = JThread.currentThread().getContextClassLoader().getResourceAsStream(resourcePath);
        if (inputStream != null) {
            return inputStream;
        }
        return inputStream;
    }
    

    public function addResource(resource:String, value:*):void {
    }
    }
}

