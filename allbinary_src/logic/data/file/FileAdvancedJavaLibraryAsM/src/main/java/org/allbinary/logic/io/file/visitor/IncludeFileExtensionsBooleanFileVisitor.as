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
package org.allbinary.logic.io.file.visitor {
    import org.allbinary.logic.io.file.AbFile;
    import org.allbinary.util.BasicArrayList;

    public class IncludeFileExtensionsBooleanFileVisitor extends BooleanFileVisitor {
    

    public function IncludeFileExtensionsBooleanFileVisitor(filterStringBasicArrayList:BasicArrayList) {
        super(filterStringBasicArrayList);
    }
    

    override public function visit(...args):* {
        if (args.length == 1) {
            return this.visit_jo1(args[0]);
        }
        if (args.length == 2) {
            return this.visit_jo2(args[0], args[1]);
        }
        return super.visit.apply(this, args);
    }

    private function visit_jo1(file:AbFile):* {
        if (this.getFilterStringBasicArrayList().size() == 0) {
            return false;
        }
        return super.visit(file);
    }

    private function visit_jo2(file:AbFile, fileNameString:String):* {
        var fileNameAndExtension:String = file.getPath();
        if (fileNameAndExtension.length > fileNameString.length) {
            var startIndex:int = int(fileNameAndExtension.length - fileNameString.length);
            var fileName:String = fileNameAndExtension.substring(startIndex);
            if (JString.compareTo(fileName, fileNameString) == 0) {
                return true;
            }
        }
        return false;
    }
    
    }
}

