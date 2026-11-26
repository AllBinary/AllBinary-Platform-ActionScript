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

    public class VisitorFileFilter implements JFileFilter {
        private var booleanVisitorInterface:VisitorInterface = null;

        // Java field initializers run after the base constructor
        private function initFieldsVisitorFileFilter():void {
    
        }
    

    public function VisitorFileFilter(booleanVisitorInterface:VisitorInterface) {
        super();
        this.initFieldsVisitorFileFilter();
        this.booleanVisitorInterface = booleanVisitorInterface;
    }
    

    public function accept(...args):Boolean {
        if (args.length == 1 && args[0] is JFile) {
            return this.accept_jo1_1(args[0]);
        }
        if (args.length == 1) {
            return this.accept_jo1_2(args[0]);
        }
        throw new JException("IllegalArgumentException", "accept");
    }

    private function accept_jo1_1(file:JFile):Boolean {
        var abFile:AbFile = FileWrapperUtil.wrapFile(file);
        var isFileAcceptable:Boolean = Boolean(((this.booleanVisitorInterface.visit(abFile) as *)));
        return isFileAcceptable || file.isDirectory();
    }

    private function accept_jo1_2(file:AbFile):Boolean {
        var isFileAcceptable:Boolean = Boolean(((this.booleanVisitorInterface.visit(file) as *)));
        return isFileAcceptable || file.isDirectory();
    }
    
    }
}

