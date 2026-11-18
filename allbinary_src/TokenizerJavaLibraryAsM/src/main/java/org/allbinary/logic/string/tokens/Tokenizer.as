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
package org.allbinary.logic.string.tokens {
    import org.allbinary.TsUtil;
    import org.allbinary.logic.StdUtil;
    import org.allbinary.logic.string.StringUtil;
    import org.allbinary.util.ABHashtable;
    import org.allbinary.util.BasicArrayList;
    import org.allbinary.util.BasicArrayListD;

    public class Tokenizer {
        private var sep:String = null;
        private var endSep:String = null;

        // Java field initializers run after the base constructor
        private function initFieldsTokenizer():void {
    
    this.endSep = StringUtil.getInstance().EMPTY_STRING;
        }
    

    public function Tokenizer(sep:String) {
        super();
        this.initFieldsTokenizer();
        if (TsUtil.getInstance().compareTo(sep, StringUtil.getInstance().EMPTY_STRING) == 0) {
            throw new JException("Exception", "Sep provided is not valid");
        }
        this.sep = sep;
    }
    

    public function setSep(sep:String):void {
        this.sep = sep;
    }
    

    public function setEndSep(endSep:String):void {
        this.endSep = endSep;
    }
    

    public function getInsideSep(string:String):BasicArrayList {
        var tokenList:BasicArrayList = new BasicArrayListD();
        var index:int = 0;
        var size:int = string.length;
        while (index < size) {
            index = JString.indexOf(string, this.sep, index);
            if (index != -1) {
                var end:int = JString.indexOf(string, this.endSep, int(index + this.sep.length));
                if (end != -1) {
                    tokenList.add(string.substring(int(index + this.sep.length), int(end - (int(this.endSep.length - 1)))));
                    index = int(end + this.endSep.length);
                } else {
                }
            } else {
                break;
            }
        }
        return tokenList;
    }
    

    public function getTokensFromString(string:String, tokenVector:BasicArrayList):BasicArrayList {
        var index:int = 0;
        var end:int = 0;
        while (index < string.length) {
            end = JString.indexOf(string, this.sep, index);
            if (end != -1) {
                tokenVector.add(string.substring(index, end));
                index = int(end + this.sep.length);
            } else {
                tokenVector.add(string.substring(index, string.length));
                break;
            }
        }
        return tokenVector;
    }
    

    public function getTokens(stringVector:BasicArrayList):ABHashtable {
        var tokenHashtable:ABHashtable = StdUtil.getInstance().createHashtable();
        var string:String = StringUtil.getInstance().EMPTY_STRING;
        var end:int = 0;
        var size:int = stringVector.size();
        for (var index:int = 0; index < size; index++) {
            string = (stringVector.objectArray[index] as String);
            end = JString.indexOf(string, this.sep);
            if (end >= 0) {
                tokenHashtable.put(string.substring(0, end), string.substring(int(end + 1), string.length));
            }
        }
        return tokenHashtable;
    }
    }
}

