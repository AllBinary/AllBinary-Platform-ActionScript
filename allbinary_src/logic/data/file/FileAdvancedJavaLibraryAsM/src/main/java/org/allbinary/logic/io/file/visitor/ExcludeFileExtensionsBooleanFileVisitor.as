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

    public class ExcludeFileExtensionsBooleanFileVisitor extends BooleanFileVisitor {
    

    public function ExcludeFileExtensionsBooleanFileVisitor(filterStringBasicArrayList:BasicArrayList) {
        super(filterStringBasicArrayList);
    }
    

    override public function visit(file:AbFile):* {
        if (this.getFilterStringBasicArrayList().size() == 0) {
            return true;
        }
        return super.visit(file);
    }
    

    override public function visit(file:AbFile, fileNameString:String):* {
        var fileNameAndExtension:String = file.getPath();
        if (fileNameAndExtension.length > fileNameString.length) {
            var startIndex:int = int(fileNameAndExtension.length - fileNameString.length);
            var fileName:String = fileNameAndExtension.substring(startIndex);
            if (JString.compareTo(fileName, fileNameString) == 0) {
                return false;
            }
        }
        return true;
    }
    }
}

