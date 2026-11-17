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
    import org.allbinary.logic.string.StringMaker;
    import org.allbinary.string.CommonStrings;
    import org.allbinary.util.BasicArrayList;
    import org.allbinary.util.BasicArrayListD;
    import org.allbinary.util.BasicArrayListUtil;
    import java.lang.JThread;
    import java.lang.JRunnable;

    public class ThreadPool {
    private static const ROOT_NAME:String = "-PooledThread-";
    private static var NORMAL_PRIORITY_value:int;
    private static var NORMAL_PRIORITY_set:Boolean = false;
    public static function get NORMAL_PRIORITY():int {
        if (!ThreadPool.NORMAL_PRIORITY_set) {
            ThreadPool.NORMAL_PRIORITY_set = true;
            ThreadPool.NORMAL_PRIORITY_value = JThread.NORM_PRIORITY;
        }
        return ThreadPool.NORMAL_PRIORITY_value;
    }
        public var logUtil:LogUtil = null;
        public var commonStrings:CommonStrings = null;
        public var NULL_RUNNABLE:NullRunnable = null;
        public var threadPoolStrings:ThreadPoolStrings = null;
        public var threadObjectUtil:ThreadObjectUtil = null;
        private var poolName:String = null;
        private var priority:int = 0;
        private var isAlive:Boolean = false;
        private var taskQueue:BasicArrayList = null;
        private var threadID:int = 0;
        private var numThreads:int = 0;
        public var runningTask:Boolean = false;

        // Java field initializers run after the base constructor
        private function initFieldsThreadPool():void {
    this.logUtil = LogUtil.getInstance();
    this.commonStrings = CommonStrings.getInstance();
    this.NULL_RUNNABLE = NullRunnable.getInstance();
    this.threadPoolStrings = ThreadPoolStrings.getInstance();
    this.threadObjectUtil = ThreadObjectUtil.getInstance();
    
    
    this.isAlive = false;
    this.taskQueue = BasicArrayListUtil.getInstance().getImmutableInstance();
    this.threadID = 0;
    
    this.runningTask = false;
        }
    

    public function ThreadPool(poolName:String, numThreads:int, priority:int) {
        super();
        this.initFieldsThreadPool();
        this.poolName = poolName;
        this.priority = priority;
        this.numThreads = numThreads;
    }
    

    public function init():void {
        if (!this.isAlive) {
            this.isAlive = true;
            this.taskQueue = new BasicArrayListD();
            var pooledThread:PooledThread = null;
            for (var i:int = 0; i < this.numThreads; i++) {
                pooledThread = new PooledThread(this);
                pooledThread.setPriority(this.priority);
                pooledThread.start();
            }
        }
    }
    

    public function runAPriorityTask():void {
        throw new JException("RuntimeException", "");
    }
    

    public function runTaskWithPriority(task:PriorityRunnable):void {
        {
            if (!this.isAlive) {
                this.init();
            }
            if (task != null) {
                var size:int = this.taskQueue.size();
                var runnable:PriorityRunnable = null;
                var lowerPriorityRunnable:PriorityRunnable = this.threadObjectUtil.NULL_PRIORITY_RUNNABLE;
                for (var index:int = 0; index < size; index++) {
                    runnable = (this.taskQueue.get_(index) as PriorityRunnable);
                    if (runnable.getPriority() > task.getPriority()) {
                        lowerPriorityRunnable = runnable;
                        break;
                    }
                }
                if (lowerPriorityRunnable == this.threadObjectUtil.NULL_PRIORITY_RUNNABLE) {
                    this.taskQueue.add(task);
                } else {
                    index = this.taskQueue.indexOf(lowerPriorityRunnable);
                    this.taskQueue.addAt(index, task);
                }
                JSystem.notifyObject();
            }
        }
    }
    

    public function runTask(task:JRunnable):void {
        {
            if (!this.isAlive) {
                this.init();
            }
            if (task != null) {
                this.taskQueue.add(task);
                JSystem.notifyObject();
            }
        }
    }
    

    public function getTask():JRunnable {
        {
            while (this.taskQueue.size() == 0) {
                if (!this.isAlive) {
                    return this.NULL_RUNNABLE;
                }
                JSystem.waitObject();
            }
            var runnable:JRunnable = (this.taskQueue.removeAt(0) as JRunnable);
            return runnable;
        }
    }
    

    public function clear():void {
        {
            if (this.isAlive) {
                this.taskQueue.clear();
            }
        }
    }
    

    public function close():void {
        {
            if (this.isAlive) {
                this.isAlive = false;
                this.taskQueue.clear();
            }
        }
    }
    

    public function join():void {
        {
            this.isAlive = false;
            this.taskQueue.clear();
            JSystem.notifyAllObject();
        }
    }
    

    public function isBusy():Boolean {
        if (!this.isAlive) {
            return false;
        }
        if (this.taskQueue.size() > 0) {
            return true;
        }
        if (this.runningTask) {
            return true;
        }
        return false;
    }
    

    public function threadStarted():void {
    }
    

    public function threadStopped():void {
        if (this.numThreads == 1) {
            this.isAlive = false;
            this.taskQueue.clear();
        }
    }
    

    public function startTask(task:JRunnable):void {
    }
    

    public function completedTask(task:JRunnable):void {
    }
    

    public function createName():String {
        return new StringMaker().append(this.poolName).append(ThreadPool.ROOT_NAME).appendint(this.threadID++).toString();
    }
    }
}

