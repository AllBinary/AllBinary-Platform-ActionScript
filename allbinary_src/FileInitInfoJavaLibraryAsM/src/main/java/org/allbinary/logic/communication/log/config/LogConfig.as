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
    import org.allbinary.business.entry.EntryData;
    import org.allbinary.data.tree.dom.DomNodeHelper;
    import org.allbinary.data.tree.dom.DomSearchHelper;
    import org.allbinary.data.tree.dom.document.DomDocumentHelper;
    import org.allbinary.globals.PATH_GLOBALS;
    import org.allbinary.globals.URLGLOBALS;
    import org.allbinary.logic.communication.log.config.type.LogConfigType;
    import org.allbinary.logic.communication.log.config.type.LogConfigTypeData;
    import org.allbinary.logic.communication.log.config.type.LogConfigTypes;
    import org.allbinary.logic.communication.log.config.type.LogConfigTypesData;
    import org.allbinary.logic.io.AbFileLocalInputStream;
    import org.allbinary.logic.io.file.AbFile;
    import org.allbinary.logic.java.bool.BooleanUtil;
    import org.allbinary.logic.string.StringMaker;
    import org.allbinary.util.BasicArrayList;
    import org.allbinary.util.BasicArrayListD;
    import org.w3c.dom.Document;
    import org.w3c.dom.Node;
    import org.w3c.dom.NodeList;

    public class LogConfig {
        private var isEnabled:Boolean = false;
        private var name:String = null;
        private var description:String = null;
        private var path:String = null;
        private var fileName:String = null;

        // Java field initializers run after the base constructor
        private function initFieldsLogConfig():void {
    
    
    
    
    
        }
    

    public function LogConfig(...args) {
        super();
        this.initFieldsLogConfig();
        this.jconstruct(args);
    }

    private function jconstruct(args:Array):void {
        if (args.length == 4) {
            (function(aName:String, aDescription:String, aPath:String, aFileName:String):void {
        this.isEnabled = false;
        this.name = aName;
        this.description = aDescription;
        this.path = aPath;
        this.fileName = aFileName;
            }).apply(this, args);
            return;
        }
        if (args.length == 1) {
            (function(node:Node):void {
        var enabledValueNode:Node = DomSearchHelper.getNode(EntryData.getInstance().ENABLE, node.getChildNodes());
        var isEnabledString:String = DomNodeHelper.getTextNodeValue(enabledValueNode);
        this.isEnabled = BooleanUtil.getInstance().getFromString(isEnabledString);
        var logConfigData:LogConfigData = LogConfigData.getInstance();
        var nameValueNode:Node = DomSearchHelper.getNode(logConfigData.NAME, node.getChildNodes());
        this.name = DomNodeHelper.getTextNodeValue(nameValueNode);
        var descriptionValueNode:Node = DomSearchHelper.getNode(logConfigData.DESCRIPTION, node.getChildNodes());
        this.description = DomNodeHelper.getTextNodeValue(descriptionValueNode);
        var fileValueNode:Node = DomSearchHelper.getNode(logConfigData.FILE, node.getChildNodes());
        this.fileName = DomNodeHelper.getTextNodeValue(fileValueNode);
            }).apply(this, args);
            return;
        }
    }
    
    

    public function getName():String {
        return this.name;
    }
    

    public function isEnabled():Boolean {
        return this.isEnabled;
    }
    

    public function enable():void {
        this.isEnabled = true;
    }
    

    public function disable():void {
        this.isEnabled = false;
    }
    

    public function getDescription():String {
        return this.description;
    }
    

    public function getFileName():String {
        return this.fileName;
    }
    

    public function setName(value:String):void {
        this.name = value;
    }
    

    public function setDescription(value:String):void {
        this.description = value;
    }
    

    public function setPath(value:String):void {
        this.path = value;
    }
    

    public function setFileName(value:String):void {
        this.fileName = value;
    }
    

    private function getDoc():Document {
        var stringBuffer:StringMaker = new StringMaker();
        stringBuffer.append(URLGLOBALS.getWebappPath());
        stringBuffer.append(PATH_GLOBALS.getInstance().INIT_PATH);
        stringBuffer.append(this.getFileName());
        var file:AbFile = AbFile.createAbFile(stringBuffer.toString());
        var document:Document = DomDocumentHelper.create(new AbFileLocalInputStream(file));
        return document;
    }
    

    public function getTypeVector():BasicArrayList {
        var logKeyVector:BasicArrayList = new BasicArrayListD();
        var document:Document = this.getDoc();
        var logConfigTypesNodeList:NodeList = document.getElementsByTagName(LogConfigTypesData.getInstance().NAME);
        var logConfigTypesNode:Node = logConfigTypesNodeList.item(0);
        var logConfigTypeNodeVector:BasicArrayList = DomSearchHelper.getAllNodes(LogConfigTypeData.getInstance().NAME, logConfigTypesNode.getChildNodes());
        var size:int = logConfigTypeNodeVector.size();
        for (var i:int = 0; i < size; i++) {
            var node:Node = (logConfigTypeNodeVector.get_(i) as Node);
            var logType:LogConfigType = LogConfigTypes.getInstance1(node);
            logKeyVector.add(logType);
        }
        return logKeyVector;
    }
    }
}

