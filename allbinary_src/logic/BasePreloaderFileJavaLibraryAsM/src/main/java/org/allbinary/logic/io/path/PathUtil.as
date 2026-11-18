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
package org.allbinary.logic.io.path {
    import org.allbinary.logic.io.file.FilePathData;
    import org.allbinary.logic.string.StringUtil;
    import org.allbinary.logic.string.StringValidationUtil;

    //Used to correct user input for paths
    public class PathUtil {
    private static var instance_value:PathUtil;
    private static var instance_set:Boolean = false;
    private static function get instance():PathUtil {
        if (!PathUtil.instance_set) {
            PathUtil.instance_set = true;
            PathUtil.instance_value = new PathUtil();
        }
        return PathUtil.instance_value;
    }
        private var abPathData:AbPathData = null;
        private var filePathData:FilePathData = null;

        // Java field initializers run after the base constructor
        private function initFieldsPathUtil():void {
    this.abPathData = AbPathData.getInstance();
    this.filePathData = FilePathData.getInstance();
        }
    

    public static function getInstance():PathUtil {
        return PathUtil.instance;
    }
    

    public function PathUtil() {
        super();
        this.initFieldsPathUtil();
    }
    

    public function getExtensionWithAbFilePath(abFilePath:AbFilePath):String {
        return this.abPathData.getExtension(abFilePath.toString());
    }
    

    public function getExtensionWithAbPath(abPath:AbPath):String {
        return this.abPathData.getExtension(abPath.toString());
    }
    

    public function getWithoutExtensionWithAbFilePath(abFilePath:AbFilePath):String {
        return this.getWithoutExtension(abFilePath.toString());
    }
    

    public function getWithoutExtensionWithAbPath(abPath:AbPath):String {
        return this.getWithoutExtension(abPath.toString());
    }
    

    public function getWithoutExtension(filePath:String):String {
        var indexOfFileExtensionDelmiter:int = this.abPathData.getExtensionIndex(filePath);
        var pathWithoutExtension:String = filePath;
        if (indexOfFileExtensionDelmiter >= 0) {
            pathWithoutExtension = filePath.substring(0, indexOfFileExtensionDelmiter);
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
        if (path.charCodeAt(0) == this.abPathData.SEPARATORCHAR || path.charCodeAt(0) == ".".charCodeAt(0)) {
            return true;
        } else {
            return false;
        }
    }
    

    private function isValidEnd(path:String):Boolean {
        var stringValidationUtil:StringValidationUtil = StringValidationUtil.getInstance();
        if (stringValidationUtil.isEmpty(path)) {
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
        var stringValidationUtil:StringValidationUtil = StringValidationUtil.getInstance();
        if (stringValidationUtil.isEmpty(path)) {
            return this.abPathData.SEPARATOR;
        }
        if (JString.indexOf(path, "\\") >= 0) {
            path = JString.replace(path, "\\".charCodeAt(0), this.abPathData.SEPARATORCHAR);
        }
        return path;
    }
    

    public function removeNameFromPath(path:String):AbPath {
        var endIndex:int = JString.lastIndexOf(path, this.abPathData.SEPARATOR);
        if (endIndex < 0) {
            endIndex = JString.lastIndexOf(path, this.filePathData.SEPARATORCHAR);
        }
        if (endIndex < 0) {
            return AbPath.createAbPath();
        }
        if (path.length == int(endIndex + 1)) {
            return this.removeNameFromPath(path.substring(0, int(endIndex - 1)));
        } else {
            var pathWithoutName:String = path.substring(0, endIndex);
            return new AbPath(pathWithoutName, StringUtil.getInstance().EMPTY_STRING);
        }
    }
    }
}

