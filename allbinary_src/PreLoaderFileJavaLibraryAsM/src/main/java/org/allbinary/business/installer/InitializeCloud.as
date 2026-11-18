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
package org.allbinary.business.installer {
    import org.allbinary.globals.PATH_GLOBALS;
    import org.allbinary.globals.URLGLOBALS;
    import org.allbinary.logic.communication.log.LogUtil;
    import org.allbinary.logic.io.AbIOSystem;
    import org.allbinary.logic.io.file.AbFile;
    import org.allbinary.logic.io.file.FileUtil;
    import org.allbinary.logic.io.file.directory.Directory;
    import org.allbinary.logic.io.path.AbPath;
    import org.allbinary.logic.string.StringMaker;
    import org.allbinary.logic.string.StringUtil;
    import org.allbinary.util.BasicArrayList;

    public class InitializeCloud {
    public static const CLOUD:String = "cloud/";
    public static const CLOUD_UPDATE:String = "cloudupdate/";
        public var logUtil:LogUtil = null;

        // Java field initializers run after the base constructor
        private function initFieldsInitializeCloud():void {
    this.logUtil = LogUtil.getInstance();
        }
    

    public function InitializeCloud() {
        super();
        this.initFieldsInitializeCloud();
    }
    

    public function initialize(cloud:String, overwriteNewer:Boolean, overwriteAll:Boolean, current:int, total:int):Boolean {
        try {
            if (AbIOSystem.getInstance().isType("com.vobject.appengine.java.io")) {
                var stringBuffer:StringMaker = new StringMaker();
                stringBuffer.append(URLGLOBALS.getWebappPath());
                stringBuffer.append(cloud);
                stringBuffer.append(PATH_GLOBALS.getInstance().DATA_PATH);
                var path:AbPath = new AbPath(stringBuffer.toString(), StringUtil.getInstance().EMPTY_STRING);
                stringBuffer.delete_(0, stringBuffer.length());
                stringBuffer.append(URLGLOBALS.getWebappPath());
                var realPath:AbPath = new AbPath(stringBuffer.toString(), StringUtil.getInstance().EMPTY_STRING);
                var file:AbFile = AbFile.createAbFileFromAbPath(path);
                var fileBasicArrayList:BasicArrayList = Directory.getInstance().search(file, true);
                var size:int = fileBasicArrayList.size();
                stringBuffer.delete_(0, stringBuffer.length());
                stringBuffer.append("Searched: ");
                stringBuffer.append(path.toFileSystemString());
                stringBuffer.append(" BasicArrayList: ");
                stringBuffer.appendint(size);
                var portion:int = int(int(size / total) + 1);
                var start:int = int(portion * current);
                var end:int = int(start + portion);
                if (end > size) {
                    end = size;
                }
                stringBuffer.append(" Section: ");
                stringBuffer.appendint(start);
                stringBuffer.append(" - ");
                stringBuffer.appendint(end);
                this.logUtil.putF(stringBuffer.toString(), this, "initialize()");
                var nextFile:AbFile = null;
                for (var index:int = start; index < end; index++) {
                    nextFile = (fileBasicArrayList.get_(index) as AbFile);
                    if (nextFile.isDirectory()) {
                    } else {
                        FileUtil.getInstance().copyToCloud(nextFile, path, realPath, cloud, overwriteNewer, overwriteAll);
                    }
                }
                this.logUtil.putF("Copied Files To Cloud", this, "initialize()");
            }
            return true;
        } catch (e:*) {
            this.logUtil.put("Unable to copy installer files into cloud", this, "initialize()", e);
            return false;
        }
    }
    }
}

