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
package org.allbinary.logic.io.file {
    import java.nio.channels.JFileChannel;
    import java.nio.channels.JFileLock;
    import org.allbinary.util.BasicArrayList;
    import org.allbinary.util.BasicArrayListD;
    import org.allbinary.logic.communication.log.LogUtil;
    import org.allbinary.logic.io.AbFileOutputStream;
    import org.allbinary.logic.io.StreamUtil;

    public class FileLockUtil {
    private static var instance_value:FileLockUtil;
    private static var instance_set:Boolean = false;
    private static function get instance():FileLockUtil {
        if (!FileLockUtil.instance_set) {
            FileLockUtil.instance_set = true;
            FileLockUtil.instance_value = new FileLockUtil();
        }
        return FileLockUtil.instance_value;
    }
        public var logUtil:LogUtil = null;

        // Java field initializers run after the base constructor
        private function initFieldsFileLockUtil():void {
    this.logUtil = LogUtil.getInstance();
        }
    

    public static function getInstance():FileLockUtil {
        return FileLockUtil.instance;
    }
    

    public function FileLockUtil() {
        super();
        this.initFieldsFileLockUtil();
    }
    

    public function getAll(vector:BasicArrayList, isReturnOnFailure:Boolean):BasicArrayList {
        var fileLockVector:BasicArrayList = new BasicArrayListD();
        var size:int = vector.size();
        for (var index:int = 0; index < size; index++) {
            var file:AbFile = (vector.get_(index) as AbFile);
            var fileLock:JFileLock = this.getLock(file);
            if (fileLock != null) {
                this.logUtil.putF("File Lock Obtained: " + file.getAbsolutePath(), this, "getAll");
                fileLockVector.add(fileLock);
            } else if (isReturnOnFailure) {
                this.logUtil.putF("Total Locks Obtained: " + String(fileLockVector.size()), this, "getAll");
                return fileLockVector;
            }
        }
        this.logUtil.putF("Total Locks Obtained: " + String(fileLockVector.size()), this, "getAll");
        return fileLockVector;
    }
    

    public function getAllPossible(vector:BasicArrayList):BasicArrayList {
        return this.getAll(vector, false);
    }
    

    public function getAllOrNone(vector:BasicArrayList):BasicArrayList {
        var fileLockVector:BasicArrayList = this.getAll(vector, true);
        if (vector.size() != fileLockVector.size()) {
            return new BasicArrayListD();
        } else {
            return fileLockVector;
        }
    }
    

    public function getLock(...args):JFileLock {
        if (args.length == 1 && args[0] is AbFile) {
            return this.getLock_jo1_1(args[0]);
        }
        if (args.length == 1 && args[0] is AbFileOutputStream) {
            return this.getLock_jo1_2(args[0]);
        }
        if (args.length == 1) {
            return this.getLock_jo1_3(args[0]);
        }
        throw new JException("IllegalArgumentException", "getLock");
    }

    private function getLock_jo1_1(file:AbFile):JFileLock {
        try {
            return this.getLock(AbFileOutputStream.createFromAbFileAppend(file, true));
        } catch (e:*) {
            this.logUtil.put("Exception returns null", this, "getLock", e);
            return null;
        } finally {
        }
        throw new JException("IllegalStateException", "unreachable end of method");
    }

    private function getLock_jo1_2(fileOutputStream:AbFileOutputStream):JFileLock {
        try {
            var fileLock:JFileLock = this.getLock(fileOutputStream.getChannel());
            return fileLock;
        } catch (e:*) {
            this.logUtil.put("Exception returns null", this, "getLock", e);
            return null;
        } finally {
            this.logUtil.putF("Finally - Closing FileOutputStream", this, "getLock");
            StreamUtil.getInstance().close(fileOutputStream);
        }
        throw new JException("IllegalStateException", "unreachable end of method");
    }

    private function getLock_jo1_3(fileChannel:JFileChannel):JFileLock {
        try {
            var fileLock:JFileLock = fileChannel.tryLock();
            return fileLock;
        } catch (e:*) {
            this.logUtil.put("Exception returns null", this, "getLock", e);
            return null;
        } finally {
            this.logUtil.putF("Finally - Closing FileChannel", this, "getLock");
            fileChannel.close();
        }
        throw new JException("IllegalStateException", "unreachable end of method");
    }
    
    
    }
}

