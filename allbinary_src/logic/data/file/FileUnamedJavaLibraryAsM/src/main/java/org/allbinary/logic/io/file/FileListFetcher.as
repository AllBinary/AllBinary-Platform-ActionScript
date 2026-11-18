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
    import org.allbinary.logic.io.file.directory.DirectoryBooleanFileVisitor;
    import org.allbinary.logic.io.file.directory.DirectoryOrIncludeFileExtensionAndTrackedBooleanFileVisitor;
    import org.allbinary.logic.io.file.directory.DirectoryOrIncludeFileExtensionBooleanFileVisitor;
    import org.allbinary.logic.io.file.directory.SubDirectory;
    import org.allbinary.logic.io.file.filter.VisitorFileFilter;
    import org.allbinary.util.BasicArrayList;
    import org.allbinary.util.BasicArrayListD;

    public class FileListFetcher {
    private static var instance_value:FileListFetcher;
    private static var instance_set:Boolean = false;
    private static function get instance():FileListFetcher {
        if (!FileListFetcher.instance_set) {
            FileListFetcher.instance_set = true;
            FileListFetcher.instance_value = new FileListFetcher();
        }
        return FileListFetcher.instance_value;
    }
        private var subDirectory:SubDirectory = null;

        // Java field initializers run after the base constructor
        private function initFieldsFileListFetcher():void {
    this.subDirectory = SubDirectory.getInstance();
        }

        public function FileListFetcher() {
            super();
            this.initFieldsFileListFetcher();
        }
    

    public static function getInstance():FileListFetcher {
        return FileListFetcher.instance;
    }
    

    public function getFiles(path:String):BasicArrayList {
        try {
            var files:BasicArrayList = this.subDirectory.search(AbFile.createAbFile(path));
            return files;
        } catch (e:*) {
            e.printStackTrace();
            trace("Error: " + String(e) + "\nMsg: " + e.getMessage());
        }
        return null;
    }
    

    public function getFiles(path:String, includeExtensions:Vector.<String>):BasicArrayList {
        try {
            var includeExtensionBasicArrayList:BasicArrayList = new BasicArrayListD();
            var size:int = includeExtensions.length;
            for (var index:int = 0; index < size; index++) {
                includeExtensionBasicArrayList.add(includeExtensions[index]);
            }
            var visitorFileFilter:VisitorFileFilter = new VisitorFileFilter(new DirectoryOrIncludeFileExtensionBooleanFileVisitor(includeExtensionBasicArrayList));
            var files:BasicArrayList = this.subDirectory.search(visitorFileFilter, AbFile.createAbFile(path));
            return files;
        } catch (e:*) {
            e.printStackTrace();
            trace("Error: " + String(e) + "\nMsg: " + e.getMessage());
        }
        return null;
    }
    

    public function getFiles(path:String, includeExtension:String):BasicArrayList {
        try {
            var includeExtensionBasicArrayList:BasicArrayList = new BasicArrayListD();
            includeExtensionBasicArrayList.add(includeExtension);
            var visitorFileFilter:VisitorFileFilter = new VisitorFileFilter(new DirectoryOrIncludeFileExtensionBooleanFileVisitor(includeExtensionBasicArrayList));
            var files:BasicArrayList = this.subDirectory.search(visitorFileFilter, AbFile.createAbFile(path));
            return files;
        } catch (e:*) {
            e.printStackTrace();
            trace("Error: " + String(e) + "\nMsg: " + e.getMessage());
        }
        return null;
    }
    

    public function getFiles(path:String, pathIncludes:String, includeExtension:String):BasicArrayList {
        try {
            var includeExtensionBasicArrayList:BasicArrayList = new BasicArrayListD();
            includeExtensionBasicArrayList.add(includeExtension);
            var visitorFileFilter:VisitorFileFilter = new VisitorFileFilter(new DirectoryOrIncludeFileExtensionBooleanFileVisitor(includeExtensionBasicArrayList, pathIncludes));
            var files:BasicArrayList = this.subDirectory.search(visitorFileFilter, AbFile.createAbFile(path));
            return files;
        } catch (e:*) {
            e.printStackTrace();
            trace("Error: " + String(e) + "\nMsg: " + e.getMessage());
        }
        return null;
    }
    

    public function getTrackedFiles(path:String, includeExtensions:Vector.<String>):BasicArrayList {
        try {
            var includeExtensionBasicArrayList:BasicArrayList = new BasicArrayListD();
            var size:int = includeExtensions.length;
            for (var index:int = 0; index < size; index++) {
                includeExtensionBasicArrayList.add(includeExtensions[index]);
            }
            var visitorFileFilter:VisitorFileFilter = new VisitorFileFilter(new DirectoryOrIncludeFileExtensionAndTrackedBooleanFileVisitor(includeExtensionBasicArrayList));
            var files:BasicArrayList = this.subDirectory.search(visitorFileFilter, AbFile.createAbFile(path));
            return files;
        } catch (e:*) {
            e.printStackTrace();
            trace("Error: " + String(e) + "\nMsg: " + e.getMessage());
        }
        return null;
    }
    

    public function getTrackedFiles(path:String, includeExtension:String):BasicArrayList {
        try {
            var includeExtensionBasicArrayList:BasicArrayList = new BasicArrayListD();
            includeExtensionBasicArrayList.add(includeExtension);
            var visitorFileFilter:VisitorFileFilter = new VisitorFileFilter(new DirectoryOrIncludeFileExtensionAndTrackedBooleanFileVisitor(includeExtensionBasicArrayList));
            var files:BasicArrayList = this.subDirectory.search(visitorFileFilter, AbFile.createAbFile(path));
            return files;
        } catch (e:*) {
            e.printStackTrace();
            trace("Error: " + String(e) + "\nMsg: " + e.getMessage());
        }
        return null;
    }
    

    public function getDirectories(path:String):BasicArrayList {
        try {
            var visitorFileFilter:VisitorFileFilter = new VisitorFileFilter(new DirectoryBooleanFileVisitor());
            var files:BasicArrayList = this.subDirectory.search(visitorFileFilter, AbFile.createAbFile(path));
            return files;
        } catch (e:*) {
            e.printStackTrace();
            trace("Error: " + String(e) + "\nMsg: " + e.getMessage());
        }
        return null;
    }
    }
}

