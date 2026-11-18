/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2026 AllBinary 
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
    import org.allbinary.logic.communication.log.LogUtil;
    import org.allbinary.logic.string.StringMaker;
    import org.allbinary.string.CommonStrings;

    public class PropertyInitUtil {
    private static var instance_value:PropertyInitUtil;
    private static var instance_set:Boolean = false;
    private static function get instance():PropertyInitUtil {
        if (!PropertyInitUtil.instance_set) {
            PropertyInitUtil.instance_set = true;
            PropertyInitUtil.instance_value = new PropertyInitUtil();
        }
        return PropertyInitUtil.instance_value;
    }
    

    public static function getInstance1(value:int):PropertyInitUtil {
        var commonStrings:CommonStrings = CommonStrings.getInstance();
        var logUtil:LogUtil = LogUtil.getInstance();
        logUtil.putF(new StringMaker().append("PropertyInitUtil: ").appendint(value).toString(), logUtil, commonStrings.CONSTRUCTOR);
        return PropertyInitUtil.instance;
    }
    }
}

