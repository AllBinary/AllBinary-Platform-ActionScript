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
    import org.allbinary.logic.io.path.AbPathData;

    public class LogData {
        public var MAX:Number = 0;
        public var extension:String = null;
        public var backupFileExt:String = null;
        public var ALLBINARY:String = null;
        public var NAME:String = null;
        public var DESCRIPTION:String = null;

        // Java field initializers run after the base constructor
        private function initFieldsLogData():void {
    this.MAX = 5000000;
    this.extension = "log";
    this.backupFileExt = AbPathData.getInstance().EXTENSION_SEP + "bak" + AbPathData.getInstance().EXTENSION_SEP + "txt";
    this.ALLBINARY = "allbinary";
    this.NAME = "LOG_NAME";
    this.DESCRIPTION = "LOG_DESCRIPTION";
        }

        public function LogData() {
            super();
            this.initFieldsLogData();
        }
    }
}

