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
    import org.allbinary.logic.io.file.AbFile;
    import org.allbinary.logic.io.file.visitor.IncludeFileExtensionsBooleanFileVisitor;
    import org.allbinary.util.BasicArrayList;

    public class DirectoryOrIncludeFileExtensionBooleanFileVisitor extends IncludeFileExtensionsBooleanFileVisitor {
        private var includesString:String = null;

        // Java field initializers run after the base constructor
        private function initFieldsDirectoryOrIncludeFileExtensionBooleanFileVisitor():void {
    
        }
    

    public function DirectoryOrIncludeFileExtensionBooleanFileVisitor(filterStringBasicArrayList:BasicArrayList) {
        super(filterStringBasicArrayList);
        this.initFieldsDirectoryOrIncludeFileExtensionBooleanFileVisitor();
        this.includesString = null;
    }
    

    /* Java constructor: ActionScript classes have one constructor
    public function DirectoryOrIncludeFileExtensionBooleanFileVisitor(filterStringBasicArrayList:BasicArrayList, includesString:String = null) {
        super(filterStringBasicArrayList);
        this.initFieldsDirectoryOrIncludeFileExtensionBooleanFileVisitor();
        this.includesString = includesString;
    }
    */
    

    override public function visit(file:AbFile):* {
        if (file.isDirectory()) {
            return true;
        }
        if (this.includesString == null || file.getAbsolutePath().indexOf(this.includesString) >= 0) {
            return super.visit(file);
        } else {
            return false;
        }
    }
    }
}

