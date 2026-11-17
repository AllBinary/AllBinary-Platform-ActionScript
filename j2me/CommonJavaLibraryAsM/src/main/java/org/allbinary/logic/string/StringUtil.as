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
package org.allbinary.logic.string {

    public class StringUtil {
    private static var instance_value:StringUtil;
    private static var instance_set:Boolean = false;
    private static function get instance():StringUtil {
        if (!StringUtil.instance_set) {
            StringUtil.instance_set = true;
            StringUtil.instance_value = new StringUtil();
        }
        return StringUtil.instance_value;
    }
        public var INIT_STRING:String = null;
        public var NULL_STRING:String = null;
        public var EMPTY_STRING:String = null;
        public var ONE_EMPTY_STRING_ARRAY:Vector.<String> = null;
        public var ONE_EMPTY_STRING_ARRAY_OF_ARRAYS:Vector.<Vector.<String>> = null;
        private var stringArray:Vector.<String> = null;

        // Java field initializers run after the base constructor
        private function initFieldsStringUtil():void {
    this.INIT_STRING = "";
    this.NULL_STRING = "null";
    this.EMPTY_STRING = "";
    this.ONE_EMPTY_STRING_ARRAY = new <String>[this.EMPTY_STRING];
    this.ONE_EMPTY_STRING_ARRAY_OF_ARRAYS = (function():Vector.<Vector.<String>> { var array:Vector.<Vector.<String>> = new Vector.<Vector.<String>>(0); for (var index:int = 0; index < array.length; index++) { array[index] = new Vector.<String>(0); } return array; })();
    this.stringArray = new Vector.<String>(0);
        }
    

    public static function getInstance():StringUtil {
        return StringUtil.instance;
    }
    

    public function StringUtil() {
        super();
        this.initFieldsStringUtil();
    }
    

    public function getNonNull(string:String):String {
        return string;
    }
    

    public function getArrayInstance():Vector.<String> {
        return this.stringArray;
    }
    

    public function count(string:String, aChar:int):int {
        var count:int = 0;
        var size:int = string.length;
        for (var index:int = 0; index < size; index++) {
            if (string.charCodeAt(index) == aChar) {
                count++;
            }
        }
        return count;
    }
    

    public function toString1(anyType:Object):String {
        if (anyType != null) {
            return anyType.toString();
        } else {
            return this.NULL_STRING;
        }
    }
    }
}

