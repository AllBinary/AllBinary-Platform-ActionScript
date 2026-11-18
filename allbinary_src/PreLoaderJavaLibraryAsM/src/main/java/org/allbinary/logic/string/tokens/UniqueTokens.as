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
    import java.util.JHashSet;
    import org.allbinary.logic.io.path.AbPathData;
    import org.allbinary.logic.string.regex.replace.Replace;
    import org.allbinary.string.CommonPhoneStrings;
    import org.allbinary.string.CommonSeps;
    import org.allbinary.util.BasicArrayList;
    import org.allbinary.util.BasicArrayListD;
    import java.lang.JInteger;

    public class UniqueTokens {
        private var specialCharacters:BasicArrayList = null;

        // Java field initializers run after the base constructor
        private function initFieldsUniqueTokens():void {
    this.specialCharacters = new BasicArrayListD();
        }
    

    public function UniqueTokens() {
        super();
        this.initFieldsUniqueTokens();
        this.specialCharacters.add("!");
        this.specialCharacters.add("@");
        this.specialCharacters.add(CommonPhoneStrings.getInstance().POUND);
        this.specialCharacters.add("$");
        this.specialCharacters.add("%");
        this.specialCharacters.add("^");
        this.specialCharacters.add(CommonSeps.getInstance().AMPERSAND);
        this.specialCharacters.add(CommonPhoneStrings.getInstance().STAR);
        this.specialCharacters.add("(");
        this.specialCharacters.add(")");
        this.specialCharacters.add("-");
        this.specialCharacters.add("_");
        this.specialCharacters.add("+");
        this.specialCharacters.add("=");
        this.specialCharacters.add("\\");
        this.specialCharacters.add("|");
        this.specialCharacters.add(AbPathData.getInstance().EXTENSION_SEP);
        this.specialCharacters.add(",");
        this.specialCharacters.add("<");
        this.specialCharacters.add(">");
        this.specialCharacters.add("?");
        this.specialCharacters.add("/");
        this.specialCharacters.add("~");
        this.specialCharacters.add("`");
    }
    

    public function getWhithoutDashesAndSkipNumberOnlyTokens(stringVector:BasicArrayList):JHashSet {
        try {
            var hashSet:JHashSet = new JHashSet();
            var index:int = 0;
            var commonSeps:CommonSeps = CommonSeps.getInstance();
            while (index < stringVector.size()) {
                var keywords:String = (stringVector.get_(index) as String);
                var tokenizer:Tokenizer = new Tokenizer(commonSeps.COMMA);
                var keywordVector:BasicArrayList = tokenizer.getTokensFromString(keywords, new BasicArrayListD());
                for (var forIndex:int = 0; forIndex < keywordVector.size(); forIndex++) {
                    var cleanString:String = (keywordVector.get_(forIndex) as String);
                    cleanString = JString.trim(cleanString);
                    if (JString.indexOf(cleanString, "-".charCodeAt(0)) != -1) {
                        cleanString = new Replace("-", commonSeps.SPACE).all(cleanString);
                    }
                    hashSet.add(cleanString);
                    if (JString.indexOf(cleanString, " ".charCodeAt(0)) != -1) {
                        var spaceTokenizer:Tokenizer = new Tokenizer(commonSeps.SPACE);
                        var subKeywordVector:BasicArrayList = spaceTokenizer.getTokensFromString(cleanString, new BasicArrayListD());
                        for (var spaceIndex:int = 0; spaceIndex < subKeywordVector.size(); spaceIndex++) {
                            var subCleanString:String = (subKeywordVector.get_(spaceIndex) as String);
                            if (!this.isSpecialCharacter(subCleanString) && !this.numberOnly(subCleanString)) {
                                hashSet.add(subCleanString);
                            }
                        }
                    }
                }
                index++;
            }
            return hashSet;
        } catch (e:*) {
            throw e;
        }
    }
    

    private function numberOnly(subCleaningString:String):Boolean {
        try {
            int(parseInt(subCleaningString));
            return true;
        } catch (e:*) {
            return false;
        }
    }
    

    private function isSpecialCharacter(subCleaningString:String):Boolean {
        for (var index:int = 0; index < this.specialCharacters.size(); index++) {
            if (JString.compareTo(subCleaningString, (this.specialCharacters.get_(index) as String)) == 0) {
                return true;
            }
        }
        return false;
    }
    }
}

