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
package org.allbinary.logic.system.loader {
    import java.lang.reflect.JConstructor;
    import org.allbinary.logic.communication.log.LogUtil;
    import org.allbinary.logic.java.object.ConstructorUtil;
    import org.allbinary.logic.string.StringMaker;
    import org.allbinary.logic.system.security.AbKeys;
    import org.allbinary.logic.system.security.licensing.AbeClientInformationInterface;
    import org.allbinary.logic.system.security.licensing.LicensingException;
    import org.allbinary.string.CommonSeps;
    import org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory;
    import org.allbinary.logic.communication.log.config.type.LogConfigTypes;
    import java.lang.JClassLoader;

    public class AbeFactory {
    private static var instance_value:AbeFactory;
    private static var instance_set:Boolean = false;
    private static function get instance():AbeFactory {
        if (!AbeFactory.instance_set) {
            AbeFactory.instance_set = true;
            AbeFactory.instance_value = new AbeFactory();
        }
        return AbeFactory.instance_value;
    }
        public var logUtil:LogUtil = null;
        private var useCustomLoader:Boolean = false;

        // Java field initializers run after the base constructor
        private function initFieldsAbeFactory():void {
    this.logUtil = LogUtil.getInstance();
    this.useCustomLoader = false;
        }
    

    public static function getInstance():AbeFactory {
        return AbeFactory.instance;
    }
    

    public function AbeFactory() {
        super();
        this.initFieldsAbeFactory();
    }
    

    public function getInstance2(...args):Object {
        if (args.length == 2) {
            return this.getInstance_jo2(args[0], args[1]);
        }
        throw new JException("IllegalArgumentException", "getInstance");
    }

    private function getInstance_jo2(abeClientInformation:AbeClientInformationInterface, className:String):Object {
        try {
            return JClass.newInstance(this.getClass(abeClientInformation, className));
        } catch (e:*) {
            if (LogConfigTypes.LOGGING.contains(LogConfigTypeFactory.getInstance().LOADERERROR)) {
                this.logUtil.put("Failure for: " + className, this, "getInstance(classname)", e);
            }
            throw e;
        } catch (e:*) {
            if (LogConfigTypes.LOGGING.contains(LogConfigTypeFactory.getInstance().LOADERERROR)) {
                this.logUtil.put("Failure for: " + className, this, "getInstance(classname)", e);
            }
            return null;
        }
    }
    

    public function getInstance4(...args):Object {
        if (args.length == 4) {
            return this.getInstance_jo4(args[0], args[1], args[2], args[3]);
        }
        throw new JException("IllegalArgumentException", "getInstance");
    }

    private function getInstance_jo4(abeClientInformation:AbeClientInformationInterface, className:String, classes:Vector.<String>, params:Vector.<Object>):Object {
        var constructor:JConstructor = null;
        try {
            var parent:JClassLoader = WebappClassLoaderInfo.getLoader();
            if (this.useCustomLoader) {
                var loader:JClassLoader = new AbeClassLoader(parent, AbKeys.getInstance().getKey(abeClientInformation, className));
                myClass = loader.loadClass(className);
                constructor = JClass.getConstructor(myClass, classes);
                return constructor.newInstance(params);
            } else {
                var myClass:String = parent.loadClass(className);
                constructor = JClass.getConstructor(myClass, classes);
                return constructor.newInstance(params);
            }
        } catch (e:*) {
            if (LogConfigTypes.LOGGING.contains(LogConfigTypeFactory.getInstance().LOADERERROR)) {
                var stringBuffer:StringMaker = new StringMaker();
                stringBuffer.append("Failure for: ");
                stringBuffer.append(className);
                stringBuffer.append(CommonSeps.getInstance().SPACE);
                stringBuffer.append(ConstructorUtil.view(constructor, CommonSeps.getInstance().NEW_LINE));
                this.logUtil.put(stringBuffer.toString(), this, "getInstance(className,params)", e);
            }
            throw e;
        } catch (e:*) {
            if (LogConfigTypes.LOGGING.contains(LogConfigTypeFactory.getInstance().LOADERERROR)) {
                stringBuffer = new StringMaker();
                stringBuffer.append("Failure for: ");
                stringBuffer.append(className);
                stringBuffer.append(CommonSeps.getInstance().SPACE);
                stringBuffer.append(ConstructorUtil.view(constructor, CommonSeps.getInstance().NEW_LINE));
                this.logUtil.put(stringBuffer.toString(), this, "getInstance(className,params)", e);
            }
            return null;
        }
    }
    

    public function getClass(abeClientInformation:AbeClientInformationInterface, className:String):String {
        try {
            var parent:JClassLoader = WebappClassLoaderInfo.getLoader();
            if (this.useCustomLoader) {
                var loader:JClassLoader = new AbeClassLoader(parent, AbKeys.getInstance().getKey(abeClientInformation, className));
                c = loader.loadClass(className);
                return c;
            } else {
                var c:String = parent.loadClass(className);
                return c;
            }
        } catch (e:*) {
            if (LogConfigTypes.LOGGING.contains(LogConfigTypeFactory.getInstance().LOADERERROR)) {
                this.logUtil.put("Failure for: " + className, this, "getClass(className)", e);
            }
            throw e;
        } catch (e:*) {
            if (LogConfigTypes.LOGGING.contains(LogConfigTypeFactory.getInstance().LOADERERROR)) {
                this.logUtil.put("Failure for: " + className, this, "getClass(className)", e);
            }
            return null;
        }
    }
    }
}

