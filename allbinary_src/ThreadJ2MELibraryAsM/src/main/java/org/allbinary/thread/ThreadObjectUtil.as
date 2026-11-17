// Generated Code Do Not Modify
package org.allbinary.thread {
    import org.allbinary.TsUtil;
    import java.lang.JThread;
    import java.lang.JRunnable;

    public class ThreadObjectUtil {
    private static var instance_value:ThreadObjectUtil;
    private static var instance_set:Boolean = false;
    private static function get instance():ThreadObjectUtil {
        if (!ThreadObjectUtil.instance_set) {
            ThreadObjectUtil.instance_set = true;
            ThreadObjectUtil.instance_value = new ThreadObjectUtil();
        }
        return ThreadObjectUtil.instance_value;
    }
        public var NULL_PRIORITY_RUNNABLE:PriorityRunnable = null;

        // Java field initializers run after the base constructor
        private function initFieldsThreadObjectUtil():void {
    this.NULL_PRIORITY_RUNNABLE = new NullPriorityRunnable();
        }

        public function ThreadObjectUtil() {
            super();
            this.initFieldsThreadObjectUtil();
        }
    

    public static function getInstance():ThreadObjectUtil {
        return ThreadObjectUtil.instance;
    }
    

    public function notifyObject(anyType:Object):void {
        JSystem.notifyObject();
    }
    

    public function waitObject(anyType:Object):void {
        JSystem.waitObject();
    }
    

    public function waitObjectFor(anyType:Object, delay:Number):void {
        TsUtil.getInstance().waitFor(anyType, delay);
    }
    

    public function processThread(runnable:JRunnable):void {
        var thread:JThread = new JThread(runnable);
        thread.start();
    }
    }
}

