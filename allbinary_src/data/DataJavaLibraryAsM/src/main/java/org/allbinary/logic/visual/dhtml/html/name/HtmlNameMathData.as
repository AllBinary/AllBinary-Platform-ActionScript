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
package org.allbinary.logic.visual.dhtml.html.name {

    public class HtmlNameMathData {
    private static var instance_value:HtmlNameMathData;
    private static var instance_set:Boolean = false;
    private static function get instance():HtmlNameMathData {
        if (!HtmlNameMathData.instance_set) {
            HtmlNameMathData.instance_set = true;
            HtmlNameMathData.instance_value = new HtmlNameMathData();
        }
        return HtmlNameMathData.instance_value;
    }
        public var EQUALS:String = null;
        public var PLUS:String = null;
        public var MINUS:String = null;
        public var DIVIDE:String = null;
        public var MULTIPLY:String = null;

        // Java field initializers run after the base constructor
        private function initFieldsHtmlNameMathData():void {
    this.EQUALS = "_EQUALS_";
    this.PLUS = "_PLUS_";
    this.MINUS = "_MINUS_";
    this.DIVIDE = "_DIVIDE_";
    this.MULTIPLY = "_MULTIPLY_";
        }
    

    public static function getInstance():HtmlNameMathData {
        return HtmlNameMathData.instance;
    }
    

    public function HtmlNameMathData() {
        super();
        this.initFieldsHtmlNameMathData();
    }
    }
}

