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
package org.allbinary.logic.io.file.directory {
    import java.io.JFileFilter;
    import org.allbinary.logic.communication.log.PreLogUtil;
    import org.allbinary.logic.io.file.AbFile;
    import org.allbinary.logic.io.file.FileFactory;
    import org.allbinary.logic.io.file.FileWrapperUtil;
    import org.allbinary.logic.io.path.AbPath;
    import org.allbinary.util.BasicArrayList;
    import org.allbinary.util.BasicArrayListD;

    public class Directory {
    private static var instance_value:Directory;
    private static var instance_set:Boolean = false;
    private static function get instance():Directory {
        if (!Directory.instance_set) {
            Directory.instance_set = true;
            Directory.instance_value = new Directory();
        }
        return Directory.instance_value;
    }
    

    public static function getInstance():Directory {
        return Directory.instance;
    }
    

    public function Directory() {
        super();
    }
    

    public function create(...args):Boolean {
        if (args.length == 1 && args[0] is AbPath) {
            return this.create_jo1_1(args[0]);
        }
        if (args.length == 1) {
            return this.create_jo1_2(args[0]);
        }
        throw new JException("IllegalArgumentException", "create");
    }

    private function create_jo1_1(directoryAbPath:AbPath):Boolean {
        return this.create(directoryAbPath.toFileSystemString());
    }

    private function create_jo1_2(directory:String):Boolean {
        try {
            var directoryFile:AbFile = FileFactory.getInstance().getInstance1(directory);
            if (!directoryFile.isDirectory()) {
                PreLogUtil.put("Creating Directories: " + directory, this, "create");
                if (!directoryFile.mkdirs()) {
                    return false;
                }
            }
            return true;
        } catch (e:*) {
            PreLogUtil.putOE("Error Creating Directories: " + directory, this, "create", e);
            return false;
        }
    }
    

    public function remove(...args):void {
        if (args.length == 1 && args[0] is AbPath) {
            this.remove_jo1_1(args[0]);
            return;
        }
        if (args.length == 1) {
            this.remove_jo1_2(args[0]);
            return;
        }
        throw new JException("IllegalArgumentException", "remove");
    }

    private function remove_jo1_1(existingDirectoryAbPath:AbPath):void {
        this.remove(existingDirectoryAbPath.toFileSystemString());
    }

    private function remove_jo1_2(existingDirectory:String):void {
        var existingDirectoryFile:AbFile = FileFactory.getInstance().getInstance1(existingDirectory);
        if (existingDirectoryFile.isDirectory()) {
            if (existingDirectoryFile.list().length > 0) {
                throw new JException("Exception", "Did not remove category: " + existingDirectory + " because files exist");
            } else if (existingDirectoryFile.delete_()) {
                PreLogUtil.put("Successfully Removed: " + existingDirectory, "Directory", "remove");
            }
        } else {
            throw new JException("Exception", "Category Directory Is Missing:" + existingDirectory);
        }
    }
    
    
    

    public function search(...args):BasicArrayList {
        if (args.length == 2 && args[0] is JFileFilter && args[1] is AbFile) {
            return this.search_jo2_1(args[0], args[1]);
        }
        if (args.length == 3 && args[0] is JFileFilter && args[1] is AbFile && args[2] is Boolean) {
            return this.search_jo3_1(args[0], args[1], args[2]);
        }
        if (args.length == 1) {
            return this.search_jo1(args[0]);
        }
        if (args.length == 2 && args[0] is AbFile && args[1] is Boolean) {
            return this.search_jo2_2(args[0], args[1]);
        }
        if (args.length == 2 && args[0] is String && args[1] is AbFile) {
            return this.search_jo2_3(args[0], args[1]);
        }
        if (args.length == 3 && args[0] is String && args[1] is AbFile && args[2] is Boolean) {
            return this.search_jo3_2(args[0], args[1], args[2]);
        }
        if (args.length == 2) {
            return this.search_jo2_4(args[0], args[1]);
        }
        if (args.length == 3) {
            return this.search_jo3_3(args[0], args[1], args[2]);
        }
        throw new JException("IllegalArgumentException", "search");
    }

    private function search_jo2_1(fileFilter:JFileFilter, file:AbFile):BasicArrayList {
        return this.search(fileFilter, file, false);
    }

    private function search_jo3_1(fileFilter:JFileFilter, file:AbFile, isRecursiveSearch:Boolean):BasicArrayList {
        var fileList:BasicArrayList = new BasicArrayListD();
        var recursiveFileList:BasicArrayList = null;
        if (file.isDirectory()) {
            var fileArray:Vector.<Object> = file.listFilesFileFilter(fileFilter);
            if (fileArray == null) {
                return fileList;
            }
            var files:Vector.<AbFile> = FileWrapperUtil.wrapFiles(fileArray);
            if (files == null) {
                return fileList;
            }
            var size:int = files.length;
            for (var index:int = 0; index < size; index++) {
                fileList.add(files[index]);
                if (isRecursiveSearch) {
                    recursiveFileList = this.search(fileFilter, files[index], isRecursiveSearch);
                    fileList.addAllList(recursiveFileList);
                }
            }
        }
        return fileList;
    }

    private function search_jo1(file:AbFile):BasicArrayList {
        return this.search(file, false);
    }

    private function search_jo2_2(file:AbFile, isRecursiveSearch:Boolean):BasicArrayList {
        var fileList:BasicArrayList = new BasicArrayListD();
        var recursiveFileList:BasicArrayList = null;
        if (file.isDirectory()) {
            var fileArray:Vector.<Object> = file.listFiles();
            if (fileArray == null) {
                return fileList;
            }
            var files:Vector.<AbFile> = FileWrapperUtil.wrapFiles(fileArray);
            if (files == null) {
                return fileList;
            }
            for (var index:int = 0; index < files.length; index++) {
                fileList.add(files[index]);
                if (isRecursiveSearch) {
                    recursiveFileList = this.search(files[index], isRecursiveSearch);
                    fileList.addAllList(recursiveFileList);
                }
            }
        }
        return fileList;
    }

    private function search_jo2_3(searchValue:String, file:AbFile):BasicArrayList {
        return this.search(searchValue, file, false);
    }

    private function search_jo3_2(searchValue:String, file:AbFile, isRecursiveSearch:Boolean):BasicArrayList {
        var fileList:BasicArrayList = new BasicArrayListD();
        var recursiveFileList:BasicArrayList = null;
        if (file.isDirectory()) {
            var fileArray:Vector.<Object> = file.listFiles();
            if (fileArray == null) {
                return fileList;
            }
            var files:Vector.<AbFile> = FileWrapperUtil.wrapFiles(fileArray);
            if (files == null) {
                return fileList;
            }
            for (var index:int = 0; index < files.length; index++) {
                if (JString.indexOf(files[index].getPath(), searchValue) >= 0) {
                    fileList.add(files[index]);
                }
                if (isRecursiveSearch) {
                    recursiveFileList = this.search(searchValue, files[index], isRecursiveSearch);
                    fileList.addAllList(recursiveFileList);
                }
            }
        }
        return fileList;
    }

    private function search_jo2_4(level:int, file:AbFile):BasicArrayList {
        return this.search(level, file, false);
    }

    private function search_jo3_3(level:int, file:AbFile, isRecursiveSearch:Boolean):BasicArrayList {
        var fileList:BasicArrayList = new BasicArrayListD();
        var recursiveFileList:BasicArrayList = null;
        if (file.isDirectory()) {
            var fileArray:Vector.<Object> = file.listFiles();
            if (fileArray == null) {
                return fileList;
            }
            var files:Vector.<AbFile> = FileWrapperUtil.wrapFiles(fileArray);
            if (files == null) {
                return fileList;
            }
            for (var index:int = 0; index < files.length; index++) {
                fileList.add(files[index]);
                if (level <= 0) {
                    return fileList;
                }
                recursiveFileList = this.search(int(level - 1), files[index], isRecursiveSearch);
                fileList.addAllList(recursiveFileList);
            }
        }
        return fileList;
    }
    
    
    
    
    
    
    
    }
}

