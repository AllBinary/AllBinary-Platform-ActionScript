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
    import java.io.JBufferedWriter;
    import java.io.JFileWriter;
    import org.allbinary.logic.communication.log.LogUtil;
    import org.allbinary.logic.io.file.AbFile;
    import org.allbinary.logic.io.file.AbFileNativeUtil;
    import org.allbinary.logic.io.path.AbPathData;
    import org.allbinary.logic.string.StringMaker;
    import org.allbinary.string.CommonLabels;
    import org.allbinary.string.CommonStrings;

    public class BufferedWriterUtil {
    private static var instance_value:BufferedWriterUtil;
    private static var instance_set:Boolean = false;
    private static function get instance():BufferedWriterUtil {
        if (!BufferedWriterUtil.instance_set) {
            BufferedWriterUtil.instance_set = true;
            BufferedWriterUtil.instance_value = new BufferedWriterUtil();
        }
        return BufferedWriterUtil.instance_value;
    }
        private var logUtil:LogUtil = null;
        private var commonStrings:CommonStrings = null;
        private var commonLabels:CommonLabels = null;
        private var REMOVING_OLD:String = null;

        // Java field initializers run after the base constructor
        private function initFieldsBufferedWriterUtil():void {
    this.logUtil = LogUtil.getInstance();
    this.commonStrings = CommonStrings.getInstance();
    this.commonLabels = CommonLabels.getInstance();
    this.REMOVING_OLD = "Remove old for overwriting: ";
        }

        public function BufferedWriterUtil() {
            super();
            this.initFieldsBufferedWriterUtil();
        }
    

    public static function getInstance():BufferedWriterUtil {
        return BufferedWriterUtil.instance;
    }
    

    public function overwrite(path:String, data:String):void {
        var abFile:AbFile = AbFile.createAbFile(path);
        if (abFile.exists()) {
            this.logUtil.putF(this.REMOVING_OLD + path, this, this.commonStrings.CREATE);
            abFile.delete_();
        } else {
            var name:String = AbPathData.getInstance().removeNameFromPath(path);
            var abFileDirectory:AbFile = AbFile.createAbFile(name);
            if (abFileDirectory.exists()) {
            } else {
                var stringBuilder:StringMaker = new StringMaker();
                this.logUtil.putF(stringBuilder.append(this.commonStrings.CREATE).append(this.commonLabels.COLON_SEP).append(name).toString(), this, this.commonStrings.CREATE);
                var result:Boolean = abFileDirectory.mkdirs();
                stringBuilder.delete_(0, stringBuilder.length());
                this.logUtil.putF(stringBuilder.append(this.commonLabels.RESULT_).appendboolean(result).toString(), this, this.commonStrings.CREATE);
            }
        }
        this.write(abFile, data);
    }
    

    public function overwrite(abFile:AbFile, data:String):void {
        if (abFile.exists()) {
            this.logUtil.putF(this.REMOVING_OLD + abFile.getPath(), this, this.commonStrings.CREATE);
            abFile.delete_();
        } else {
            var name:String = AbPathData.getInstance().removeNameFromPath(abFile.getAbsolutePath());
            var abFileDirectory:AbFile = AbFile.createAbFile(name);
            if (abFileDirectory.exists()) {
            } else {
                var stringBuilder:StringMaker = new StringMaker();
                this.logUtil.putF(stringBuilder.append(this.commonStrings.CREATE).append(this.commonLabels.COLON_SEP).append(name).toString(), this, this.commonStrings.CREATE);
                var result:Boolean = abFileDirectory.mkdirs();
                stringBuilder.delete_(0, stringBuilder.length());
                this.logUtil.putF(stringBuilder.append(this.commonLabels.RESULT_).appendboolean(result).toString(), this, this.commonStrings.CREATE);
            }
        }
        this.write(abFile, data);
    }
    

    public function write(abFile:AbFile, data:String):void {
        var fileOut:BufferedWriter = new BufferedWriter(new FileWriter(AbFileNativeUtil.get_(abFile)));
        fileOut.write(data, 0, data.length);
        fileOut.newLine();
        fileOut.flush();
    }
    }
}

