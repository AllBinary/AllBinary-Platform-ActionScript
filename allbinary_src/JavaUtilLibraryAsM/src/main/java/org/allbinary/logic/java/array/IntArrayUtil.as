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
package org.allbinary.logic.java.array {
    import org.allbinary.logic.string.StringMaker;

    public class IntArrayUtil {
    

    public function IntArrayUtil() {
        super();
    }
    

    public static function toString1(array:Vector.<int>):String {
        var stringBuffer:StringMaker = new StringMaker();
        for (var index:int = 0; index < array.length; index++) {
            stringBuffer.appendint(array[index]);
            if (index < array.length) {
                stringBuffer.append(", ");
            }
        }
        return stringBuffer.toString();
    }
    

    public static function toString1(array:Vector.<Vector.<int>>):String {
        var stringBuffer:StringMaker = new StringMaker();
        for (var index:int = 0; index < array.length; index++) {
            stringBuffer.append("{");
            for (var index2:int = 0; index2 < array[index].length; index2++) {
                stringBuffer.appendint(array[index][index2]);
                if (index2 < int(array[index].length - 1)) {
                    stringBuffer.append(", ");
                }
            }
            stringBuffer.append("}");
            if (index < int(array.length - 1)) {
                stringBuffer.append(", \n");
            }
        }
        return stringBuffer.toString();
    }
    

    public static function toString1(array:Vector.<Vector.<Vector.<int>>>):String {
        var stringBuffer:StringMaker = new StringMaker();
        for (var index:int = 0; index < array.length; index++) {
            stringBuffer.append("{");
            for (var index2:int = 0; index2 < array[index].length; index2++) {
                stringBuffer.append("{");
                for (var index3:int = 0; index3 < array[index][index2].length; index3++) {
                    stringBuffer.appendint(array[index][index2][index3]);
                    if (index3 < int(array[index][index2].length - 1)) {
                        stringBuffer.append(", ");
                    }
                }
                stringBuffer.append("}");
                if (index2 < int(array[index].length - 1)) {
                    stringBuffer.append(", ");
                }
            }
            stringBuffer.append("}");
            if (index < int(array.length - 1)) {
                stringBuffer.append(", \n");
            }
        }
        return stringBuffer.toString();
    }
    }
}

