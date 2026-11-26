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
package org.allbinary.logic.communication.log.config.type {
    import org.allbinary.data.tree.dom.DomNodeHelper;
    import org.allbinary.data.tree.dom.DomSearchHelper;
    import org.allbinary.logic.communication.log.PreLogUtil;
    import org.allbinary.logic.communication.log.config.LoggingInitInfo;
    import org.allbinary.util.BasicArrayList;
    import org.allbinary.util.BasicArrayListD;
    import org.w3c.dom.Node;

    public class LogConfigTypes {
    public static const JSP_ERROR_NO_FUNCTION:String = "in JSP Not In Function";
    private static var LOGGING_value:BasicArrayList;
    private static var LOGGING_set:Boolean = false;
    public static function get LOGGING():BasicArrayList {
        if (!LogConfigTypes.LOGGING_set) {
            LogConfigTypes.LOGGING_set = true;
            LogConfigTypes.LOGGING_value = new BasicArrayListD();
        }
        return LogConfigTypes.LOGGING_value;
    }
    public static function set LOGGING(value:BasicArrayList):void {
        LogConfigTypes.LOGGING_set = true;
        LogConfigTypes.LOGGING_value = value;
    }
    

    // Java static initializer: runs when the class is loaded
    {
        LogConfigTypes.init();
    }
    

    public function LogConfigTypes() {
        super();
    }
    

    public static function init():void {
        try {
            PreLogUtil.put("Initialize LogconfigTypes", "LogConfigTypes", "init()");
            LogConfigTypeFactory.getInstance();
            var loggingInitInfo:LoggingInitInfo = new LoggingInitInfo();
            var logConfigTypeVector:BasicArrayList = LoggingInitInfo.getTypeList();
            PreLogUtil.put("Number Of Log Configs: " + String(loggingInitInfo.getNumberOfLogConfigs()), "LogConfigTypes", "init()");
            PreLogUtil.put("Number Of Log Config Type Names: " + String(logConfigTypeVector.size()), "LogConfigTypes", "init()");
            LogConfigTypes.LOGGING.addAllList(logConfigTypeVector);
            LogConfigTypes.LOGGING.add(LogConfigTypeFactory.getInstance().NETBEANS_MODULE);
        } catch (e:*) {
            PreLogUtil.putSE("Unable to initialize LogConfigTypes", "LogConfigTypes", "init()", e);
        }
    }
    

    public static function getInstance1(node:Node):LogConfigType {
        var nameValueNode:Node = DomSearchHelper.getNode(LogConfigTypeData.getInstance().NAME, node.getChildNodes());
        var name:String = DomNodeHelper.getTextNodeValue(nameValueNode);
        var descriptionValueNode:Node = DomSearchHelper.getNodeNoThrow(LogConfigTypeData.getInstance().DESCRIPTION, node.getChildNodes());
        if (descriptionValueNode != null) {
            var description:String = DomNodeHelper.getTextNodeValue(descriptionValueNode);
        }
        var availableLogConfigTypes:BasicArrayList = LogConfigType.availableLogConfigTypes;
        var size:int = availableLogConfigTypes.size();
        var logConfigType:LogConfigType = null;
        for (var index:int = 0; index < size; index++) {
            logConfigType = (availableLogConfigTypes.get_(index) as LogConfigType);
            if (JSystem.compareToObject(logConfigType.getName(), name) == 0) {
                return logConfigType;
            }
        }
        throw new JException("Exception", "No Such LogConfigType: " + name);
    }
    }
}

