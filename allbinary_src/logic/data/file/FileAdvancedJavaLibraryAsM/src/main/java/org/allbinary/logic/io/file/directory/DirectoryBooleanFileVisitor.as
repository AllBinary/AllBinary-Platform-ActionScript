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
    import org.allbinary.logic.util.visitor.VisitorInterface;

    public class DirectoryBooleanFileVisitor implements VisitorInterface {
    

    public function DirectoryBooleanFileVisitor() {
        super();
    }
    

    public function visit(anyType:Object):Object {
        return (this.visit((anyType as AbFile)) as Object);
    }
    

    public function visit(file:AbFile):* {
        if (file.isDirectory()) {
            return true;
        }
        return false;
    }
    }
}

