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
package org.allbinary.logic.io {
    import java.io.JDataInputStream;
    import org.allbinary.logic.communication.log.LogUtil;
    import org.allbinary.string.CommonSeps;
    import org.allbinary.string.CommonStrings;

    public class LineReader {
        public var logUtil:LogUtil = null;
        private var commonStrings:CommonStrings = null;
        private var fileName:String = null;
        private var string:String = null;
        private var index:int = 0;
        private var idFile:AbFileInputStream = null;
        private var idData:JDataInputStream = null;

        // Java field initializers run after the base constructor
        private function initFieldsLineReader():void {
    this.logUtil = LogUtil.getInstance();
    this.commonStrings = CommonStrings.getInstance();
    this.fileName = null;
    this.string = null;
    this.index = 0;
    this.idFile = null;
    this.idData = null;
        }
    

    public function LineReader(fileName:String) {
        super();
        this.initFieldsLineReader();
        try {
            var bytes:Vector.<int> = new Vector.<int>(100000);
            this.fileName = fileName;
            this.idFile = new AbFileInputStream(fileName);
            this.idFile.read(bytes);
            this.string = JString.ofConstructorArgument(bytes);
        } catch (e:*) {
            this.logUtil.put("File: " + fileName, this, "LineReader", e);
            {
            }
        }
    }
    

    public function hasNext():Boolean {
        try {
            var nextIndex:int = JString.indexOf(this.string, CommonSeps.getInstance().NEW_LINE, this.index);
            if (nextIndex == -1) {
                return false;
            }
            return true;
        } catch (e:*) {
            this.logUtil.put(this.commonStrings.EXCEPTION, this, "hasNext", e);
            {
            }
            return false;
        }
    }
    

    public function next():String {
        try {
            var nextIndex:int = JString.indexOf(this.string, CommonSeps.getInstance().NEW_LINE, this.index);
            if (nextIndex == -1) {
                throw new JException("Exception", "next() should have been called first");
            }
            var temp:String = this.string.substring(this.index, nextIndex);
            this.index = int(nextIndex + 1);
            return temp;
        } catch (e:*) {
            this.logUtil.put(this.commonStrings.EXCEPTION, this, "next", e);
            {
            }
            throw e;
        }
    }
    }
}

