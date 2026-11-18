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

    public class SmallInsert {
        public var logUtil:LogUtil = null;
        private var commonStrings:CommonStrings = null;
        private var fileName:String = null;
        private var string:String = null;

        // Java field initializers run after the base constructor
        private function initFieldsSmallInsert():void {
    this.logUtil = LogUtil.getInstance();
    this.commonStrings = CommonStrings.getInstance();
    
    
        }
    

    public function SmallInsert(fileName:String) {
        super();
        this.initFieldsSmallInsert();
        this.fileName = fileName;
        this.string = AbFileSystem.getInstance().readAsString(fileName);
    }
    

    public function atBeginning(text:String):Boolean {
        try {
            var idFile:FileOutputStream = new FileOutputStream(this.fileName);
            var idOutData:DataOutputStream = new DataOutputStream(idFile);
            idOutData.writeBytes(text + this.string);
            return true;
        } catch (e:*) {
            if (org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().IDLOGGING)) {
                this.logUtil.put(this.commonStrings.EXCEPTION, this, "insertAtBeginning", e);
            }
            return false;
        }
    }
    

    public function after(text:String, after:String):Boolean {
        try {
            var index:int = JString.indexOf(this.string, after);
            if (index < 0) {
                trace("No such start: " + after + " in: " + this.string);
                return false;
            }
            index = int(index + after.length);
            var start:String = this.string.substring(0, index);
            var end:String = this.string.substring(int(index + 1), this.string.length);
            var idFile:FileOutputStream = new FileOutputStream(this.fileName);
            var idOutData:DataOutputStream = new DataOutputStream(idFile);
            idOutData.writeBytes(start + text + end);
            idOutData.close();
            idFile.close();
            return true;
        } catch (e:*) {
            if (org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().IDLOGGING)) {
                this.logUtil.put(this.commonStrings.EXCEPTION, this, "after", e);
            }
            return false;
        }
    }
    

    public function atEnd(text:String):Boolean {
        try {
            var idFile:FileOutputStream = new FileOutputStream(this.fileName);
            var idOutData:DataOutputStream = new DataOutputStream(idFile);
            idOutData.writeBytes(this.string + text);
            return true;
        } catch (e:*) {
            if (org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().IDLOGGING)) {
                this.logUtil.put(this.commonStrings.EXCEPTION, this, "insertAtEnd", e);
            }
            return false;
        }
    }
    }
}

