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
package org.allbinary.logic.communication.log {
    import org.allbinary.string.CommonStrings;
    import org.allbinary.logic.communication.log.LogFormatUtil;

    public class Log {
        private var logFormatUtil:LogFormatUtil = null;
        private var specialMessage:String = null;
        private var anyType:Object = null;
        private var functionName:String = null;
        private var exception:Object = null;

        // Java field initializers run after the base constructor
        private function initFieldsLog():void {
    this.logFormatUtil = LogFormatUtil.getInstance();
    
    
    
    
        }
    

    public function Log(specialMessage:String, anyType:Object, functionName:String, exception:Object) {
        super();
        this.initFieldsLog();
        this.specialMessage = specialMessage;
        this.anyType = anyType;
        this.functionName = functionName;
        this.exception = exception;
    }
    

    public function getSpecialMessage():String {
        return this.specialMessage;
    }
    

    public function getObject():Object {
        return this.anyType;
    }
    

    public function getFunctionName():String {
        return this.functionName;
    }
    

    public function getThrowable():Object {
        return this.exception;
    }
    

    public function toString():String {
        var className:String = CommonStrings.getInstance().EMPTY;
        var clazz:String = JSystem.className(this.anyType);
        if (clazz != null) {
            className = clazz;
        }
        return this.logFormatUtil.get_(className, this.functionName, this.specialMessage, this.exception);
    }
    }
}

