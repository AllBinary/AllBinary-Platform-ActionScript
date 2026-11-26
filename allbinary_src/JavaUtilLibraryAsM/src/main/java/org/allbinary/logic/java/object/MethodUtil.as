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
package org.allbinary.logic.java.object {
    import java.lang.reflect.JMethod;
    import org.allbinary.logic.string.StringMaker;

    public class MethodUtil {
    

    public function MethodUtil() {
        super();
    }
    

    public static function viewAll(myClass:String, lineBreak:String):String {
        var stringBuffer:StringMaker = new StringMaker();
        var method:Vector.<JMethod> = JClass.getMethods(myClass);
        stringBuffer.append("Methods: ");
        stringBuffer.append(lineBreak);
        for (var index:int = 0; index < method.length; index++) {
            stringBuffer.append(method[index].getReturnType());
            stringBuffer.append(" ");
            stringBuffer.append(method[index].getName());
            stringBuffer.append("(");
            ParamsUtil.viewParams(method[index].getParameterTypes());
            stringBuffer.append(")");
            stringBuffer.append(lineBreak);
        }
        return stringBuffer.toString();
    }
    }
}

