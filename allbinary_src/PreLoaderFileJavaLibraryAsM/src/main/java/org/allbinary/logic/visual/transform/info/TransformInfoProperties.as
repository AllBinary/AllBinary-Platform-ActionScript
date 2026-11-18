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
package org.allbinary.logic.visual.transform.info {

    public class TransformInfoProperties {
        private var name:String = null;
        private var label:String = null;
        private var description:String = null;
        private var objectFileName:String = null;
        private var objectConfigFileName:String = null;
        private var templateFileName:String = null;

        // Java field initializers run after the base constructor
        private function initFieldsTransformInfoProperties():void {
    
    
    
    
    
    
        }
    

    public function TransformInfoProperties(name:String, label:String, description:String, objectFileName:String, objectConfigFileName:String, templateFileName:String) {
        super();
        this.initFieldsTransformInfoProperties();
        this.name = name;
        this.label = label;
        this.description = description;
        this.objectFileName = objectFileName;
        this.templateFileName = templateFileName;
        this.objectConfigFileName = objectConfigFileName;
    }
    

    public function setName(value:String):void {
        this.name = value;
    }
    

    public function setDescription(value:String):void {
        this.description = value;
    }
    

    public function setViewFile(value:String):void {
        this.objectFileName = value;
    }
    

    public function setTemplateFile(value:String):void {
        this.templateFileName = value;
    }
    

    public function setObjectConfigFile(value:String):void {
        this.objectConfigFileName = value;
    }
    

    public function getName():String {
        return this.name;
    }
    

    public function getLabel():String {
        return this.label;
    }
    

    public function getDescription():String {
        return this.description;
    }
    

    public function getViewFile():String {
        return this.objectFileName;
    }
    

    public function getTemplateFile():String {
        return this.templateFileName;
    }
    

    public function getObjectConfigFile():String {
        return this.objectConfigFileName;
    }
    }
}

