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
    import java.io.JDataOutputStream;
    import java.io.JFileOutputStream;
    import org.allbinary.logic.communication.log.LogUtil;
    import org.allbinary.logic.io.file.AbFileSystem;
    import org.allbinary.string.CommonStrings;
    import org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory;
    import org.allbinary.logic.communication.log.config.type.LogConfigTypes;

    public class SmallDelete {
        public var logUtil:LogUtil = null;
        private var commonStrings:CommonStrings = null;
        private var fileName:String = null;
        private var string:String = null;

        // Java field initializers run after the base constructor
        private function initFieldsSmallDelete():void {
    this.logUtil = LogUtil.getInstance();
    this.commonStrings = CommonStrings.getInstance();
    
    
        }
    

    public function SmallDelete(fileName:String) {
        super();
        this.initFieldsSmallDelete();
        this.fileName = fileName;
        this.string = AbFileSystem.getInstance().readAsString(fileName);
    }
    

    public function deleteAtStart(start:String, end:String):Boolean {
        try {
            var beginIndex:int = 0;
            var endIndex:int = 0;
            beginIndex = JString.indexOf(this.string, start);
            endIndex = JString.indexOf(this.string, end);
            if (endIndex > beginIndex && beginIndex >= 0 && endIndex >= 0 && beginIndex < 10 && endIndex < 525) {
                var text:String = this.string.substring(endIndex, this.string.length);
                var idFile:JFileOutputStream = new JFileOutputStream(this.fileName);
                var idOutData:JDataOutputStream = new JDataOutputStream(idFile);
                idOutData.writeBytes(text);
                return true;
            }
            return false;
        } catch (e:*) {
            if (LogConfigTypes.LOGGING.contains(LogConfigTypeFactory.getInstance().IDLOGGING)) {
                this.logUtil.put(this.commonStrings.EXCEPTION, this, "deleteAtStart", e);
            }
            return false;
        }
    }
    

    public function deleteBetween(start:String, end:String, newText:String):Boolean {
        try {
            var beginIndex:int = 0;
            var endIndex:int = 0;
            beginIndex = JString.indexOf(this.string, start);
            endIndex = JString.indexOf(this.string, end);
            if (endIndex > beginIndex && beginIndex >= 0 && endIndex >= 0 && beginIndex < 50 && endIndex < 425) {
                var newStart:String = this.string.substring(0, beginIndex);
                var text:String = this.string.substring(int(endIndex + end.length), this.string.length);
                var idFile:JFileOutputStream = new JFileOutputStream(this.fileName);
                var idOutData:JDataOutputStream = new JDataOutputStream(idFile);
                idOutData.writeBytes(newStart + newText + text);
                return true;
            }
            return false;
        } catch (e:*) {
            if (LogConfigTypes.LOGGING.contains(LogConfigTypeFactory.getInstance().IDLOGGING)) {
                this.logUtil.put(this.commonStrings.EXCEPTION, this, "deleteAtStart", e);
            }
            return false;
        }
    }
    }
}

