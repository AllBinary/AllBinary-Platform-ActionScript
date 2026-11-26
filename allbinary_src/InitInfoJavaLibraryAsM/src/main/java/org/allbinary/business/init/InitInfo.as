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
package org.allbinary.business.init {
    import java.util.JHashMap;
    import org.allbinary.logic.StdUtil;
    import org.allbinary.logic.communication.log.PreLogUtil;
    import org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory;
    import org.allbinary.logic.communication.log.config.type.LogConfigTypes;
    import org.allbinary.logic.io.path.AbPath;
    import org.allbinary.logic.java.bool.BooleanUtil;
    import org.allbinary.logic.string.StringUtil;

    public class InitInfo {
    private static var instance_value:InitInfo;
    private static var instance_set:Boolean = false;
    private static function get instance():InitInfo {
        if (!InitInfo.instance_set) {
            InitInfo.instance_set = true;
            InitInfo.instance_value = new InitInfo();
        }
        return InitInfo.instance_value;
    }
        public var TESTING:String = null;
        public var MAINPATH:String = null;
        public var TESTHTMLPATH:String = null;
        private var testing:String = null;
        private var mainPath:AbPath = null;
        private var testHtmlPath:AbPath = null;
        private var hasRead:Boolean = false;

        // Java field initializers run after the base constructor
        private function initFieldsInitInfo():void {
    this.TESTING = "TESTING";
    this.MAINPATH = "MAINPATH";
    this.TESTHTMLPATH = "TESTHTMLPATH";
    this.testing = null;
    this.mainPath = null;
    this.testHtmlPath = null;
    this.hasRead = false;
        }
    

    public static function getInstance():InitInfo {
        return InitInfo.instance;
    }
    

    public function InitInfo() {
        super();
        this.initFieldsInitInfo();
    }
    

    public function set_(...args):void {
        if (args.length == 0) {
            this.set__jo0();
            return;
        }
        if (args.length == 1) {
            this.set__jo1(args[0]);
            return;
        }
        throw new JException("IllegalArgumentException", "set");
    }

    private function set__jo0():void {
        try {
            var initInfoEntity:InitInfoEntity = new InitInfoEntity();
            if (LogConfigTypes.LOGGING.contains(LogConfigTypeFactory.getInstance().PRELOADER)) {
                PreLogUtil.put("created entity", "InitInfo", "set()");
            }
            if (!initInfoEntity.is_()) {
                if (LogConfigTypes.LOGGING.contains(LogConfigTypeFactory.getInstance().PRELOADER)) {
                    PreLogUtil.put("adding", "InitInfo", "set()");
                }
                initInfoEntity.add();
            } else {
                if (LogConfigTypes.LOGGING.contains(LogConfigTypeFactory.getInstance().PRELOADER)) {
                    PreLogUtil.put("update", "InitInfo", "set()");
                }
                initInfoEntity.update();
            }
            this.hasRead = false;
        } catch (e:*) {
            if (LogConfigTypes.LOGGING.contains(LogConfigTypeFactory.getInstance().PRELOADERERROR)) {
                PreLogUtil.putOE("error", "InitInfo", "set()", e);
            }
        }
    }

    private function set__jo1(hashMap:JHashMap):void {
        try {
            this.testing = (hashMap.get_(this.TESTING) as String);
            this.mainPath = new AbPath((hashMap.get_(this.MAINPATH) as String), StringUtil.getInstance().EMPTY_STRING);
            this.testHtmlPath = new AbPath((hashMap.get_(this.TESTHTMLPATH) as String), StringUtil.getInstance().EMPTY_STRING);
        } catch (e:*) {
            if (LogConfigTypes.LOGGING.contains(LogConfigTypeFactory.getInstance().PRELOADERERROR)) {
                PreLogUtil.putOE("error", "InitInfo", "set()", e);
            }
        }
    }
    
    

    private function get_():void {
        try {
            this.testing = null;
            this.mainPath = null;
            this.testHtmlPath = null;
            var initInfoEntity:InitInfoEntity = new InitInfoEntity();
            initInfoEntity.get_();
        } catch (e:*) {
            if (LogConfigTypes.LOGGING.contains(LogConfigTypeFactory.getInstance().PRELOADERERROR)) {
                PreLogUtil.putOE("error", "InitInfo", "set()", e);
            }
            return;
        }
    }
    

    public function setHasRead(value:Boolean):void {
        this.hasRead = value;
    }
    

    private function updateIfNeeded():void {
        try {
            if (!this.hasRead) {
                this.hasRead = true;
                this.get_();
            }
        } catch (e:*) {
            if (LogConfigTypes.LOGGING.contains(LogConfigTypeFactory.getInstance().PRELOADERERROR)) {
                PreLogUtil.putOE("error", "InitInfo", "updateIfNeeded()", e);
            }
            return;
        }
    }
    

    public function isTesting():Boolean {
        try {
            this.updateIfNeeded();
            return BooleanUtil.getInstance().getFromString(this.testing);
        } catch (e:*) {
            if (LogConfigTypes.LOGGING.contains(LogConfigTypeFactory.getInstance().PRELOADERERROR)) {
                PreLogUtil.putOE("error", "InitInfo", "updateIfNeeded()", e);
            }
            return false;
        }
    }
    

    public function getTesting():String {
        this.updateIfNeeded();
        return this.testing;
    }
    

    public function getTestHtmlPath():String {
        this.updateIfNeeded();
        if (this.testHtmlPath != null) {
            return this.testHtmlPath.toString();
        } else {
            return null;
        }
    }
    

    public function getMainPath():String {
        this.updateIfNeeded();
        if (this.mainPath != null) {
            return this.mainPath.toString();
        } else {
            return null;
        }
    }
    

    public function setTesting(value:String):void {
        this.testing = value;
    }
    

    public function setTestHtmlPath(value:AbPath):void {
        this.testHtmlPath = value;
    }
    

    public function setMainPath(value:AbPath):void {
        this.mainPath = value;
    }
    

    public function isMainPathValid(abPath:AbPath):Boolean {
        return true;
    }
    

    public function isTestHtmlPathValid(abPath:AbPath):Boolean {
        return true;
    }
    

    public function isTestingValid(testing:String):Boolean {
        return BooleanUtil.getInstance().isStringBoolean(testing);
    }
    

    public function toHashMap():JHashMap {
        var hashMap:JHashMap = StdUtil.getInstance().createHashMap();
        hashMap.put(this.TESTING, this.getTesting());
        hashMap.put(this.MAINPATH, this.getMainPath());
        hashMap.put(this.TESTHTMLPATH, this.getTestHtmlPath());
        return hashMap;
    }
    }
}

