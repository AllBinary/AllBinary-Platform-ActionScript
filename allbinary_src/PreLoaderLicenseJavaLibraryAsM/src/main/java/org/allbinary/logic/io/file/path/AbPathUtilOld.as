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
package org.allbinary.logic.io.file.path {
    import org.allbinary.logic.communication.log.LogUtil;
    import org.allbinary.logic.io.file.FilePathData;
    import org.allbinary.logic.io.path.AbFilePath;
    import org.allbinary.logic.io.path.AbPath;
    import org.allbinary.logic.io.path.AbPathData;
    import org.allbinary.logic.string.StringUtil;
    import org.allbinary.logic.string.StringValidationUtil;
    import org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory;
    import org.allbinary.logic.communication.log.config.type.LogConfigTypes;

    //Used to correct user input for paths
    public class AbPathUtilOld {
    private static var instance_value:AbPathUtilOld;
    private static var instance_set:Boolean = false;
    private static function get instance():AbPathUtilOld {
        if (!AbPathUtilOld.instance_set) {
            AbPathUtilOld.instance_set = true;
            AbPathUtilOld.instance_value = new AbPathUtilOld();
        }
        return AbPathUtilOld.instance_value;
    }
    private static const MIN:int = 4;
        public var logUtil:LogUtil = null;
        private var abPathData:AbPathData = null;
        private var filePathData:FilePathData = null;

        // Java field initializers run after the base constructor
        private function initFieldsAbPathUtilOld():void {
    this.logUtil = LogUtil.getInstance();
    this.abPathData = AbPathData.getInstance();
    this.filePathData = FilePathData.getInstance();
        }
    

    public static function getInstance():AbPathUtilOld {
        return AbPathUtilOld.instance;
    }
    

    public function AbPathUtilOld() {
        super();
        this.initFieldsAbPathUtilOld();
    }
    

    public function getExtension(...args):String {
        if (args.length == 1 && args[0] is AbFilePath) {
            return this.getExtension_jo1_1(args[0]);
        }
        if (args.length == 1 && args[0] is AbPath) {
            return this.getExtension_jo1_2(args[0]);
        }
        if (args.length == 1) {
            return this.getExtension_jo1_3(args[0]);
        }
        throw new JException("IllegalArgumentException", "getExtension");
    }

    private function getExtension_jo1_1(abFilePath:AbFilePath):String {
        return this.getExtension(abFilePath.toString());
    }

    private function getExtension_jo1_2(abPath:AbPath):String {
        return this.getExtension(abPath.toString());
    }

    private function getExtension_jo1_3(filePath:String):String {
        if (filePath.length < AbPathUtilOld.MIN) {
            throw new JException("Exception", "Could not be a file path since its less that 4 characters");
        }
        var beginIndex:int = int(filePath.length - AbPathUtilOld.MIN);
        var extension:String = filePath.substring(int(beginIndex + 1));
        if (LogConfigTypes.LOGGING.contains(LogConfigTypeFactory.getInstance().VIEW)) {
            this.logUtil.putF("FileExtension: " + extension, this, "getExtension()");
        }
        return extension;
    }
    
    
    

    public function getWithoutExtension(...args):String {
        if (args.length == 1 && args[0] is AbFilePath) {
            return this.getWithoutExtension_jo1_1(args[0]);
        }
        if (args.length == 1 && args[0] is AbPath) {
            return this.getWithoutExtension_jo1_2(args[0]);
        }
        if (args.length == 1) {
            return this.getWithoutExtension_jo1_3(args[0]);
        }
        throw new JException("IllegalArgumentException", "getWithoutExtension");
    }

    private function getWithoutExtension_jo1_1(abFilePath:AbFilePath):String {
        return this.getWithoutExtension(abFilePath.toString());
    }

    private function getWithoutExtension_jo1_2(abPath:AbPath):String {
        return this.getWithoutExtension(abPath.toString());
    }

    private function getWithoutExtension_jo1_3(filePath:String):String {
        if (filePath.length < AbPathUtilOld.MIN) {
            throw new JException("Exception", "Could not be a file path since its less that 4 characters");
        }
        var endIndex:int = int(filePath.length - AbPathUtilOld.MIN);
        var pathWithoutExtension:String = filePath.substring(0, endIndex);
        if (LogConfigTypes.LOGGING.contains(LogConfigTypeFactory.getInstance().VIEW)) {
            this.logUtil.putF("FileWithoutExtension: " + pathWithoutExtension, this, "getWithoutExtension()");
        }
        return pathWithoutExtension;
    }
    
    
    

    public function isValid(path:String):Boolean {
        if (this.isValidStart(path)) {
            if (this.isValidEnd(path)) {
                return true;
            }
        }
        return false;
    }
    

    private function isValidStart(path:String):Boolean {
        if (path.charCodeAt(0) == this.abPathData.SEPARATORCHAR) {
            return true;
        } else {
            return false;
        }
    }
    

    private function isValidEnd(path:String):Boolean {
        if (StringValidationUtil.getInstance().isEmpty(path)) {
            return false;
        }
        if (path.charCodeAt(int(path.length - 1)) == this.abPathData.SEPARATORCHAR) {
            return true;
        } else {
            return false;
        }
    }
    

    public function adjustStart(path:String):String {
        if (!this.isValidStart(path)) {
            path = this.abPathData.SEPARATOR + path;
        }
        return path;
    }
    

    public function adjustEnd(path:String):String {
        if (!this.isValidEnd(path)) {
            path = path + this.abPathData.SEPARATOR;
        }
        return path;
    }
    

    public function adjust(path:String):String {
        if (StringValidationUtil.getInstance().isEmpty(path)) {
            return this.abPathData.SEPARATOR;
        }
        if (JString.indexOf(path, "\\") >= 0) {
            path = JString.replace(path, "\\".charCodeAt(0), this.abPathData.SEPARATORCHAR);
        }
        return path;
    }
    

    public function getNameFromPath(categoryPath:String):String {
        var endIndex:int = JString.lastIndexOf(categoryPath, this.abPathData.SEPARATOR);
        if (endIndex < 0) {
            endIndex = JString.lastIndexOf(categoryPath, this.filePathData.SEPARATORCHAR);
        }
        if (endIndex < 0) {
            return categoryPath;
        }
        if (categoryPath.length == int(endIndex + 1)) {
            categoryName = categoryPath.substring(0, endIndex);
            return this.getNameFromPath(categoryName);
        } else {
            var categoryName:String = categoryPath.substring(int(endIndex + 1));
            return categoryName;
        }
    }
    

    public function removeNameFromPath(categoryPath:String):AbPath {
        var endIndex:int = JString.lastIndexOf(categoryPath, this.abPathData.SEPARATOR);
        if (endIndex < 0) {
            endIndex = JString.lastIndexOf(categoryPath, this.filePathData.SEPARATORCHAR);
        }
        if (endIndex < 0) {
            return AbPath.createAbPath();
        }
        if (categoryPath.length == int(endIndex + 1)) {
            return this.removeNameFromPath(categoryPath.substring(0, int(endIndex - 1)));
        } else {
            var categoryName:String = categoryPath.substring(0, endIndex);
            return new AbPath(categoryName, StringUtil.getInstance().EMPTY_STRING);
        }
    }
    }
}

