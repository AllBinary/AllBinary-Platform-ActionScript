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
package org.allbinary.logic.io.path {

    public class AbPathUtil {
    private static var instance_value:AbPathUtil;
    private static var instance_set:Boolean = false;
    private static function get instance():AbPathUtil {
        if (!AbPathUtil.instance_set) {
            AbPathUtil.instance_set = true;
            AbPathUtil.instance_value = new AbPathUtil();
        }
        return AbPathUtil.instance_value;
    }
        public var NO_ABPATH:AbPath = null;

        // Java field initializers run after the base constructor
        private function initFieldsAbPathUtil():void {
    this.NO_ABPATH = AbPath.createAbPath();
        }

        public function AbPathUtil() {
            super();
            this.initFieldsAbPathUtil();
        }
    

    public static function getInstance():AbPathUtil {
        return AbPathUtil.instance;
    }
    }
}

