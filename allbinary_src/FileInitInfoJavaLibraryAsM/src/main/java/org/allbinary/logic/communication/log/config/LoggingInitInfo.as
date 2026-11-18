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
package org.allbinary.logic.communication.log.config {
    import org.allbinary.data.tree.dom.DomSearchHelper;
    import org.allbinary.data.tree.dom.document.DomDocumentHelper;
    import org.allbinary.data.tree.dom.document.XmlDocumentHelper;
    import org.allbinary.globals.PATH_GLOBALS;
    import org.allbinary.globals.URLGLOBALS;
    import org.allbinary.logic.io.AbFileLocalInputStream;
    import org.allbinary.logic.io.file.AbFile;
    import org.allbinary.logic.io.path.AbPath;
    import org.allbinary.util.BasicArrayList;
    import org.allbinary.util.BasicArrayListD;
    import org.w3c.dom.Document;
    import org.w3c.dom.Node;
    import org.w3c.dom.NodeList;

    public class LoggingInitInfo {
    private static const INITFILENAME:String = "logConfig.xml";
    private static var PACKAGE_value:String;
    private static var PACKAGE_set:Boolean = false;
    private static function get PACKAGE():String {
        if (!LoggingInitInfo.PACKAGE_set) {
            LoggingInitInfo.PACKAGE_set = true;
            LoggingInitInfo.PACKAGE_value = PATH_GLOBALS.getInstance().INIT_PATH;
        }
        return LoggingInitInfo.PACKAGE_value;
    }
    private static var logConfigInfoList:BasicArrayList = null;
    private static var hasRead:Boolean = false;
    

    public function LoggingInitInfo() {
        super();
    }
    

    public static function getDoc():Document {
        var path:String = URLGLOBALS.getWebappPath() + LoggingInitInfo.PACKAGE;
        var FILEABPATH:AbPath = new AbPath(path, LoggingInitInfo.INITFILENAME);
        var file:AbFile = AbFile.createAbFileFromAbPath(FILEABPATH);
        var document:Document = DomDocumentHelper.create(new AbFileLocalInputStream(file));
        return document;
    }
    

    public static function write():void {
        try {
            LoggingInitInfo.hasRead = false;
        } catch (e:*) {
            throw e;
        }
    }
    

    private static function read():void {
        try {
            var document:Document = LoggingInitInfo.getDoc();
            var logConfigsNodeList:NodeList = document.getElementsByTagName(LogConfigsData.getInstance().NAME);
            var logConfigsNode:Node = logConfigsNodeList.item(0);
            var logConfigNodeVector:BasicArrayList = DomSearchHelper.getAllNodes(LogConfigData.getInstance().NAME, logConfigsNode.getChildNodes());
            LoggingInitInfo.logConfigInfoList = new BasicArrayListD();
            var size:int = logConfigNodeVector.size();
            for (var i:int = 0; i < size; i++) {
                var node:Node = (logConfigNodeVector.get_(i) as Node);
                var logConfigInfo:LogConfig = new LogConfig(node);
                LoggingInitInfo.logConfigInfoList.add(logConfigInfo);
            }
        } catch (e:*) {
            throw e;
        }
    }
    

    public static function setHasRead(value:Boolean):void {
        LoggingInitInfo.hasRead = value;
    }
    

    private static function updateIfNeeded():void {
        if (!LoggingInitInfo.hasRead) {
            LoggingInitInfo.read();
            LoggingInitInfo.hasRead = true;
            if (LoggingInitInfo.logConfigInfoList == null) {
                throw new JException("Exception", "Read Failed");
            }
        }
    }
    

    public function isValid():Boolean {
        try {
            return true;
        } catch (e:*) {
            return false;
        }
    }
    

    public static function set_(logConfigInfoVector:BasicArrayList):void {
        LoggingInitInfo.logConfigInfoList = logConfigInfoVector;
    }
    

    public static function get_():BasicArrayList {
        LoggingInitInfo.updateIfNeeded();
        return LoggingInitInfo.logConfigInfoList;
    }
    

    public static function getTypeNameList():BasicArrayList {
        LoggingInitInfo.updateIfNeeded();
        var allLogTypeVector:BasicArrayList = new BasicArrayListD();
        var size:int = LoggingInitInfo.logConfigInfoList.size();
        for (var index:int = 0; index < size; index++) {
            var logConfigInfo:LogConfig = (LoggingInitInfo.logConfigInfoList.objectArray[index] as LogConfig);
            var logTypeVector:BasicArrayList = logConfigInfo.getTypeVector();
            if (logConfigInfo.isEnabled()) {
                allLogTypeVector.addAllList(logTypeVector);
            }
        }
        return allLogTypeVector;
    }
    

    public static function getTypeList():BasicArrayList {
        LoggingInitInfo.updateIfNeeded();
        var allLogTypeVector:BasicArrayList = new BasicArrayListD();
        var size:int = LoggingInitInfo.logConfigInfoList.size();
        for (var index:int = 0; index < size; index++) {
            var logConfigInfo:LogConfig = (LoggingInitInfo.logConfigInfoList.objectArray[index] as LogConfig);
            var logTypeVector:BasicArrayList = logConfigInfo.getTypeVector();
            if (logConfigInfo.isEnabled()) {
                allLogTypeVector.addAllList(logTypeVector);
            }
        }
        return allLogTypeVector;
    }
    

    public function getNumberOfLogConfigs():int {
        return LoggingInitInfo.logConfigInfoList.size();
    }
    

    public function toString():String {
        try {
            var document:Document = LoggingInitInfo.getDoc();
            return XmlDocumentHelper.toString1(document);
        } catch (e:*) {
            return "Error";
        }
    }
    }
}

