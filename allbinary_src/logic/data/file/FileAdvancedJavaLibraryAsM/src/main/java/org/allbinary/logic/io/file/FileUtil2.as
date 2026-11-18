/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2022 AllBinary 
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
package org.allbinary.logic.io.file {
    import org.allbinary.logic.communication.log.LogUtil;
    import org.allbinary.logic.io.AbFileInputStream;
    import org.allbinary.logic.io.StreamUtil;
    import org.allbinary.string.CommonStrings;
    import org.allbinary.util.BasicArrayList;

    public class FileUtil2 {
    private static var instance_value:FileUtil2;
    private static var instance_set:Boolean = false;
    private static function get instance():FileUtil2 {
        if (!FileUtil2.instance_set) {
            FileUtil2.instance_set = true;
            FileUtil2.instance_value = new FileUtil2();
        }
        return FileUtil2.instance_value;
    }
        public var logUtil:LogUtil = null;
        private var commonStrings:CommonStrings = null;
        private var streamUtil:StreamUtil = null;

        // Java field initializers run after the base constructor
        private function initFieldsFileUtil2():void {
    this.logUtil = LogUtil.getInstance();
    this.commonStrings = CommonStrings.getInstance();
    this.streamUtil = StreamUtil.getInstance();
        }
    

    public static function getInstance():FileUtil2 {
        return FileUtil2.instance;
    }
    

    public function FileUtil2() {
        super();
        this.initFieldsFileUtil2();
    }
    

    public function loadFileAsList(file:AbFile, max:int, byteArray1:Vector.<int>):BasicArrayList {
        var inputStream:AbFileInputStream = null;
        try {
            inputStream = AbFileInputStream.createFromAbFile(file);
        } catch (e:*) {
            this.logUtil.put(this.commonStrings.EXCEPTION, this, this.commonStrings.ADD, e);
        }
        return SimpleFileUtil.getInstance().loadFileAsList(inputStream, max, byteArray1);
    }
    }
}

