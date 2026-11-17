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
package org.allbinary.logic.math {
    import org.allbinary.string.CommonPhoneStrings;
    import org.allbinary.string.CommonSeps;

    public class MathData {
    private static var instance_value:MathData;
    private static var instance_set:Boolean = false;
    private static function get instance():MathData {
        if (!MathData.instance_set) {
            MathData.instance_set = true;
            MathData.instance_value = new MathData();
        }
        return MathData.instance_value;
    }
        public var EQUALS:String = null;
        public var PLUS:String = null;
        public var GREATER_THAN:String = null;
        public var MINUS:String = null;
        public var DIVIDE:String = null;
        public var MULTIPLY:String = null;

        // Java field initializers run after the base constructor
        private function initFieldsMathData():void {
    
    this.PLUS = "+";
    this.GREATER_THAN = ">";
    
    
    
        }
    

    public static function getInstance():MathData {
        return MathData.instance;
    }
    

    public function MathData() {
        super();
        this.initFieldsMathData();
        var commonSeps:CommonSeps = CommonSeps.getInstance();
        this.EQUALS = commonSeps.EQUALS;
        this.MINUS = commonSeps.DASH;
        this.DIVIDE = commonSeps.FORWARD_SLASH;
        this.MULTIPLY = CommonPhoneStrings.getInstance().STAR;
    }
    }
}

