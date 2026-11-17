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
package org.allbinary.thread {
    import org.allbinary.logic.communication.log.LogUtil;
    import java.lang.JThread;

    public class ThreadUtil {
    private static var instance_value:ThreadUtil;
    private static var instance_set:Boolean = false;
    private static function get instance():ThreadUtil {
        if (!ThreadUtil.instance_set) {
            ThreadUtil.instance_set = true;
            ThreadUtil.instance_value = new ThreadUtil();
        }
        return ThreadUtil.instance_value;
    }
        public var logUtil:LogUtil = null;
        public var JOIN:String = null;

        // Java field initializers run after the base constructor
        private function initFieldsThreadUtil():void {
    this.logUtil = LogUtil.getInstance();
    this.JOIN = "join";
        }

        public function ThreadUtil() {
            super();
            this.initFieldsThreadUtil();
        }
    

    public static function getInstance():ThreadUtil {
        return ThreadUtil.instance;
    }
    

    public function isRunning(thread:JThread):Boolean {
        if (thread != null && thread.isAlive()) {
            return true;
        } else {
            return false;
        }
    }
    

    public function join(thread:JThread):void {
        if (ThreadUtil.getInstance().isRunning(thread)) {
            this.logUtil.putF("Waiting for Thread To Join/End", this, this.JOIN);
            thread.join();
        }
    }
    }
}

