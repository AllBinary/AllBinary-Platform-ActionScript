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
package org.allbinary.logic.io.file.zip {
    import java.util.zip.JZipEntry;
    import java.util.zip.JZipInputStream;
    import java.util.zip.JZipOutputStream;
    import org.allbinary.logic.communication.log.LogUtil;
    import org.allbinary.logic.io.AbDataOutputStream;
    import org.allbinary.logic.io.AbFileInputStream;
    import org.allbinary.logic.io.AbFileOutputStream;
    import org.allbinary.logic.io.DataOutputStreamFactory;
    import org.allbinary.logic.io.StreamUtil;
    import org.allbinary.logic.io.file.AbFile;
    import org.allbinary.logic.io.file.FileUtil;
    import org.allbinary.logic.string.StringMaker;
    import org.allbinary.string.CommonStrings;
    import org.allbinary.util.BasicArrayList;

    public class ZipFileUtil {
    private static var instance_value:ZipFileUtil;
    private static var instance_set:Boolean = false;
    private static function get instance():ZipFileUtil {
        if (!ZipFileUtil.instance_set) {
            ZipFileUtil.instance_set = true;
            ZipFileUtil.instance_value = new ZipFileUtil();
        }
        return ZipFileUtil.instance_value;
    }
        public var logUtil:LogUtil = null;
        private var commonStrings:CommonStrings = null;

        // Java field initializers run after the base constructor
        private function initFieldsZipFileUtil():void {
    this.logUtil = LogUtil.getInstance();
    this.commonStrings = CommonStrings.getInstance();
        }

        public function ZipFileUtil() {
            super();
            this.initFieldsZipFileUtil();
        }
    

    public static function getInstance():ZipFileUtil {
        return ZipFileUtil.instance;
    }
    

    public function create(outFilename:String, fileBasicArrayList:BasicArrayList):void {
        try {
            var zipFile:AbFile = AbFile.createAbFile(outFilename);
            if (zipFile.exists()) {
                zipFile.delete_();
            }
            zipFile.createNewFile();
            var outputStream:JZipOutputStream = new JZipOutputStream(AbFileOutputStream.createFromAbFile(zipFile));
            var streamUtil:StreamUtil = StreamUtil.getInstance();
            var stringBuffer:StringMaker = new StringMaker();
            var byteArray:Vector.<int> = new Vector.<int>(16384);
            var fileInputStream:AbFileInputStream = null;
            var size:int = fileBasicArrayList.size();
            var current:int = 0;
            for (var i:int = 0; i < size; i++) {
                var file:AbFile = (fileBasicArrayList.get_(i) as AbFile);
                if (file.isDirectory()) {
                } else if (file.isFile()) {
                    stringBuffer.delete_(0, stringBuffer.length());
                    stringBuffer.appendint(current);
                    stringBuffer.append(" Creating Zip File Entry: ");
                    stringBuffer.append(file.getPath());
                    this.logUtil.putF(stringBuffer.toString(), this, "create()");
                    try {
                        fileInputStream = AbFileInputStream.createFromAbFile(file);
                        outputStream.putNextEntry(new JZipEntry(file.getPath()));
                        streamUtil.get_(fileInputStream, outputStream, byteArray);
                        outputStream.closeEntry();
                        streamUtil.close(fileInputStream);
                    } catch (e:*) {
                        this.logUtil.putF("Skipping File (Probably Local): " + file.getPath(), this, "create()");
                    }
                }
                current++;
            }
            streamUtil.close(outputStream);
        } catch (e:*) {
            this.logUtil.put(this.commonStrings.EXCEPTION, this, "create", e);
        }
    }
    

    public function unzip(path:String, zipFile:AbFile, fileName:String):void {
        var buffer:Vector.<int> = new Vector.<int>(16384);
        var inputStream:JZipInputStream = null;
        try {
            inputStream = new JZipInputStream(AbFileInputStream.createFromAbFile(zipFile));
            var zipEntry:JZipEntry = null;
            var stringBuffer:StringMaker = new StringMaker();
            var fileUtil:FileUtil = FileUtil.getInstance();
            while (((zipEntry = inputStream.getNextEntry())) != null) {
                var entryName:String = zipEntry.getName();
                if (zipEntry.isDirectory()) {
                } else {
                    var entryFile:AbFile = AbFile.createAbFile(path + entryName);
                    stringBuffer.delete_(0, stringBuffer.length());
                    stringBuffer.append("ZipEntry Name: ");
                    stringBuffer.append(entryName);
                    stringBuffer.append(" isFile: ");
                    stringBuffer.appendboolean(entryFile.isFile());
                    stringBuffer.append(" isDirectory: ");
                    stringBuffer.appendboolean(entryFile.isDirectory());
                    stringBuffer.append(" getParent: ");
                    stringBuffer.append(entryFile.getParent());
                    this.logUtil.putF(stringBuffer.toString(), this, "unzip");
                    var dataOutputStream:AbDataOutputStream = DataOutputStreamFactory.getInstance().getInstanceForAbFile(entryFile);
                    fileUtil.write(inputStream, dataOutputStream, buffer);
                }
                inputStream.closeEntry();
            }
        } finally {
            StreamUtil.getInstance().close(inputStream);
        }
    }
    }
}

