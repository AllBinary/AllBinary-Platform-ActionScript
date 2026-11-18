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
    import java.lang.JCharacter;

    public class StringValidationJSEUtil {
    

    public function StringValidationJSEUtil() {
        super();
    }
    

    public static function isBlank(string:String):Boolean {
        var len:int = string.length;
        for (var i:int = 0; i < len; i++) {
            var c:int = string.charCodeAt(i);
            if (JCharacter.isWhitespace(c) == false) {
                return false;
            }
        }
        return true;
    }
    }
}

