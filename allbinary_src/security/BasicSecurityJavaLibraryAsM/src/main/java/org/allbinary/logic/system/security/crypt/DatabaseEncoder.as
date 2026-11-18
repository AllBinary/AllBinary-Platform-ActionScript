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
package org.allbinary.logic.system.security.crypt {
    import org.allbinary.logic.NullUtil;
    import org.allbinary.logic.communication.log.PreLogUtil;
    import org.allbinary.logic.string.StringMaker;
    import org.allbinary.logic.string.StringUtil;
    import org.allbinary.logic.string.tokens.Tokenizer;
    import org.allbinary.string.CommonSeps;
    import org.allbinary.string.CommonStrings;
    import org.allbinary.util.BasicArrayList;
    import org.allbinary.util.BasicArrayListD;
    import java.lang.JByte;

    public class DatabaseEncoder {
    

    public function DatabaseEncoder() {
        super();
    }
    

    public static function encode(value:Vector.<int>):String {
        try {
            var array:Vector.<int> = value;
            var stringBuffer:StringMaker = new StringMaker();
            for (var index:int = 0; index < array.length; index++) {
                stringBuffer.append(array[index].toString());
                if (index < int(array.length - 1)) {
                    stringBuffer.append(CommonSeps.getInstance().SPACE);
                }
            }
            return stringBuffer.toString();
        } catch (e:*) {
            var commonStrings:CommonStrings = CommonStrings.getInstance();
            PreLogUtil.putOE(commonStrings.EXCEPTION, "DatabaseEncoder", "decode", e);
            return StringUtil.getInstance().EMPTY_STRING;
        }
    }
    

    public static function decode(value:String):Vector.<int> {
        try {
            var tokenizer:Tokenizer = new Tokenizer(CommonSeps.getInstance().SPACE);
            var vector:BasicArrayList = tokenizer.getTokensFromString(value, new BasicArrayListD());
            var size:int = vector.size();
            var decode:Vector.<int> = new Vector.<int>(size);
            var byteOfData:String = null;
            for (var index:int = 0; index < size; index++) {
                byteOfData = (vector.objectArray[index] as String);
                decode[index] = JByte.parseByte(byteOfData);
            }
            return decode;
        } catch (e:*) {
            var commonStrings:CommonStrings = CommonStrings.getInstance();
            PreLogUtil.putSE(commonStrings.EXCEPTION, "DatabaseEncoder", "decode", e);
            return NullUtil.getInstance().NULL_BYTE_ARRAY;
        }
    }
    }
}

