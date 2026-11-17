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
    import org.allbinary.string.CommonSeps;

    public class AbPathData {
    private static var instance_value:AbPathData;
    private static var instance_set:Boolean = false;
    private static function get instance():AbPathData {
        if (!AbPathData.instance_set) {
            AbPathData.instance_set = true;
            AbPathData.instance_value = new AbPathData();
        }
        return AbPathData.instance_value;
    }
        public var EXTENSION_SEP:String = null;
        public var SEPARATORCHAR:int = 0;
        public var SEPARATOR:String = null;

        // Java field initializers run after the base constructor
        private function initFieldsAbPathData():void {
    this.EXTENSION_SEP = CommonSeps.getInstance().PERIOD;
    this.SEPARATORCHAR = "/".charCodeAt(0);
    this.SEPARATOR = CommonSeps.getInstance().FORWARD_SLASH;
        }
    

    public static function getInstance():AbPathData {
        return AbPathData.instance;
    }
    

    public function AbPathData() {
        super();
        this.initFieldsAbPathData();
    }
    

    public function getExtensionIndex(filePath:String):int {
        var indexOfFileExtensionDelmiter:int = JString.lastIndexOf(filePath, this.EXTENSION_SEP);
        var indexOfLatDelimiter:int = JString.lastIndexOf(filePath, this.SEPARATORCHAR);
        if (indexOfFileExtensionDelmiter < 0) {
            return -1;
        }
        if (indexOfFileExtensionDelmiter < indexOfLatDelimiter) {
            return -1;
        }
        return indexOfFileExtensionDelmiter;
    }
    

    public function getExtensionWithDot(filePath:String):String {
        var indexOfFileExtensionDelmiter:int = this.getExtensionIndex(filePath);
        var extension:String = StringUtil.getInstance().EMPTY_STRING;
        if (indexOfFileExtensionDelmiter >= 0) {
            extension = filePath.substring(indexOfFileExtensionDelmiter);
        }
        return extension;
    }
    

    public function getExtension(filePath:String):String {
        var indexOfFileExtensionDelmiter:int = this.getExtensionIndex(filePath);
        var extension:String = StringUtil.getInstance().EMPTY_STRING;
        if (indexOfFileExtensionDelmiter >= 0) {
            extension = filePath.substring(int(indexOfFileExtensionDelmiter + 1));
        }
        return extension;
    }
    

    public function getNameFromPath(path:String):String {
        var endIndex:int = JString.lastIndexOf(path, this.SEPARATORCHAR);
        if (endIndex < 0) {
            endIndex = JString.lastIndexOf(path, FilePathData.getInstance().SEPARATORCHAR);
        }
        if (endIndex < 0) {
            return path;
        }
        if (path.length == int(endIndex + 1)) {
            categoryName = path.substring(0, endIndex);
            return this.getNameFromPath(categoryName);
        } else {
            var categoryName:String = path.substring(int(endIndex + 1));
            return categoryName;
        }
    }
    

    public function removeNameFromPath(path:String):String {
        var endIndex:int = JString.lastIndexOf(path, this.SEPARATORCHAR);
        if (endIndex < 0) {
            endIndex = JString.lastIndexOf(path, FilePathData.getInstance().SEPARATORCHAR);
        }
        if (endIndex < 0) {
            return StringUtil.getInstance().EMPTY_STRING;
        }
        if (path.length == int(endIndex + 1)) {
            return this.removeNameFromPath(path.substring(0, int(endIndex - 1)));
        } else {
            var pathWithoutName:String = path.substring(0, endIndex);
            return pathWithoutName;
        }
    }
    }
}

