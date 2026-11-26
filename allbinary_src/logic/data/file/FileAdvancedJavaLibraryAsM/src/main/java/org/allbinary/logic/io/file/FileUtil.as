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
    import java.io.JInputStream;
    import java.io.JOutputStream;
    import org.allbinary.globals.URLGLOBALS;
    import org.allbinary.logic.communication.log.LogUtil;
    import org.allbinary.logic.communication.log.PreLogUtil;
    import org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory;
    import org.allbinary.logic.io.AbDataOutputStream;
    import org.allbinary.logic.io.AbFileInputStream;
    import org.allbinary.logic.io.AbFileLocalInputStream;
    import org.allbinary.logic.io.AbIOSystem;
    import org.allbinary.logic.io.DataOutputStreamFactory;
    import org.allbinary.logic.io.FileStreamFactory;
    import org.allbinary.logic.io.StreamUtil;
    import org.allbinary.logic.io.file.directory.Directory;
    import org.allbinary.logic.io.path.AbPath;
    import org.allbinary.logic.io.path.AbPathData;
    import org.allbinary.logic.string.StringMaker;
    import org.allbinary.logic.string.StringUtil;
    import org.allbinary.string.CommonLabels;
    import org.allbinary.string.CommonStrings;
    import org.allbinary.util.BasicArrayList;
    import java.io.JFile;
    import org.allbinary.logic.communication.log.config.type.LogConfigTypes;

    //data/init/views/TestStore/template/type/genericTemplateObjectConfig.xml
    public class FileUtil {
    private static var instance_value:FileUtil;
    private static var instance_set:Boolean = false;
    private static function get instance():FileUtil {
        if (!FileUtil.instance_set) {
            FileUtil.instance_set = true;
            FileUtil.instance_value = new FileUtil();
        }
        return FileUtil.instance_value;
    }
        public var logUtil:LogUtil = null;
        private var directory:Directory = null;
        private var logConfigTypeFactory:LogConfigTypeFactory = null;
        private var commonStrings:CommonStrings = null;
        private var streamUtil:StreamUtil = null;
        private var WRITE_LABEL:String = null;
        private var DATA_LABEL:String = null;
        private var WRITE_METHOD:String = null;

        // Java field initializers run after the base constructor
        private function initFieldsFileUtil():void {
    this.logUtil = LogUtil.getInstance();
    this.directory = Directory.getInstance();
    this.logConfigTypeFactory = LogConfigTypeFactory.getInstance();
    this.commonStrings = CommonStrings.getInstance();
    this.streamUtil = StreamUtil.getInstance();
    this.WRITE_LABEL = "Write file: ";
    this.DATA_LABEL = " data: ";
    this.WRITE_METHOD = "write";
        }
    

    public static function getInstance():FileUtil {
        return FileUtil.instance;
    }
    

    public function FileUtil() {
        super();
        this.initFieldsFileUtil();
    }
    

    public function write(...args):void {
        if (args.length == 2 && args[0] is JInputStream && args[1] is AbFile) {
            this.write_jo2_1(args[0], args[1]);
            return;
        }
        if (args.length == 2 && args[0] is JInputStream && args[1] is AbDataOutputStream) {
            this.write_jo2_2(args[0], args[1]);
            return;
        }
        if (args.length == 3) {
            this.write_jo3(args[0], args[1], args[2]);
            return;
        }
        if (args.length == 2) {
            this.write_jo2_3(args[0], args[1]);
            return;
        }
        throw new JException("IllegalArgumentException", "write");
    }

    private function write_jo2_1(inputStream:JInputStream, file:AbFile):void {
        var dataOutputStream:AbDataOutputStream = DataOutputStreamFactory.getInstance().getInstanceForAbFile(file);
        this.write(inputStream, dataOutputStream);
    }

    private function write_jo2_2(inputStream:JInputStream, dataOutputStream:AbDataOutputStream):void {
        try {
            dataOutputStream = (StreamUtil.getInstance().get_(inputStream, dataOutputStream, new Vector.<int>(16384)) as AbDataOutputStream);
            dataOutputStream.flush();
        } finally {
            StreamUtil.getInstance().close(dataOutputStream);
        }
    }

    private function write_jo3(inputStream:JInputStream, dataOutputStream:AbDataOutputStream, buffer:Vector.<int>):void {
        try {
            dataOutputStream = (StreamUtil.getInstance().get_(inputStream, dataOutputStream, buffer) as AbDataOutputStream);
            dataOutputStream.flush();
        } finally {
            StreamUtil.getInstance().close(dataOutputStream);
        }
    }

    private function write_jo2_3(filePath:String, string:String):void {
        var dataOutputStream:AbDataOutputStream = null;
        try {
            PreLogUtil.put(new StringMaker().append(this.WRITE_LABEL).append(filePath).append(this.DATA_LABEL).append(string).toString(), this, this.WRITE_METHOD);
            var fileInputStreamFactory:FileStreamFactory = FileStreamFactory.getInstance();
            var fileOutputStream:JOutputStream = fileInputStreamFactory.getFileOutputStreamInstance(StringUtil.getInstance().EMPTY_STRING, filePath);
            dataOutputStream = new AbDataOutputStream(fileOutputStream);
            dataOutputStream.write(JString.getBytes(string), 0, string.length);
            dataOutputStream.flush();
        } finally {
            StreamUtil.getInstance().close(dataOutputStream);
        }
    }
    
    
    

    private function copy(...args):* {
        if (args.length == 2 && args[0] is AbFileInputStream && args[1] is AbDataOutputStream) {
            return this.copy_jo2_1(args[0], args[1]);
        }
        if (args.length == 2) {
            return this.copy_jo2_2(args[0], args[1]);
        }
        throw new JException("IllegalArgumentException", "copy");
    }

    private function copy_jo2_1(dataInputStream:AbFileInputStream, dataOutputStream:AbDataOutputStream):void {
        try {
            dataOutputStream = (StreamUtil.getInstance().get_(dataInputStream, dataOutputStream, new Vector.<int>(16384)) as AbDataOutputStream);
            dataOutputStream.flush();
        } finally {
            StreamUtil.getInstance().close(dataOutputStream);
            StreamUtil.getInstance().close(dataInputStream);
        }
    }

    private function copy_jo2_2(fromAbPath:AbPath, to_:AbPath):Boolean {
        var COPY:String = "copy";
        try {
            if (LogConfigTypes.LOGGING.contains(this.logConfigTypeFactory.FILE)) {
                var stringBuffer:StringMaker = new StringMaker();
                stringBuffer.append("Copying AbPaths from: ");
                stringBuffer.append(fromAbPath.toString());
                stringBuffer.append(" to: ");
                stringBuffer.append(to_.toString());
                this.logUtil.putF(stringBuffer.toString(), FileUtil.getInstance(), COPY);
            }
            if (fromAbPath == null) {
                throw new JException("Exception", "Cannot Copy From A Null Location");
            }
            if (to_ == null) {
                throw new JException("Exception", "Cannot Copy To A Null Location");
            }
            var fromLocationFile:AbFile = AbFile.createAbFileFromAbPath(fromAbPath);
            var toLocationFile:AbFile = AbFile.createAbFileFromAbPath(to_);
            if (fromLocationFile.isFile()) {
                if (toLocationFile.isDirectory()) {
                    file = AbFile.createAbFileWithChild(toLocationFile, fromLocationFile.getName());
                    this.copyFile(fromLocationFile, file);
                    if (LogConfigTypes.LOGGING.contains(this.logConfigTypeFactory.FILE)) {
                        stringBuffer = new StringMaker();
                        stringBuffer.append("Copied file=");
                        stringBuffer.append(fromLocationFile.getName());
                        stringBuffer.append(" from: ");
                        stringBuffer.append(fromLocationFile.getPath());
                        stringBuffer.append(" to: ");
                        stringBuffer.append(toLocationFile.getPath());
                        this.logUtil.putF(stringBuffer.toString(), FileUtil.getInstance(), COPY);
                    }
                } else {
                    this.copyFile(fromLocationFile, toLocationFile);
                    if (LogConfigTypes.LOGGING.contains(this.logConfigTypeFactory.FILE)) {
                        stringBuffer = new StringMaker();
                        stringBuffer.append("Copied file with new name ");
                        stringBuffer.append(" from: ");
                        stringBuffer.append(fromLocationFile.getPath());
                        stringBuffer.append(" to: ");
                        stringBuffer.append(toLocationFile.getPath());
                        this.logUtil.putF(stringBuffer.toString(), FileUtil.getInstance(), COPY);
                    }
                }
            } else if (fromLocationFile.isDirectory() && toLocationFile.isDirectory()) {
                if (fromAbPath.toFileSystemString().charCodeAt(int(fromAbPath.toFileSystemString().length - 1)) == JFile.separatorChar) {
                    if (LogConfigTypes.LOGGING.contains(this.logConfigTypeFactory.FILE)) {
                        this.logUtil.putF("Copying subdirectories", FileUtil.getInstance(), COPY);
                    }
                    var fileArray:Vector.<AbFile> = FileWrapperUtil.wrapFiles(fromLocationFile.listFiles());
                    for (var index:int = 0; index < fileArray.length; index++) {
                        var file:AbFile = fileArray[index];
                        if (file.isFile()) {
                            var aFile:AbFile = AbFile.createAbFileWithChild(toLocationFile, file.getName());
                            this.copyFile(file, aFile);
                        } else if (file.isDirectory()) {
                            this.copyDirectory(file, toLocationFile);
                        } else {
                            throw new JException("Exception", "File Copy Error");
                        }
                    }
                    if (LogConfigTypes.LOGGING.contains(this.logConfigTypeFactory.FILE)) {
                        this.logUtil.putF("Copied subdirectories", FileUtil.getInstance(), COPY);
                    }
                } else {
                    if (LogConfigTypes.LOGGING.contains(this.logConfigTypeFactory.FILE)) {
                        this.logUtil.putF("Copyinhg directory", FileUtil.getInstance(), COPY);
                    }
                    this.copyDirectory(fromLocationFile, toLocationFile);
                    if (LogConfigTypes.LOGGING.contains(this.logConfigTypeFactory.FILE)) {
                        this.logUtil.putF("Copied directory", FileUtil.getInstance(), COPY);
                    }
                }
            }
            return true;
        } catch (e:*) {
            if (LogConfigTypes.LOGGING.contains(this.logConfigTypeFactory.FILEERROR)) {
                stringBuffer = new StringMaker();
                stringBuffer.append("Error Copying fromAbPath: ");
                stringBuffer.append(fromAbPath.toString());
                stringBuffer.append(" to: ");
                stringBuffer.append(to_.toString());
                this.logUtil.put(stringBuffer.toString(), FileUtil.getInstance(), COPY, e);
            }
            throw e;
        }
    }
    

    private function fixPath(file:AbFile, path:AbPath, realPath:AbPath, cloud:String):AbPath {
        var beginIndex:int = int(JString.indexOf(file.getPath(), cloud) + cloud.length);
        var endIndex:int = JString.indexOf(file.getPath(), file.getName());
        var fixedPathString:String = realPath.toFileSystemString() + file.getPath().substring(beginIndex, endIndex);
        var fixedPath:AbPath = new AbPath(fixedPathString, StringUtil.getInstance().EMPTY_STRING);
        this.directory.create(fixedPath);
        var string:String = fixedPath.toFileSystemString();
        if (LogConfigTypes.LOGGING.contains(this.logConfigTypeFactory.FILE)) {
            this.logUtil.putF(string, this, "fixPath");
        }
        var outPath:AbPath = new AbPath(string, file.getName());
        return outPath;
    }
    

    public function copyToCloud(...args):void {
        if (args.length == 4 && args[0] is AbFile && args[1] is AbPath && args[2] is AbPath && args[3] is String) {
            this.copyToCloud_jo4_1(args[0], args[1], args[2], args[3]);
            return;
        }
        if (args.length == 6) {
            this.copyToCloud_jo6(args[0], args[1], args[2], args[3], args[4], args[5]);
            return;
        }
        if (args.length == 2) {
            this.copyToCloud_jo2(args[0], args[1]);
            return;
        }
        if (args.length == 4) {
            this.copyToCloud_jo4_2(args[0], args[1], args[2], args[3]);
            return;
        }
        throw new JException("IllegalArgumentException", "copyToCloud");
    }

    private function copyToCloud_jo4_1(file:AbFile, path:AbPath, realPath:AbPath, cloud:String):void {
        this.copyToCloud(file, path, realPath, cloud, false, false);
    }

    private function copyToCloud_jo6(file:AbFile, path:AbPath, realPath:AbPath, cloud:String, overwriteNewer:Boolean, overwriteAll:Boolean):void {
        try {
            var outPath:AbPath = this.fixPath(file, path, realPath, cloud);
            var outFile:AbFile = AbFile.createAbFileFromAbPath(outPath);
            if (!this.copyPrepare(file, outFile, overwriteNewer, overwriteAll)) {
                return;
            } else {
                if (LogConfigTypes.LOGGING.contains(this.logConfigTypeFactory.FILE)) {
                    var stringBuffer:StringMaker = new StringMaker();
                    stringBuffer.append("Out File: ");
                    stringBuffer.append(outFile.getPath());
                    stringBuffer.append(" In File: ");
                    stringBuffer.append(file.getPath());
                    stringBuffer.append(" to cloud.");
                    this.logUtil.putF(stringBuffer.toString(), FileUtil.getInstance(), "copyToCloud");
                }
            }
            var dataOutputStream:AbDataOutputStream = DataOutputStreamFactory.getInstance().getInstanceForAbFile(outFile);
            var fileInputStream:AbFileInputStream = new AbFileLocalInputStream(file);
            this.copy(fileInputStream, dataOutputStream);
        } catch (e:*) {
            if (LogConfigTypes.LOGGING.contains(this.logConfigTypeFactory.FILEERROR)) {
                stringBuffer = new StringMaker();
                stringBuffer.append("Error Copying File File: ");
                stringBuffer.append(file.toString());
                stringBuffer.append(" to cloud.");
                this.logUtil.put(stringBuffer.toString(), FileUtil.getInstance(), "copyToCloud", e);
            }
            throw e;
        }
    }

    private function copyToCloud_jo2(file:AbFile, outFile:AbFile):void {
        this.copyToCloud(file, outFile, false, false);
    }

    private function copyToCloud_jo4_2(file:AbFile, outFile:AbFile, overwriteNewer:Boolean, overwriteAll:Boolean):void {
        try {
            var stringBuffer:StringMaker = new StringMaker();
            if (!this.copyPrepare(file, outFile, overwriteNewer, overwriteAll)) {
                return;
            } else {
                if (LogConfigTypes.LOGGING.contains(this.logConfigTypeFactory.FILE)) {
                    stringBuffer.delete_(0, stringBuffer.length());
                    stringBuffer.append("Out File: ");
                    stringBuffer.append(outFile.getPath());
                    stringBuffer.append(" In File: ");
                    stringBuffer.append(file.getPath());
                    stringBuffer.append(" to cloud.");
                    this.logUtil.putF(stringBuffer.toString(), FileUtil.getInstance(), "copyToCloud");
                }
            }
            var dataOutputStream:AbDataOutputStream = DataOutputStreamFactory.getInstance().getInstanceForAbFile(outFile);
            var fileInputStream:AbFileInputStream = new AbFileLocalInputStream(file);
            this.copy(fileInputStream, dataOutputStream);
        } catch (e:*) {
            if (LogConfigTypes.LOGGING.contains(this.logConfigTypeFactory.FILEERROR)) {
                stringBuffer = new StringMaker();
                stringBuffer.append("Error Copying File File: ");
                stringBuffer.append(file.toString());
                stringBuffer.append(" to cloud.");
                this.logUtil.put(stringBuffer.toString(), FileUtil.getInstance(), "copyToCloud", e);
            }
            throw e;
        }
    }
    
    
    
    

    private function copyPrepare(fromFile:AbFile, toFile:AbFile, overwriteNewer:Boolean, overwriteAll:Boolean):Boolean {
        if (toFile.exists()) {
            var stringBuffer:StringMaker = new StringMaker();
            if (overwriteAll) {
                if (LogConfigTypes.LOGGING.contains(this.logConfigTypeFactory.FILE)) {
                    stringBuffer.delete_(0, stringBuffer.length());
                    stringBuffer.append("Overwriting File: ");
                    stringBuffer.append(toFile.getPath());
                    this.logUtil.putF(stringBuffer.toString(), FileUtil.getInstance(), "copyFile");
                }
                toFile.delete_();
                toFile.createNewFile();
            } else if (toFile.lastModified() < fromFile.lastModified() && overwriteNewer) {
                if (LogConfigTypes.LOGGING.contains(this.logConfigTypeFactory.FILE)) {
                    stringBuffer.delete_(0, stringBuffer.length());
                    stringBuffer.append("Newer by: ");
                    stringBuffer.appendlong(fromFile.lastModified() - toFile.lastModified());
                    stringBuffer.append("ms ");
                    stringBuffer.append("Copying File: ");
                    stringBuffer.append(toFile.getPath());
                    this.logUtil.putF(stringBuffer.toString(), FileUtil.getInstance(), "copyFile");
                }
                toFile.delete_();
                toFile.createNewFile();
            } else {
                if (LogConfigTypes.LOGGING.contains(this.logConfigTypeFactory.FILE)) {
                    stringBuffer.delete_(0, stringBuffer.length());
                    stringBuffer.append("File Already Exists");
                    if (overwriteNewer) {
                        stringBuffer.append(" And Is Not Older");
                    } else {
                        stringBuffer.append(" And Not A In Overwrite Mode");
                    }
                    stringBuffer.append(CommonLabels.getInstance().COLON_SEP);
                    stringBuffer.append(toFile.getPath());
                    this.logUtil.putF(stringBuffer.toString(), FileUtil.getInstance(), "copyFile");
                }
                return false;
            }
        } else {
            toFile.createNewFile();
        }
        return true;
    }
    

    private function copyFile(...args):void {
        if (args.length == 2) {
            this.copyFile_jo2(args[0], args[1]);
            return;
        }
        if (args.length == 4) {
            this.copyFile_jo4(args[0], args[1], args[2], args[3]);
            return;
        }
        throw new JException("IllegalArgumentException", "copyFile");
    }

    private function copyFile_jo2(fromFile:AbFile, toFile:AbFile):void {
        this.copyFile(fromFile, toFile, false, false);
    }

    private function copyFile_jo4(fromFile:AbFile, toFile:AbFile, overwriteNewer:Boolean, overwriteAll:Boolean):void {
        try {
            if (LogConfigTypes.LOGGING.contains(this.logConfigTypeFactory.FILE)) {
                var stringBuffer:StringMaker = new StringMaker();
                stringBuffer.append("Copying ");
                stringBuffer.appendlong(Number(fromFile.length()));
                stringBuffer.append(" bytes from File: ");
                stringBuffer.append(fromFile.getPath());
                stringBuffer.append(" to: ");
                stringBuffer.append(toFile.getPath());
                this.logUtil.putF(stringBuffer.toString(), FileUtil.getInstance(), "copyFile");
            }
            if (!this.copyPrepare(fromFile, toFile, overwriteNewer, overwriteAll)) {
                return;
            }
            var dataOutputStream:AbDataOutputStream = DataOutputStreamFactory.getInstance().getInstanceForAbFile(toFile);
            var fileInputStream:AbFileInputStream = AbFileInputStream.createFromAbFile(fromFile);
            this.copy(fileInputStream, dataOutputStream);
        } catch (e:*) {
            if (LogConfigTypes.LOGGING.contains(this.logConfigTypeFactory.FILEERROR)) {
                stringBuffer = new StringMaker();
                stringBuffer.append("Error Copying File fromFile: ");
                stringBuffer.append(fromFile.toString());
                stringBuffer.append(" to: ");
                stringBuffer.append(toFile.toString());
                this.logUtil.put(stringBuffer.toString(), FileUtil.getInstance(), "copyFile", e);
            }
            throw e;
        }
    }
    
    

    private static function getNewDirectory(fromFile:AbFile):String {
        var newDirectory:String = fromFile.getPath();
        var separatorChar:String = FilePathData.getInstance().PATH_START;
        if (AbIOSystem.getInstance().isType("com.vobject.appengine.java.io")) {
            separatorChar = AbPathData.getInstance().SEPARATOR;
        }
        var lastIndex:int = JString.lastIndexOf(newDirectory, separatorChar);
        if (lastIndex >= newDirectory.length) {
            newDirectory = newDirectory.substring(0, int(newDirectory.length - 1));
            lastIndex = JString.lastIndexOf(newDirectory, separatorChar);
        }
        return newDirectory.substring(lastIndex, newDirectory.length);
    }
    

    public function copyDirectoryPortion(fromDirectoryAbPath:AbPath, toDirectoryAbPath:AbPath, overwriteNewer:Boolean, overwriteAll:Boolean, current:int, total:int):void {
        var file:AbFile = AbFile.createAbFileFromAbPath(fromDirectoryAbPath);
        if (!file.isDirectory()) {
            throw new JException("Exception", "Not a directory: " + file.getPath());
        }
        var fileList:BasicArrayList = this.directory.search(file, true);
        var size:int = fileList.size();
        var stringBuffer:StringMaker = new StringMaker();
        stringBuffer.append("Searched: ");
        stringBuffer.append(file.getPath());
        stringBuffer.append(" Total: ");
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
        if (LogConfigTypes.LOGGING.contains(this.logConfigTypeFactory.FILE)) {
            this.logUtil.putF(stringBuffer.toString(), FileUtil.getInstance(), "copySomeFilesToDirectory()");
        }
        var nextFile:AbFile = null;
        for (var index:int = start; index < end; index++) {
            nextFile = (fileList.get_(index) as AbFile);
            if (nextFile.isDirectory()) {
            } else {
                var path:String = new AbPath(nextFile.getPath(), StringUtil.getInstance().EMPTY_STRING).getPath();
                var beginIndex:int = fromDirectoryAbPath.getPath().length;
                if (JString.indexOf(path, URLGLOBALS.getWebappPath()) < 0) {
                    beginIndex -= new AbPath(URLGLOBALS.getWebappPath(), StringUtil.getInstance().EMPTY_STRING).getPath().length;
                }
                var newPath:String = toDirectoryAbPath.toFileSystemString() + path.substring(beginIndex);
                var toFile:AbFile = AbFile.createAbFileFromAbPath(new AbPath(newPath, StringUtil.getInstance().EMPTY_STRING));
                this.copyFile(nextFile, toFile, overwriteNewer, overwriteAll);
            }
        }
    }
    

    private function copyDirectory(fromFile:AbFile, to_:AbFile):void {
        try {
            if (LogConfigTypes.LOGGING.contains(this.logConfigTypeFactory.FILE)) {
                var stringBuffer:StringMaker = new StringMaker();
                stringBuffer.append("Copying Directory from: ");
                stringBuffer.append(fromFile.getPath());
                stringBuffer.append(" to: ");
                stringBuffer.append(to_.getPath());
                this.logUtil.putF(stringBuffer.toString(), FileUtil.getInstance(), "copyDirectory");
            }
            var newDirectory:String = FileUtil.getNewDirectory(fromFile);
            var newDirectoryAbPath:AbPath = new AbPath(to_.getPath() + AbPathData.getInstance().SEPARATOR + newDirectory, StringUtil.getInstance().EMPTY_STRING);
            if (!this.directory.create(newDirectoryAbPath)) {
                throw new JException("Exception", "Failed to create directory: " + JString.ofObject(newDirectoryAbPath));
            }
            var fileArray:Vector.<AbFile> = FileWrapperUtil.wrapFiles(fromFile.listFiles());
            var size:int = fileArray.length;
            if (LogConfigTypes.LOGGING.contains(this.logConfigTypeFactory.FILE)) {
                stringBuffer = new StringMaker();
                stringBuffer.append("Copying ");
                stringBuffer.appendint(size);
                stringBuffer.append(" files from: ");
                stringBuffer.append(fromFile.getPath());
                stringBuffer.append(" to: ");
                stringBuffer.append(to_.getPath());
                this.logUtil.putF(stringBuffer.toString(), FileUtil.getInstance(), "copyDirectory");
            }
            var file:AbFile = null;
            for (var index:int = 0; index < size; index++) {
                file = fileArray[index];
                if (file.isFile()) {
                    this.copyFile(file, AbFile.createAbFilePathAndName(newDirectoryAbPath.toString(), file.getName()));
                } else if (file.isDirectory()) {
                    this.copyDirectory(file, AbFile.createAbFileFromAbPath(newDirectoryAbPath));
                } else {
                    throw new JException("Exception", "File Copy Error");
                }
            }
        } catch (e:*) {
            if (LogConfigTypes.LOGGING.contains(this.logConfigTypeFactory.FILEERROR)) {
                stringBuffer = new StringMaker();
                stringBuffer.append("Error Copying Directory fromFile: ");
                stringBuffer.append(fromFile.toString());
                stringBuffer.append(" to: ");
                stringBuffer.append(to_.toString());
                this.logUtil.put(stringBuffer.toString(), FileUtil.getInstance(), "copyDirectory", e);
            }
            throw e;
        }
    }
    
    

    public function shouldSkip(file:AbFile, skipFiles:Vector.<String>):Boolean {
        var size:int = skipFiles.length;
        var skipFile:String = null;
        for (var index:int = 0; index < size; index++) {
            skipFile = skipFiles[index];
            if (JSystem.compareToObject(file.getPath(), skipFile) == 0) {
                return true;
            }
        }
        return false;
    }
    
    

    public function loadFileAsList(file:AbFile, max:int, byteArray1:Vector.<int>):BasicArrayList {
        return FileUtil2.getInstance().loadFileAsList(file, max, byteArray1);
    }
    }
}

