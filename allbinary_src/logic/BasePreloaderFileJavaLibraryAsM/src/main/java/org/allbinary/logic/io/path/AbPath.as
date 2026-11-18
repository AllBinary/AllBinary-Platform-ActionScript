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
    import org.allbinary.logic.io.file.FilePathUtil;
    import org.allbinary.logic.string.StringMaker;
    import org.allbinary.logic.string.StringUtil;
    import org.allbinary.logic.string.StringValidationUtil;
    import org.allbinary.string.CommonSeps;

    public class AbPath {
    private static const NETWORK_SEP:String = ":/";
        private var commonSeps:CommonSeps = null;
        private var abPathData:AbPathData = null;
        private var abPathUtil:PathUtil = null;
        private var EMPTY_STRING:String = null;
        public var schema:String = null;
        private var path:String = null;
        public var nameP:String = null;
        private var hasSchemaP:Boolean = false;
        private var numberOfSeps:int = 0;

        // Java field initializers run after the base constructor
        private function initFieldsAbPath():void {
    this.commonSeps = CommonSeps.getInstance();
    this.abPathData = AbPathData.getInstance();
    this.abPathUtil = PathUtil.getInstance();
    this.EMPTY_STRING = StringUtil.getInstance().EMPTY_STRING;
    this.schema = this.EMPTY_STRING;
    this.path = this.EMPTY_STRING;
    this.nameP = this.EMPTY_STRING;
    this.hasSchemaP = false;
    this.numberOfSeps = 0;
        }
    

    public static function createAbPath():AbPath {
        try {
            var EMPTY_STRING:String = StringUtil.getInstance().EMPTY_STRING;
            return new AbPath(EMPTY_STRING, EMPTY_STRING);
        } catch (ex:*) {
            throw new JException("RuntimeException", "");
        }
    }
    

    public function AbPath(aPath:String, name:String) {
        super();
        this.initFieldsAbPath();
        var stringValidationUtil:StringValidationUtil = StringValidationUtil.getInstance();
        if (!stringValidationUtil.isEmpty(aPath)) {
            this.schema = this.getSchema(aPath);
            this.nameP = name;
            this.path = this.abPathUtil.adjustEnd(this.abPathUtil.adjust(this.getPathFromPath(aPath)));
        } else {
            this.init();
            if (!stringValidationUtil.isEmpty(name)) {
                this.nameP = name;
            }
        }
    }
    

    private function init():void {
        this.schema = this.EMPTY_STRING;
        this.setPath(this.abPathData.SEPARATOR);
        this.nameP = this.EMPTY_STRING;
    }
    

    public function getSchema(aPath:String):String {
        var beginIndex:int = JString.indexOf(aPath, this.commonSeps.COLON);
        if (beginIndex >= 0) {
            this.hasSchemaP = true;
            return aPath.substring(0, beginIndex);
        }
        this.hasSchemaP = false;
        return this.EMPTY_STRING;
    }
    

    public function hasSchema():Boolean {
        return this.hasSchemaP;
    }
    

    public function getPathFromPath(aPath:String):String {
        var filePathData:FilePathData = FilePathData.getInstance();
        var tempPath:String = aPath;
        if (!this.hasSchema()) {
            tempPath = this.abPathUtil.adjustStart(tempPath);
        } else {
            var beginIndex:int = JString.indexOf(tempPath, this.commonSeps.COLON);
            if (beginIndex >= 0) {
                beginIndex++;
                while (tempPath.charCodeAt(beginIndex) == this.abPathData.SEPARATORCHAR || tempPath.charCodeAt(beginIndex) == filePathData.SEPARATORCHAR) {
                    beginIndex++;
                    this.numberOfSeps++;
                    if (this.numberOfSeps > 2) {
                        throw new JException("Exception", "Should Not Have More Than Two Seps");
                    }
                }
                tempPath = tempPath.substring(beginIndex, tempPath.length);
            }
        }
        return tempPath;
    }
    

    public function setName(name:String):void {
        this.nameP = name;
    }
    

    public function getName():String {
        return this.nameP;
    }
    

    public function toString():String {
        var stringBuffer:StringMaker = new StringMaker();
        if (this.hasSchema()) {
            stringBuffer.append(this.schema);
            stringBuffer.append(AbPath.NETWORK_SEP);
        }
        stringBuffer.append(this.getPath());
        stringBuffer.append(this.nameP);
        return stringBuffer.toString();
    }
    

    public function toFileSystemString():String {
        if (this.hasSchema()) {
            var filePathData:FilePathData = FilePathData.getInstance();
            var stringBuffer:StringMaker = new StringMaker();
            stringBuffer.append(this.schema);
            stringBuffer.append(this.commonSeps.COLON);
            stringBuffer.append(filePathData.PATH_START);
            stringBuffer.append(FilePathUtil.adjust(this.getPath()));
            stringBuffer.append(this.nameP);
            return stringBuffer.toString();
        } else {
            return FilePathUtil.adjust(this.getPath()) + this.nameP;
        }
    }
    

    public function getPath():String {
        return this.path;
    }
    

    public function setPath(path:String):void {
        this.path = path;
    }
    }
}

