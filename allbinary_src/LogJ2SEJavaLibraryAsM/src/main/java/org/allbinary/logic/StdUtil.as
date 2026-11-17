/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2025 AllBinary 
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
package org.allbinary.logic {
    import org.allbinary.util.ABHashMap;
    import org.allbinary.util.ABHashtable;
    import org.allbinary.util.ABStack;
    import org.allbinary.util.ABVector;

    //ActualPlatform
    public class StdUtil {
    private static var instance_value:StdUtil;
    private static var instance_set:Boolean = false;
    private static function get instance():StdUtil {
        if (!StdUtil.instance_set) {
            StdUtil.instance_set = true;
            StdUtil.instance_value = new StdUtil();
        }
        return StdUtil.instance_value;
    }
        public var EMPTY_VECTOR:ABVector = null;
        public var NULL_TABLE:ABHashtable = null;
        public var NULL_MAP:ABHashMap = null;

        // Java field initializers run after the base constructor
        private function initFieldsStdUtil():void {
    this.EMPTY_VECTOR = this.createVector();
    this.NULL_TABLE = this.createHashtable();
    this.NULL_MAP = this.createHashMap();
        }

        public function StdUtil() {
            super();
            this.initFieldsStdUtil();
        }
    

    public static function getInstance():StdUtil {
        return StdUtil.instance;
    }
    

    public function createStack():ABStack {
        return new ABStack();
    }
    

    public function createVector():ABVector {
        return new ABVector();
    }
    

    public function createHashtable():ABHashtable {
        return new ABHashtable();
    }
    

    public function createHashMap():ABHashMap {
        return new ABHashMap();
    }
    }
}

