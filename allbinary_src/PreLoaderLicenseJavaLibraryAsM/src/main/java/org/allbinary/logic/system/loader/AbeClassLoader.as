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
    import java.io.JFileInputStream;
    import java.io.JIOException;
    import java.util.JMap;
    import org.allbinary.logic.StdUtil;
    import org.allbinary.logic.communication.log.LogBuffer;
    import org.allbinary.logic.communication.log.LogFactory;
    import org.allbinary.logic.communication.log.LogUtil;
    import org.allbinary.logic.io.StreamUtil;
    import org.allbinary.logic.io.path.AbPathData;
    import org.allbinary.logic.string.StringUtil;
    import org.allbinary.logic.system.security.AbCryptUtil;

    public class AbeClassLoader extends ClassLoader {
    private static var classes_value:Map;
    private static var classes_set:Boolean = false;
    private static function get classes():Map {
        if (!AbeClassLoader.classes_set) {
            AbeClassLoader.classes_set = true;
            AbeClassLoader.classes_value = StdUtil.getInstance().createHashMap();
        }
        return AbeClassLoader.classes_value;
    }
    private static var PATH:String = null;
        public var logUtil:LogUtil = null;
        private var abCryptUtil:AbCryptUtil = null;
        private var LOAD_CLASS:String = null;
        private var ENCRYPTED_EXTENSION:String = null;
        private var key:String = null;

        // Java field initializers run after the base constructor
        private function initFieldsAbeClassLoader():void {
    this.logUtil = LogUtil.getInstance();
    this.abCryptUtil = AbCryptUtil.getInstance();
    this.LOAD_CLASS = "loadClass";
    this.ENCRYPTED_EXTENSION = AbPathData.getInstance().EXTENSION_SEP + "abc";
    
        }
    

    public function AbeClassLoader(parent:ClassLoader, key:String) {
        super(parent);
        this.initFieldsAbeClassLoader();
        this.key = key;
        AbeClassLoader.PATH = org.allbinary.globals.URLGLOBALS.getWebappPath() + "WEB-INF/classes/";
    }
    

    public function findLoadedClass1(name:String):String {
        return (AbeClassLoader.classes.get_(name) as String);
    }
    

    public function loadClass(name:String):String {
        return this.loadClass(name, false);
    }
    

    public function loadClass(name:String, resolve:Boolean):String {
        var loadedWith:String = "findLoadedClass1";
        var logBuffer:LogBuffer = new LogBuffer();
        try {
            var myClass:String = this.findLoadedClass1(name);
            if (myClass == null) {
                try {
                    loadedWith = "super.loadClass";
                    var normalClass:String = super.loadClass(name, resolve);
                    if (normalClass != null) {
                        return normalClass;
                    }
                } catch (e:*) {
                    logBuffer.add(LogFactory.getInstance4("Failed to Load Class: " + name + "\nwith: " + loadedWith, this, this.LOAD_CLASS, e));
                } catch (e:*) {
                    logBuffer.add(LogFactory.getInstance4("Failed to Load Class: " + name + "\nwith: " + loadedWith, this, this.LOAD_CLASS, e));
                } catch (e:*) {
                    logBuffer.add(LogFactory.getInstanceF("NoClassDefFoundError Failed Loaded Class: " + name + "\nwith: " + loadedWith, this, this.LOAD_CLASS));
                }
                var classBytes:Vector.<int> = this.loadClassBytesFromFile(name);
                if (classBytes == null) {
                    throw new JException("ClassNotFoundException", "My Bytes not loaded for: " + name + "\nwith: " + "loadClassBytes");
                }
                myClass = this.defineClass(name, classBytes, 0, classBytes.length);
                if (myClass == null) {
                    throw new JException("ClassNotFoundException", "My Class Not Defineable for: " + name + "\nwith: " + "loadClassBytes");
                }
                AbeClassLoader.classes.put(name, myClass);
            } else {
                logBuffer.add(LogFactory.getInstanceF("Already Loaded: " + name + "\nwith: " + loadedWith, this, this.LOAD_CLASS));
            }
            this.resolveClass(myClass);
            return myClass;
        } catch (e:*) {
            if (org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().LOADERERROR)) {
                logBuffer.logAll();
                this.logUtil.put("Failure loading: " + name + "\nwith: " + loadedWith, this, this.LOAD_CLASS, e);
            }
            return null;
        }
    }
    

    private function loadClassBytesFromFile(name:String):Vector.<int> {
        var in_:FileInputStream = null;
        var cname:String = StringUtil.getInstance().EMPTY_STRING;
        try {
            cname = AbeClassLoader.PATH + JString.replace(name, ".".charCodeAt(0), AbPathData.getInstance().SEPARATORCHAR) + this.ENCRYPTED_EXTENSION;
            in_ = new FileInputStream(cname);
            var decrypted:Vector.<int> = this.abCryptUtil.decrypt(in_, this.key);
            return decrypted;
        } catch (e:*) {
            if (org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().LOADERERROR)) {
                this.logUtil.put("(Before LogBuffer Output) Failure loading Encrypted: " + name + " File: " + cname, "AbeClassLoader", "loadClassBytes", e);
            }
            StreamUtil.getInstance().close(in_);
        } catch (e:*) {
            var loadedWith:String = "loadClassBytes";
            if (org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().LOADERERROR)) {
                this.logUtil.put("(Before LogBuffer Output) Failed to Loaded Class: " + name + " File: " + cname + "\nwith: " + loadedWith, this, "loadClassBytes", e);
            }
        } catch (e:*) {
            loadedWith = "loadClassBytes";
            if (org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().LOADERERROR)) {
                this.logUtil.putF("(Before LogBuffer Output) NoClassDefFoundError Failed Loaded Class: " + name + " File: " + cname + "\nwith: " + loadedWith, this, "loadClassBytes");
            }
        }
        return null;
    }
    

    public function oldLoadClass(name:String, resolve:Boolean):String {
        var loadedWith:String = "findLoadedClass1";
        try {
            var myClass:String = this.findLoadedClass1(name);
            if (myClass == null) {
                try {
                    loadedWith = "super.loadClass";
                    var normalClass:String = super.loadClass(name, resolve);
                    if (normalClass != null) {
                        return normalClass;
                    }
                } catch (e:*) {
                    if (org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().LOADER)) {
                        this.logUtil.putF("Failed Loaded Class: " + name + " with: " + loadedWith, this, this.LOAD_CLASS);
                    }
                } catch (e:*) {
                    if (org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().LOADER)) {
                        this.logUtil.putF("Failed Loaded Class: " + name + " with: " + loadedWith, this, this.LOAD_CLASS);
                    }
                } catch (e:*) {
                    if (org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().LOADER)) {
                        this.logUtil.putF("Failed Loaded Class: " + name + " with: " + loadedWith, this, this.LOAD_CLASS);
                    }
                }
                loadedWith = "loadClassBytes";
                var classBytes:Vector.<int> = this.loadClassBytesFromFile(name);
                if (classBytes == null) {
                    throw new JException("ClassNotFoundException", "Bytes not loaded for: " + name);
                }
                myClass = this.defineClass(name, classBytes, 0, classBytes.length);
                if (myClass == null) {
                    throw new JException("ClassNotFoundException", "Class Not Defineable for: " + name);
                }
                AbeClassLoader.classes.put(name, myClass);
            } else {
                if (org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().LOADER)) {
                    this.logUtil.putF("Already Loaded: " + name + " with: " + loadedWith, this, this.LOAD_CLASS);
                }
            }
            this.resolveClass(myClass);
            return myClass;
        } catch (e:*) {
            if (org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().LOADERERROR)) {
                this.logUtil.put("Failure loading: " + name, "AbeClassLoader", this.LOAD_CLASS, e);
            }
            return null;
        }
    }
    }
}

