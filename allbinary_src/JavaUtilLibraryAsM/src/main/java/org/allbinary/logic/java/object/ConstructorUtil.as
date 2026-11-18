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
package org.allbinary.logic.java.anyType {
    import org.allbinary.logic.string.StringMaker;
    import org.allbinary.string.CommonSeps;

    public class ConstructorUtil {
    

    public function ConstructorUtil() {
        super();
    }
    

    public static function viewAll(myClass:String, lineBreak:String):String {
        var stringBuffer:StringMaker = new StringMaker();
        var constructor:Vector.<Constructor> = myClass.getConstructors();
        stringBuffer.append("Constructors: ");
        stringBuffer.append(lineBreak);
        for (var index:int = 0; index < constructor.length; index++) {
            stringBuffer.append(ConstructorUtil.view(constructor[index], lineBreak));
        }
        return stringBuffer.toString();
    }
    

    public static function view(constructor:Constructor, lineBreak:String):String {
        if (constructor != null) {
            var commonSeps:CommonSeps = CommonSeps.getInstance();
            var stringBuffer:StringMaker = new StringMaker();
            stringBuffer.append(constructor.getName());
            var classes:Vector.<String> = constructor.getParameterTypes();
            for (var index:int = 0; index < classes.length; index++) {
                stringBuffer.append(commonSeps.SPACE);
                stringBuffer.append(classes[index].getName());
                stringBuffer.append(commonSeps.COLON);
                stringBuffer.appendint(index);
            }
            stringBuffer.append(lineBreak);
            return stringBuffer.toString();
        } else {
            return "Constructor Null";
        }
    }
    }
}

