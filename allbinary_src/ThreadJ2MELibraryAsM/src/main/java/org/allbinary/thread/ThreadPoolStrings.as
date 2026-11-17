/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2022 AllBinary 
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
package org.allbinary.thread {

    public class ThreadPoolStrings {
    private static var instance_value:ThreadPoolStrings;
    private static var instance_set:Boolean = false;
    private static function get instance():ThreadPoolStrings {
        if (!ThreadPoolStrings.instance_set) {
            ThreadPoolStrings.instance_set = true;
            ThreadPoolStrings.instance_value = new ThreadPoolStrings();
        }
        return ThreadPoolStrings.instance_value;
    }
        public var ADD_TASK:String = null;
        public var START_TASK:String = null;
        public var COMPLETE_TASK:String = null;

        // Java field initializers run after the base constructor
        private function initFieldsThreadPoolStrings():void {
    this.ADD_TASK = "addTask";
    this.START_TASK = "Started Task: ";
    this.COMPLETE_TASK = "Completed Task: ";
        }

        public function ThreadPoolStrings() {
            super();
            this.initFieldsThreadPoolStrings();
        }
    

    public static function getInstance():ThreadPoolStrings {
        return ThreadPoolStrings.instance;
    }
    }
}

