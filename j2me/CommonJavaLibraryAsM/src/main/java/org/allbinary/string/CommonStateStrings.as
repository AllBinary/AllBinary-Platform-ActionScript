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

    public class CommonStateStrings {
    private static var instance_value:CommonStateStrings;
    private static var instance_set:Boolean = false;
    private static function get instance():CommonStateStrings {
        if (!CommonStateStrings.instance_set) {
            CommonStateStrings.instance_set = true;
            CommonStateStrings.instance_value = new CommonStateStrings();
        }
        return CommonStateStrings.instance_value;
    }
        public var CONTEXT:String = null;
        public var FINISH:String = null;
        public var CREATE:String = null;
        public var START:String = null;
        public var RESTART:String = null;
        public var RESUME:String = null;
        public var PAUSE:String = null;
        public var STOP:String = null;
        public var DESTROY:String = null;
        public var BIND:String = null;
        public var ON_SAVE_INSTANCE_STATE:String = null;
        public var ON_START_COMMAND:String = null;

        // Java field initializers run after the base constructor
        private function initFieldsCommonStateStrings():void {
    this.CONTEXT = "Context: ";
    this.FINISH = "finish";
    this.CREATE = "onCreate";
    this.START = "onStart";
    this.RESTART = "onRestart";
    this.RESUME = "onResume";
    this.PAUSE = "onPause";
    this.STOP = "onStop";
    this.DESTROY = "onDestroy";
    this.BIND = "onBind";
    this.ON_SAVE_INSTANCE_STATE = "onSaveInstanceState";
    this.ON_START_COMMAND = "onStartCommand";
        }

        public function CommonStateStrings() {
            super();
            this.initFieldsCommonStateStrings();
        }
    

    public static function getInstance():CommonStateStrings {
        return CommonStateStrings.instance;
    }
    }
}

