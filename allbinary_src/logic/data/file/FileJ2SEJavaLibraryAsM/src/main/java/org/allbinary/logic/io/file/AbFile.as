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
    import java.io.JFile;
    import java.io.JFileFilter;
    import java.io.JFilenameFilter;
    import java.io.JIOException;
    import java.net.JURI;
    import org.allbinary.TsUtil;
    import org.allbinary.logic.io.path.AbPath;
    import org.allbinary.logic.string.StringUtil;

    public class AbFile implements AbFileInterface {
    private static var NULL_FILE_value:AbFile;
    private static var NULL_FILE_set:Boolean = false;
    public static function get NULL_FILE():AbFile {
        if (!AbFile.NULL_FILE_set) {
            AbFile.NULL_FILE_set = true;
            AbFile.NULL_FILE_value = AbFile.createAbFileFromRawPath(StringUtil.getInstance().EMPTY_STRING);
        }
        return AbFile.NULL_FILE_value;
    }
        private var file:JFile = null;

        // Java field initializers run after the base constructor
        private function initFieldsAbFile():void {
    
        }
    

    public static function createAbFileWithChild(file:AbFile, childPathName:String):AbFile {
        return new AbFile(new JFile(file.getFile(), childPathName));
    }
    

    public static function createAbFile(filePath:String):AbFile {
        return new AbFile(new JFile(new AbPath(filePath, StringUtil.getInstance().EMPTY_STRING).toFileSystemString()));
    }
    

    public static function createAbFilePathAndName(filePath:String, fileName:String):AbFile {
        return new AbFile(new JFile(new AbPath(filePath, StringUtil.getInstance().EMPTY_STRING).toFileSystemString(), fileName));
    }
    

    public static function createAbFileFromAbPath(abPath:AbPath):AbFile {
        return new AbFile(new JFile(abPath.toFileSystemString()));
    }
    

    public static function createAbFileFromRawPath(filePath:String):AbFile {
        return new AbFile(new JFile(filePath));
    }
    

    public function AbFile(file:JFile) {
        super();
        this.initFieldsAbFile();
        this.file = file;
    }
    

    public function getFile():JFile {
        return this.file;
    }
    

    public function getName():String {
        return this.file.getName();
    }
    

    public function getParent():String {
        return this.file.getParent();
    }
    

    public function getParentFile():Object {
        return this.file.getParentFile();
    }
    

    public function getPath():String {
        return this.file.getPath();
    }
    

    public function isAbsolute():Boolean {
        return this.file.isAbsolute();
    }
    

    public function getAbsolutePath():String {
        return this.file.getAbsolutePath();
    }
    

    public function getAbsoluteFile():Object {
        return this.file.getAbsoluteFile();
    }
    

    public function getCanonicalPath():String {
        return this.file.getCanonicalPath();
    }
    

    public function getCanonicalFile():Object {
        return this.file.getCanonicalFile();
    }
    

    public function toURI():URI {
        return this.file.toURI();
    }
    

    public function canRead():Boolean {
        return this.file.canRead();
    }
    

    public function canWrite():Boolean {
        return this.file.canWrite();
    }
    

    public function exists():Boolean {
        return this.file.exists();
    }
    

    public function isDirectory():Boolean {
        return this.file.isDirectory();
    }
    

    public function isFile():Boolean {
        return this.file.isFile();
    }
    

    public function isHidden():Boolean {
        return this.file.isHidden();
    }
    

    public function lastModified():Number {
        return this.file.lastModified();
    }
    

    public function length():Number {
        return Number(this.file.length());
    }
    

    public function createNewFile():Boolean {
        return this.file.createNewFile();
    }
    

    public function delete_():Boolean {
        return this.file.delete_();
    }
    

    public function deleteOnExit():void {
        this.file.deleteOnExit();
    }
    

    public function list():Vector.<String> {
        return this.file.list();
    }
    

    public function listWithFilter(filter:FilenameFilter):Vector.<String> {
        return this.file.list(filter);
    }
    

    public function listFiles():Vector.<Object> {
        return (this.file.listFiles() as Vector.<Object>);
    }
    

    public function listFilesFileNameFilter(filter:FilenameFilter):Vector.<Object> {
        return (this.file.listFiles(filter) as Vector.<Object>);
    }
    

    public function listFilesFileFilter(filter:FileFilter):Vector.<Object> {
        return (this.file.listFiles(filter) as Vector.<Object>);
    }
    

    public function mkdir():Boolean {
        return this.file.mkdir();
    }
    

    public function mkdirs():Boolean {
        return this.file.mkdirs();
    }
    

    public function renameTo(dest:AbFile):Boolean {
        return this.file.renameTo(dest.getFile());
    }
    

    public function setLastModified(time:Number):Boolean {
        return this.file.setLastModified(time);
    }
    

    public function setReadOnly():Boolean {
        return this.file.setReadOnly();
    }
    

    public function setWritable(writable:Boolean, ownerOnly:Boolean):Boolean {
        return this.file.setExecutable(writable, ownerOnly);
    }
    

    public function setWritable(writable:Boolean):Boolean {
        return this.file.setWritable(writable);
    }
    

    public function setReadable(readable:Boolean, ownerOnly:Boolean):Boolean {
        return this.file.setReadable(readable, ownerOnly);
    }
    

    public function setReadable(readable:Boolean):Boolean {
        return this.file.setReadable(readable);
    }
    

    public function setExecutable(executable:Boolean, ownerOnly:Boolean):Boolean {
        return this.file.setExecutable(executable, ownerOnly);
    }
    

    public function setExecutable(executable:Boolean):Boolean {
        return this.file.setExecutable(executable);
    }
    

    public function canExecute():Boolean {
        return this.file.canExecute();
    }
    

    public function getTotalSpace():Number {
        return this.file.getTotalSpace();
    }
    

    public function getFreeSpace():Number {
        return this.file.getFreeSpace();
    }
    

    public function getUsableSpace():Number {
        return this.file.getUsableSpace();
    }
    

    public function compareTo(pathname:JFile):int {
        return this.file.compareTo(pathname);
    }
    

    public function equals(obj:Object):Boolean {
        return TsUtil.getInstance().equalsNotstring(this.file, obj);
    }
    

    public function hashCode():int {
        return this.file.hashCode();
    }
    

    public function toString():String {
        return this.file.toString();
    }
    }
}

