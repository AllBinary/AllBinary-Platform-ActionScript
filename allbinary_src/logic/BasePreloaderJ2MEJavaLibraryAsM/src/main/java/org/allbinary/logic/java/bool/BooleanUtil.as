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
package org.allbinary.logic.java.bool {
    import org.allbinary.TsUtil;
    import org.allbinary.logic.string.StringMaker;
    import org.allbinary.logic.string.StringValidationUtil;

    public class BooleanUtil {
    private static var instance_value:BooleanUtil;
    private static var instance_set:Boolean = false;
    private static function get instance():BooleanUtil {
        if (!BooleanUtil.instance_set) {
            BooleanUtil.instance_set = true;
            BooleanUtil.instance_value = new BooleanUtil();
        }
        return BooleanUtil.instance_value;
    }
        private var tsUtil:TsUtil = null;

        // Java field initializers run after the base constructor
        private function initFieldsBooleanUtil():void {
    this.tsUtil = TsUtil.getInstance();
        }
    

    public static function getInstance():BooleanUtil {
        return BooleanUtil.instance;
    }
    

    public function BooleanUtil() {
        super();
        this.initFieldsBooleanUtil();
    }
    

    public function getFromString(booleanString:String):Boolean {
        var stringValidationUtil:StringValidationUtil = StringValidationUtil.getInstance();
        var booleanFactory:BooleanFactory = BooleanFactory.getInstance();
        if (stringValidationUtil.isEmpty(booleanString)) {
            return false;
        }
        var booleanStringLowerCase:String = booleanString.toLowerCase();
        if (this.tsUtil.compareTo(booleanStringLowerCase, booleanFactory.TRUE_STRING) == 0) {
            return true;
        } else if (this.tsUtil.compareTo(booleanStringLowerCase, booleanFactory.FALSE_STRING) == 0) {
            return false;
        } else {
            throw new JException("Exception", "Invalid booleanString - Must be true or false");
        }
    }
    

    public function isStringBoolean(booleanString:String):Boolean {
        var booleanFactory:BooleanFactory = BooleanFactory.getInstance();
        var booleanStringLowerCase:String = booleanString.toLowerCase();
        if (JString.compareTo(booleanStringLowerCase, booleanFactory.TRUE_STRING) == 0 || JString.compareTo(booleanStringLowerCase, booleanFactory.FALSE_STRING) == 0) {
            return true;
        }
        return false;
    }
    

    public function toStringFromBooleanArray(booleanArray:Vector.<Boolean>):String {
        var stringMaker:StringMaker = new StringMaker();
        var size:int = booleanArray.length;
        for (var index:int = 0; index < size; index++) {
            stringMaker.appendboolean(booleanArray[index]);
        }
        return stringMaker.toString();
    }
    }
}

