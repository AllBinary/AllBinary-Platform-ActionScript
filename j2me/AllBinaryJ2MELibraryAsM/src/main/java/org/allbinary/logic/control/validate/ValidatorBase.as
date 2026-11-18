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
package org.allbinary.logic.control.validate {
    import org.allbinary.logic.StdUtil;
    import org.allbinary.logic.java.bool.BooleanFactory;
    import org.allbinary.logic.string.StringUtil;
    import org.allbinary.util.BasicArrayList;
    import org.allbinary.util.BasicArrayListUtil;
    import org.allbinary.util.ABHashtable;

    public class ValidatorBase implements ValidatorBaseInterface {
    private static var instance_value:ValidatorBase;
    private static var instance_set:Boolean = false;
    private static function get instance():ValidatorBase {
        if (!ValidatorBase.instance_set) {
            ValidatorBase.instance_set = true;
            ValidatorBase.instance_value = new ValidatorBase();
        }
        return ValidatorBase.instance_value;
    }
    

    public static function getInstance():ValidatorBase {
        return ValidatorBase.instance;
    }
    

    public function ValidatorBase() {
        super();
    }
    

    public function isValid():* {
        return BooleanFactory.getInstance().TRUE;
    }
    

    public function validationInfo():String {
        return StringUtil.getInstance().EMPTY_STRING;
    }
    

    public function toHashtable():ABHashtable {
        return StdUtil.getInstance().NULL_TABLE;
    }
    

    public function toList():BasicArrayList {
        return BasicArrayListUtil.getInstance().getImmutableInstance();
    }
    }
}

