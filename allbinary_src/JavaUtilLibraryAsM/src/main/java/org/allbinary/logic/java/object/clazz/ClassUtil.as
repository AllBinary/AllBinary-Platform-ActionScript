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
package org.allbinary.logic.java.anyType.clazz {
    import org.allbinary.logic.java.anyType.ConstructorUtil;
    import org.allbinary.logic.java.anyType.InterfaceUtil;
    import org.allbinary.logic.java.anyType.MethodUtil;
    import org.allbinary.logic.string.StringMaker;

    public class ClassUtil {
    

    public function ClassUtil() {
        super();
    }
    

    public static function viewAll(anyType:Object, lineBreak:String):String {
        if (anyType != null) {
            return ClassUtil.viewAll(JSystem.className(anyType), lineBreak);
        } else {
            return "Object Null";
        }
    }
    

    public static function viewAll(myClass:String, lineBreak:String):String {
        if (myClass != null) {
            var stringBuffer:StringMaker = new StringMaker();
            var classes:Vector.<String> = myClass.getClasses();
            stringBuffer.append(lineBreak);
            stringBuffer.append("Class: ");
            stringBuffer.append(myClass);
            stringBuffer.append(" uses ");
            stringBuffer.appendint(classes.length);
            stringBuffer.append(" other classes");
            stringBuffer.append(lineBreak);
            stringBuffer.append(lineBreak);
            stringBuffer.append("Classes: ");
            stringBuffer.append(lineBreak);
            for (var index:int = 0; index < classes.length; index++) {
                stringBuffer.append("Class: ");
                stringBuffer.append(classes[index].getName());
                stringBuffer.append(lineBreak);
            }
            stringBuffer.append(InterfaceUtil.viewAll(myClass, lineBreak));
            stringBuffer.append(lineBreak);
            stringBuffer.append(ConstructorUtil.viewAll(myClass, lineBreak));
            stringBuffer.append(lineBreak);
            stringBuffer.append(MethodUtil.viewAll(myClass, lineBreak));
            return stringBuffer.toString();
        } else {
            return "Class Null";
        }
    }
    }
}

