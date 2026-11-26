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
    import org.allbinary.logic.io.file.AbFile;
    import org.allbinary.logic.string.StringMaker;
    import org.allbinary.string.CommonSeps;
    import org.allbinary.util.BasicArrayList;

    public class SubDirectory {
    private static var instance_value:SubDirectory;
    private static var instance_set:Boolean = false;
    private static function get instance():SubDirectory {
        if (!SubDirectory.instance_set) {
            SubDirectory.instance_set = true;
            SubDirectory.instance_value = new SubDirectory();
        }
        return SubDirectory.instance_value;
    }
        private var directory:Directory = null;

        // Java field initializers run after the base constructor
        private function initFieldsSubDirectory():void {
    this.directory = Directory.getInstance();
        }
    

    public static function getInstance():SubDirectory {
        return SubDirectory.instance;
    }
    

    public function SubDirectory() {
        super();
        this.initFieldsSubDirectory();
    }
    

    public function search(...args):BasicArrayList {
        if (args.length == 2 && args[0] is JFileFilter && args[1] is AbFile) {
            return this.search_jo2_1(args[0], args[1]);
        }
        if (args.length == 1) {
            return this.search_jo1(args[0]);
        }
        if (args.length == 2 && args[0] is String && args[1] is AbFile) {
            return this.search_jo2_2(args[0], args[1]);
        }
        if (args.length == 2) {
            return this.search_jo2_3(args[0], args[1]);
        }
        throw new JException("IllegalArgumentException", "search");
    }

    private function search_jo2_1(fileFilter:JFileFilter, file:AbFile):BasicArrayList {
        return this.directory.search(fileFilter, file, true);
    }

    private function search_jo1(file:AbFile):BasicArrayList {
        return this.directory.search(file, true);
    }

    private function search_jo2_2(searchValue:String, file:AbFile):BasicArrayList {
        return this.directory.search(searchValue, file, true);
    }

    private function search_jo2_3(level:int, file:AbFile):BasicArrayList {
        return this.directory.search(level, file, true);
    }
    
    
    
    

    public static function toString1(files:BasicArrayList):String {
        var stringBuffer:StringMaker = new StringMaker();
        var NEW_LINE:String = CommonSeps.getInstance().NEW_LINE;
        var size:int = files.size();
        for (var index:int = 0; index < size; index++) {
            var file:AbFile = (files.get_(index) as AbFile);
            stringBuffer.append(file.getPath());
            stringBuffer.append(NEW_LINE);
        }
        return stringBuffer.toString();
    }
    }
}

