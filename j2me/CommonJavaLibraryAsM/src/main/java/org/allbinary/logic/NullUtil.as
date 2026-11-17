/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2025 AllBinary 
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
package org.allbinary.logic {

    //ActualPlatform
    public class NullUtil {
    private static var instance_value:NullUtil;
    private static var instance_set:Boolean = false;
    private static function get instance():NullUtil {
        if (!NullUtil.instance_set) {
            NullUtil.instance_set = true;
            NullUtil.instance_value = new NullUtil();
        }
        return NullUtil.instance_value;
    }
        public var NULL_OBJECT:Object = null;
        public var NULL_CLASS:String = null;
        public var NULL_OBJECT_ARRAY:Vector.<Object> = null;
        public var NULL_CHAR_ARRAY:Vector.<int> = null;
        public var NULL_BYTE_ARRAY:Vector.<int> = null;
        public var NULL_SHORT_ARRAY_ARRAY:Vector.<Vector.<int>> = null;
        public var NULL_INT_ARRAY:Vector.<int> = null;
        public var NULL_INT_ARRAY_ARRAY:Vector.<Vector.<int>> = null;
        public var NULL_INT_ARRAY_ARRAY_ARRAY:Vector.<Vector.<Vector.<int>>> = null;
        public var NULL_FLOAT_ARRAY:Vector.<Number> = null;

        // Java field initializers run after the base constructor
        private function initFieldsNullUtil():void {
    this.NULL_OBJECT = new Object();
    this.NULL_CLASS = JSystem.className(this.NULL_OBJECT);
    this.NULL_OBJECT_ARRAY = new Vector.<Object>(0);
    this.NULL_CHAR_ARRAY = new Vector.<int>(0);
    this.NULL_BYTE_ARRAY = new Vector.<int>(0);
    this.NULL_SHORT_ARRAY_ARRAY = (function():Vector.<Vector.<int>> { var array:Vector.<Vector.<int>> = new Vector.<Vector.<int>>(0); for (var index:int = 0; index < array.length; index++) { array[index] = new Vector.<int>(0); } return array; })();
    this.NULL_INT_ARRAY = new Vector.<int>(0);
    this.NULL_INT_ARRAY_ARRAY = (function():Vector.<Vector.<int>> { var array:Vector.<Vector.<int>> = new Vector.<Vector.<int>>(0); for (var index:int = 0; index < array.length; index++) { array[index] = new Vector.<int>(0); } return array; })();
    this.NULL_INT_ARRAY_ARRAY_ARRAY = (function():Vector.<Vector.<Vector.<int>>> { var array:Vector.<Vector.<Vector.<int>>> = new Vector.<Vector.<Vector.<int>>>(0); for (var index:int = 0; index < array.length; index++) { array[index] = (function():Vector.<Vector.<int>> { var array:Vector.<Vector.<int>> = new Vector.<Vector.<int>>(0); for (var index:int = 0; index < array.length; index++) { array[index] = new Vector.<int>(0); } return array; })(); } return array; })();
    this.NULL_FLOAT_ARRAY = JArrays.numbers(0);
        }

        public function NullUtil() {
            super();
            this.initFieldsNullUtil();
        }
    

    public static function getInstance():NullUtil {
        return NullUtil.instance;
    }
    }
}

