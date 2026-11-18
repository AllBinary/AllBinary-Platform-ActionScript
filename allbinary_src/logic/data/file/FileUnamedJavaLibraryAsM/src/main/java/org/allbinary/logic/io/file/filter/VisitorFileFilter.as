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
package org.allbinary.logic.io.file.filter {
    import java.io.JFile;
    import java.io.JFileFilter;
    import org.allbinary.logic.io.file.AbFile;
    import org.allbinary.logic.io.file.FileWrapperUtil;
    import org.allbinary.logic.util.visitor.VisitorInterface;

    public class VisitorFileFilter implements FileFilter {
        private var booleanVisitorInterface:VisitorInterface = null;

        // Java field initializers run after the base constructor
        private function initFieldsVisitorFileFilter():void {
    
        }
    

    public function VisitorFileFilter(booleanVisitorInterface:VisitorInterface) {
        super();
        this.initFieldsVisitorFileFilter();
        this.booleanVisitorInterface = booleanVisitorInterface;
    }
    

    public function accept(file:JFile):Boolean {
        var abFile:AbFile = FileWrapperUtil.wrapFile(file);
        var isFileAcceptable:Boolean = ((this.booleanVisitorInterface.visit(abFile) as *)).booleanValue();
        return isFileAcceptable || file.isDirectory();
    }
    

    public function accept(file:AbFile):Boolean {
        var isFileAcceptable:Boolean = ((this.booleanVisitorInterface.visit(file) as *)).booleanValue();
        return isFileAcceptable || file.isDirectory();
    }
    }
}

