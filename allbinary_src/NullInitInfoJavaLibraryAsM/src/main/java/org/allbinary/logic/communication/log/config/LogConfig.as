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
        private var isEnabledField:Boolean = false;
        private var name:String = null;
        private var description:String = null;
        private var path:String = null;
        private var fileName:String = null;

        // Java field initializers run after the base constructor
        private function initFieldsLogConfig():void {
    
    
    
    
    
        }
    

    public function LogConfig(...args) {
        if (args.length == 2 && args[0] === JSuperArgs.ARGS) {
            args = args[1];
        }
        var jsuper:Array = LogConfig.jsuperArgs(args);
        super();
        this.initFieldsLogConfig();
        this.jconstruct(args);
    }

    private static function jsuperArgs(args:Array):Array {
        if (args.length == 4) {
            return LogConfig.jsuper_1(args[0], args[1], args[2], args[3]);
        }
        if (args.length == 1) {
            return LogConfig.jsuper_2(args[0]);
        }
        return [];
    }

    private static function jsuper_1(aName:String, aDescription:String, aPath:String, aFileName:String):Array {
        return [];
    }

    private static function jsuper_2(node:Node):Array {
        return [];
    }

    private function jconstruct(args:Array):void {
        if (args.length == 4) {
            this.jconstruct_1(args[0], args[1], args[2], args[3]);
            return;
        }
        if (args.length == 1) {
            this.jconstruct_2(args[0]);
            return;
        }
    }

    private function jconstruct_1(aName:String, aDescription:String, aPath:String, aFileName:String):void {
        this.isEnabledField = false;
        this.name = aName;
        this.description = aDescription;
        this.path = aPath;
        this.fileName = aFileName;
    }

    private function jconstruct_2(node:Node):void {
        var enabledValueNode:Node = DomSearchHelper.getNode(EntryData.getInstance().ENABLE, node.getChildNodes());
        var isEnabledString:String = DomNodeHelper.getTextNodeValue(enabledValueNode);
        this.isEnabledField = BooleanUtil.getInstance().getFromString(isEnabledString);
        var logConfigData:LogConfigData = LogConfigData.getInstance();
        var nameValueNode:Node = DomSearchHelper.getNode(logConfigData.NAME, node.getChildNodes());
        this.name = DomNodeHelper.getTextNodeValue(nameValueNode);
        var descriptionValueNode:Node = DomSearchHelper.getNode(logConfigData.DESCRIPTION, node.getChildNodes());
        this.description = DomNodeHelper.getTextNodeValue(descriptionValueNode);
        var fileValueNode:Node = DomSearchHelper.getNode(logConfigData.FILE, node.getChildNodes());
        this.fileName = DomNodeHelper.getTextNodeValue(fileValueNode);
    }
    
    

    public function getName():String {
        return this.name;
    }
    

    public function isEnabled():Boolean {
        return this.isEnabledField;
    }
    

    public function enable():void {
        this.isEnabledField = true;
    }
    

    public function disable():void {
        this.isEnabledField = false;
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

