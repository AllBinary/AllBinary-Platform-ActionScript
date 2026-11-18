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
    import org.allbinary.logic.java.bool.BooleanUtil;
    import org.allbinary.util.BasicArrayList;
    import org.allbinary.util.BasicArrayListD;
    import org.w3c.dom.Node;

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
    

    public function getTypeVector():BasicArrayList {
        var logKeyVector:BasicArrayList = new BasicArrayListD();
        return logKeyVector;
    }
    }
}

