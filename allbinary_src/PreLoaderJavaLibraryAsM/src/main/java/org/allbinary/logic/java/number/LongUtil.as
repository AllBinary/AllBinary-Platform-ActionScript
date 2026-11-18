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
package org.allbinary.logic.java.number {
    import org.allbinary.logic.string.StringMaker;
    import org.allbinary.string.CommonPhoneStrings;

    public class LongUtil {
    

    public function LongUtil() {
        super();
    }
    

    public static function fillIn(end:String):String {
        var frameStringBuffer:StringMaker = new StringMaker();
        if (frameStringBuffer.length() < LongData.MAX_LONG_LENGTH) {
            var commonPhoneStrings:CommonPhoneStrings = CommonPhoneStrings.getInstance();
            var size:int = int(LongData.MAX_LONG_LENGTH - frameStringBuffer.length());
            for (var index:int = 0; index < size; index++) {
                frameStringBuffer.append(commonPhoneStrings.ZERO);
            }
        }
        frameStringBuffer.append(end);
        return frameStringBuffer.toString();
    }
    }
}

