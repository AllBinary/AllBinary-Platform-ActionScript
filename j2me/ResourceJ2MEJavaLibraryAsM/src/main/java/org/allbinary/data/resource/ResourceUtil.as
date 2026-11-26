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
    import org.allbinary.logic.communication.log.LogUtil;
    import org.allbinary.logic.string.StringMaker;
    import org.allbinary.string.CommonSeps;
    import org.allbinary.string.CommonStrings;
    import java.lang.JInteger;

    //J2ME
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
    private static function set instance(value:ResourceUtil):void {
        ResourceUtil.instance_set = true;
        ResourceUtil.instance_value = value;
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
    

    public function getResourceAsStream(resource:String):JInputStream {
        var inputStream:JInputStream = JClass.getResourceAsStream(JSystem.className(resource), resource);
        if (inputStream == null) {
            inputStream = this.getResourceAsStreamAtStart(resource, 2);
            if (inputStream == null) {
                inputStream = this.getResourceAsStreamAtStart(resource, 1);
                if (inputStream == null) {
                    var stringMaker:StringMaker = new StringMaker();
                    var index:int = JString.lastIndexOf(resource, "/".charCodeAt(0));
                    var resourcePath:String = resource.substring(int(index + 1));
                    inputStream = JClass.getResourceAsStream(JSystem.className(resource), resourcePath);
                    if (inputStream == null) {
                        resourcePath = resource.substring(index);
                        inputStream = JClass.getResourceAsStream(JSystem.className(resource), resourcePath);
                        if (inputStream == null) {
                            var RES:String = "res";
                            resourcePath = stringMaker.append(RES).append(resource.substring(index)).toString();
                            inputStream = JClass.getResourceAsStream(JSystem.className(resource), resourcePath);
                            if (inputStream == null) {
                                stringMaker.delete_(0, stringMaker.length());
                                resourcePath = stringMaker.append("/").append(RES).append(resource.substring(index)).toString();
                                inputStream = JClass.getResourceAsStream(JSystem.className(resource), resourcePath);
                                var COLON:String = CommonSeps.getInstance().COLON;
                                if (inputStream == null) {
                                    stringMaker.delete_(0, stringMaker.length());
                                    resourcePath = stringMaker.append(RES).append(COLON).append(resource.substring(index)).toString();
                                    inputStream = JClass.getResourceAsStream(JSystem.className(resource), resourcePath);
                                    if (inputStream == null) {
                                        stringMaker.delete_(0, stringMaker.length());
                                        resourcePath = stringMaker.append(RES).append(COLON).append(resource.substring(int(index + 1))).toString();
                                        inputStream = JClass.getResourceAsStream(JSystem.className(resource), resourcePath);
                                        if (inputStream == null) {
                                            var RESOURCE_STRING:String = "resource";
                                            stringMaker.delete_(0, stringMaker.length());
                                            resourcePath = stringMaker.append(RESOURCE_STRING).append(COLON).append(resource.substring(index)).toString();
                                            inputStream = JClass.getResourceAsStream(JSystem.className(resource), resourcePath);
                                            if (inputStream == null) {
                                                stringMaker.delete_(0, stringMaker.length());
                                                resourcePath = stringMaker.append(RESOURCE_STRING).append(COLON).append(resource.substring(int(index + 1))).toString();
                                                inputStream = JClass.getResourceAsStream(JSystem.className(resource), resourcePath);
                                                if (inputStream == null) {
                                                    stringMaker.delete_(0, stringMaker.length());
                                                    throw new JException("Exception", stringMaker.append("Unable to obtain: ").append(resource).toString());
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        return inputStream;
    }
    

    private function getResourceAsStreamAtStart(resource:String, startIndex:int):JInputStream {
        var stringMaker:StringMaker = new StringMaker();
        var index:int = JString.indexOf(resource, CommonSeps.getInstance().COLON);
        var resourcePath:String = resource.substring(int(index + startIndex));
        var inputStream:JInputStream = JClass.getResourceAsStream(JSystem.className(resource), resourcePath);
        if (inputStream != null) {
            return inputStream;
        }
        return inputStream;
    }
    

    public function addResource(resource:String, value:*):void {
    }
    }
}

