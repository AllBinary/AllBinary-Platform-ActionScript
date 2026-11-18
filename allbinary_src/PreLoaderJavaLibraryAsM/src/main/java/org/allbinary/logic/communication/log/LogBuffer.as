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
    import org.allbinary.util.BasicArrayList;
    import org.allbinary.util.BasicArrayListD;

    public class LogBuffer {
        public var logUtil:LogUtil = null;
        public var logEntryVector:BasicArrayList = null;

        // Java field initializers run after the base constructor
        private function initFieldsLogBuffer():void {
    this.logUtil = LogUtil.getInstance();
    
        }
    

    public function LogBuffer() {
        super();
        this.initFieldsLogBuffer();
        this.logEntryVector = new BasicArrayListD();
    }
    

    public function add(log:Log):void {
        this.logEntryVector.add(log);
    }
    

    public function logAll():void {
        var size:int = this.logEntryVector.size();
        for (var index:int = 0; index < size; index++) {
            var log:Log = (this.logEntryVector.get_(index) as Log);
            this.logUtil.putL(log);
        }
    }
    }
}

