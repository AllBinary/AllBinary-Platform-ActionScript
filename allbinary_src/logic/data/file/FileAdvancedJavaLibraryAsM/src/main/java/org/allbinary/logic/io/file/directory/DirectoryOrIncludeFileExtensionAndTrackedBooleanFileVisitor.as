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
    import org.allbinary.java.runtime.process.git.GitProcessHelper;
    import org.allbinary.logic.io.file.AbFile;
    import org.allbinary.logic.io.file.CommonDataFileStrings;
    import org.allbinary.logic.io.file.visitor.IncludeFileExtensionsBooleanFileVisitor;
    import org.allbinary.util.BasicArrayList;
    import org.allbinary.util.BasicArrayListD;

    public class DirectoryOrIncludeFileExtensionAndTrackedBooleanFileVisitor extends IncludeFileExtensionsBooleanFileVisitor {
        private var trackedStrings:TrackedStrings = null;
        private var gitProcessHelper:GitProcessHelper = null;
        private var includesString:String = null;

        // Java field initializers run after the base constructor
        private function initFieldsDirectoryOrIncludeFileExtensionAndTrackedBooleanFileVisitor():void {
    this.trackedStrings = TrackedStrings.getInstance();
    this.gitProcessHelper = GitProcessHelper.getInstance();
    
        }
    

    public function DirectoryOrIncludeFileExtensionAndTrackedBooleanFileVisitor(filterStringBasicArrayList:BasicArrayList) {
        super(filterStringBasicArrayList);
        this.initFieldsDirectoryOrIncludeFileExtensionAndTrackedBooleanFileVisitor();
        this.includesString = null;
    }
    

    /* Java constructor: ActionScript classes have one constructor
    public function DirectoryOrIncludeFileExtensionAndTrackedBooleanFileVisitor(filterStringBasicArrayList:BasicArrayList, includesString:String = null) {
        super(filterStringBasicArrayList);
        this.initFieldsDirectoryOrIncludeFileExtensionAndTrackedBooleanFileVisitor();
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
    

    override public function visit(file:AbFile, fileNameString:String):* {
        var filePath:String = file.getPath();
        if (super.visit(file, fileNameString)) {
            if (!((filePath.indexOf(this.trackedStrings.APPLICATION) >= 0) || (filePath.indexOf(this.trackedStrings.APP) >= 0) || (filePath.indexOf(this.trackedStrings.HTML_TEMP) >= 0))) {
                if (!((filePath.indexOf(this.trackedStrings.TARGET_PATH_WINDOWS) >= 0) || (filePath.indexOf(this.trackedStrings.TARGET_PATH_UNIX) >= 0))) {
                    if (this.gitProcessHelper.isTracked(file)) {
                        return true;
                    } else {
                    }
                } else {
                }
            } else {
            }
        }
        return false;
    }
    

    public static function main(args:Vector.<String>):void {
        var commonFileStrings:CommonDataFileStrings = CommonDataFileStrings.getInstance();
        var list:BasicArrayList = new BasicArrayListD();
        list.add(commonFileStrings.JAVA);
        var filePath:String = "G:\\mnt\\bc\\mydev\\games\\ZeptoRacer\\platform\\j2se\\ZeptoRacerStaticPathsJ2SEM\\target\\dependency\\org\\allbinary\\logic\\system\\security\\licensing\\ZeptoRacerPCClientInformation.java";
        var result:Boolean = new DirectoryOrIncludeFileExtensionAndTrackedBooleanFileVisitor(list).visit(AbFile.createAbFileFromRawPath(filePath));
        trace(filePath + " is Tracked: " + String(result));
    }
    }
}

