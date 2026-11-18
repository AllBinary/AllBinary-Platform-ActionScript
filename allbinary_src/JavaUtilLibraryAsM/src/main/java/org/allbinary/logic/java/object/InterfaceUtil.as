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

    public class InterfaceUtil {
    

    public function InterfaceUtil() {
        super();
    }
    

    public static function viewAll(myClass:String, lineBreak:String):String {
        var stringBuffer:StringMaker = new StringMaker();
        var interfaces:Vector.<String> = myClass.getInterfaces();
        stringBuffer.append(lineBreak);
        stringBuffer.append("Interfaces: ");
        stringBuffer.append(lineBreak);
        for (var index:int = 0; index < interfaces.length; index++) {
            stringBuffer.append("Interface: ");
            stringBuffer.append(interfaces[index].getName());
            stringBuffer.append(lineBreak);
        }
        return stringBuffer.toString();
    }
    

    public static function getClass(interfaceName:String, interfaces:Vector.<String>):String {
        if (interfaceName != null && interfaces != null && interfaces.length > 0) {
            for (var index:int = 0; index < interfaces.length; index++) {
                if (interfaces[index].getName().indexOf(interfaceName) >= 0) {
                    return interfaces[index];
                }
            }
        }
        return null;
    }
    

    public static function isImplemented(clazz:String, anyType:Object):Boolean {
        var classes:Vector.<String> = JSystem.className(anyType).getInterfaces();
        for (var index:int = 0; index < classes.length; index++) {
            if (JSystem.compareToObject(clazz, classes[index].getName()) == 0) {
                return true;
            }
        }
        return false;
    }
    

    public static function isImplemented(className:String, anyType:Object):Boolean {
        var classes:Vector.<String> = JSystem.className(anyType).getInterfaces();
        for (var index:int = 0; index < classes.length; index++) {
            if (classes[index].getName().indexOf(className) == 0) {
                return true;
            }
        }
        return false;
    }
    

    public static function isImplementedView(clazz:String, anyType:Object):String {
        var stringBuffer:StringMaker = new StringMaker();
        var classes:Vector.<String> = JSystem.className(anyType).getInterfaces();
        stringBuffer.append("isImplementedView: \n");
        for (var index:int = 0; index < classes.length; index++) {
            stringBuffer.append(clazz);
            stringBuffer.append(" should be = ");
            stringBuffer.append(classes[index].getName());
            stringBuffer.append(classes[index].getName());
            stringBuffer.append(CommonSeps.getInstance().NEW_LINE);
        }
        return stringBuffer.toString();
    }
    }
}

