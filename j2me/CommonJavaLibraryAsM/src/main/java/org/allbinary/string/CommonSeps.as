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
package org.allbinary.string {
    import org.allbinary.logic.string.StringMaker;

    public class CommonSeps {
    private static var instance_value:CommonSeps;
    private static var instance_set:Boolean = false;
    private static function get instance():CommonSeps {
        if (!CommonSeps.instance_set) {
            CommonSeps.instance_set = true;
            CommonSeps.instance_value = new CommonSeps();
        }
        return CommonSeps.instance_value;
    }
        public var NEW_LINE:String = null;
        public var SEMICOLON:String = null;
        public var EQUALS:String = null;
        public var SPACE:String = null;
        public var COMMA:String = null;
        public var COLON:String = null;
        public var PERIOD:String = null;
        public var UNDERSCORE:String = null;
        public var COLON_SEP:String = null;
        public var COMMA_SEP:String = null;
        public var PARENTHESIS_OPEN:String = null;
        public var PARENTHESIS_CLOSE:String = null;
        public var BRACE_OPEN:String = null;
        public var BRACE_CLOSE:String = null;
        public var BRACKET_OPEN:String = null;
        public var BRACKET_CLOSE:String = null;
        public var DASH:String = null;
        public var PERCENT:String = null;
        public var AMPERSAND:String = null;
        public var FORWARD_SLASH:String = null;
        public var BACK_SLASH:String = null;
        public var QUESTION:String = null;
        public var QUOTE:String = null;
        public var QUOTE_END:String = null;
        public var COMMENT:String = null;
        public var INDENT:String = null;

        // Java field initializers run after the base constructor
        private function initFieldsCommonSeps():void {
    this.NEW_LINE = "\n";
    this.SEMICOLON = ";";
    this.EQUALS = "=";
    this.SPACE = " ";
    this.COMMA = ",";
    this.COLON = ":";
    this.PERIOD = ".";
    this.UNDERSCORE = "_";
    this.COLON_SEP = new StringMaker().append(this.COLON).append(this.SPACE).toString();
    this.COMMA_SEP = new StringMaker().append(this.COMMA).append(this.SPACE).toString();
    this.PARENTHESIS_OPEN = "(";
    this.PARENTHESIS_CLOSE = ")";
    this.BRACE_OPEN = "{";
    this.BRACE_CLOSE = "}";
    this.BRACKET_OPEN = "[";
    this.BRACKET_CLOSE = "]";
    this.DASH = "-";
    this.PERCENT = "%";
    this.AMPERSAND = "&";
    this.FORWARD_SLASH = "/";
    this.BACK_SLASH = "\\";
    this.QUESTION = "?";
    this.QUOTE = "\"";
    this.QUOTE_END = "\",";
    this.COMMENT = "//";
    this.INDENT = "    ";
        }

        public function CommonSeps() {
            super();
            this.initFieldsCommonSeps();
        }
    

    public static function getInstance():CommonSeps {
        return CommonSeps.instance;
    }
    }
}

