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
package org.allbinary.data {
    import org.allbinary.logic.string.StringMaker;
    import org.allbinary.logic.string.StringValidationUtil;
    import org.allbinary.logic.string.tokens.Tokenizer;
    import org.allbinary.string.CommonSeps;
    import org.allbinary.util.BasicArrayList;
    import org.allbinary.util.BasicArrayListD;
    import java.lang.JCharacter;

    public class CamelCaseUtil {
    private static var instance_value:CamelCaseUtil;
    private static var instance_set:Boolean = false;
    private static function get instance():CamelCaseUtil {
        if (!CamelCaseUtil.instance_set) {
            CamelCaseUtil.instance_set = true;
            CamelCaseUtil.instance_value = new CamelCaseUtil();
        }
        return CamelCaseUtil.instance_value;
    }
        private var commonSeps:CommonSeps = null;

        // Java field initializers run after the base constructor
        private function initFieldsCamelCaseUtil():void {
    this.commonSeps = CommonSeps.getInstance();
        }

        public function CamelCaseUtil() {
            super();
            this.initFieldsCamelCaseUtil();
        }
    

    public static function getInstance():CamelCaseUtil {
        return CamelCaseUtil.instance;
    }
    

    public function getAsCamelCase(string:String, stringBuilder:StringMaker):String {
        var stringValidationUtil:StringValidationUtil = StringValidationUtil.getInstance();
        stringBuilder.delete_(0, stringBuilder.length());
        var list:BasicArrayList = new BasicArrayListD();
        var tokenizer:Tokenizer = new Tokenizer(this.commonSeps.UNDERSCORE);
        tokenizer.getTokensFromString(string, list);
        var size:int = list.size();
        var word:String = null;
        for (var i:int = 0; i < size; i++) {
            word = (list.get_(i) as String);
            word = (stringValidationUtil.isEmpty(word) ? word : new StringMaker().appendchar(JCharacter.toUpperCase(word.charCodeAt(0))).append(word.substring(1).toLowerCase()).toString());
            stringBuilder.append(word);
        }
        return stringBuilder.toString();
    }
    }
}

