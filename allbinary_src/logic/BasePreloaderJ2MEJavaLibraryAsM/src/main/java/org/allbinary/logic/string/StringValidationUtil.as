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
    import org.allbinary.TsUtil;

    public class StringValidationUtil {
    private static var instance_value:StringValidationUtil;
    private static var instance_set:Boolean = false;
    private static function get instance():StringValidationUtil {
        if (!StringValidationUtil.instance_set) {
            StringValidationUtil.instance_set = true;
            StringValidationUtil.instance_value = new StringValidationUtil();
        }
        return StringValidationUtil.instance_value;
    }
        private var stringUtil:StringUtil = null;
        private var tsUtil:TsUtil = null;

        // Java field initializers run after the base constructor
        private function initFieldsStringValidationUtil():void {
    this.stringUtil = StringUtil.getInstance();
    this.tsUtil = TsUtil.getInstance();
        }
    

    public static function getInstance():StringValidationUtil {
        return StringValidationUtil.instance;
    }
    

    public function StringValidationUtil() {
        super();
        this.initFieldsStringValidationUtil();
    }
    

    public function containsSpaces(value:String):Boolean {
        if (JString.indexOf(value, " ".charCodeAt(0)) >= 0) {
            return true;
        }
        return false;
    }
    

    public function isNumber(value:String):Boolean {
        var numberOfDecimalPoints:int = 0;
        for (var index:int = 0; index < value.length; index++) {
            var digit:int = value.charCodeAt(index);
            if (!this.isNumberFromChar(digit) && digit != ".".charCodeAt(0)) {
                return false;
            }
            if (digit == ".".charCodeAt(0)) {
                numberOfDecimalPoints++;
                if (numberOfDecimalPoints > 1) {
                    return false;
                }
            }
        }
        return true;
    }
    

    public function isNumberFromChar(digit:int):Boolean {
        if (digit != "0".charCodeAt(0) && digit != "1".charCodeAt(0) && digit != "2".charCodeAt(0) && digit != "3".charCodeAt(0) && digit != "4".charCodeAt(0) && digit != "5".charCodeAt(0) && digit != "6".charCodeAt(0) && digit != "7".charCodeAt(0) && digit != "8".charCodeAt(0) && digit != "9".charCodeAt(0)) {
            return false;
        }
        return true;
    }
    

    public function isValidRequired(value:String, min:int, max:int):Boolean {
        if (value.length < min || value.length > max) {
            return false;
        }
        return true;
    }
    

    public function isValidRequiredNumber(value:String, min:int, max:int):Boolean {
        if (this.isEmpty(value) || value.length < min || value.length > max) {
            return false;
        }
        if (!this.isNumber(value)) {
            return false;
        }
        return true;
    }
    

    public function isValidNotRequired(value:String, min:int, max:int):Boolean {
        if (value.length > 0) {
            if (value.length < min || value.length > max) {
                return false;
            }
        }
        return true;
    }
    

    public function isValidNotRequiredNumber(value:String, min:int, max:int):Boolean {
        if (value.length > 0) {
            if (this.tsUtil.compareTo(value, this.stringUtil.NULL_STRING) == 0 || value.length < min || value.length > max) {
                return false;
            }
            if (!this.isNumber(value)) {
                return false;
            }
        }
        return true;
    }
    

    public function isEmpty(string:String):Boolean {
        if (this.tsUtil.compareTo(string, this.stringUtil.NULL_STRING) != 0 && this.tsUtil.compareTo(string, this.stringUtil.EMPTY_STRING) != 0) {
            return false;
        } else {
            return true;
        }
    }
    }
}

