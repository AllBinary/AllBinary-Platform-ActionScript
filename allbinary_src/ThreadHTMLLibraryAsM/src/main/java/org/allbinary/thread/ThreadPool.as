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
    import org.allbinary.string.CommonStrings;
    import org.allbinary.util.BasicArrayList;
    import org.allbinary.util.BasicArrayListD;
    import java.lang.JRunnable;

    public class ThreadPool {
    public static const NORMAL_PRIORITY:int = 5;
        public var logUtil:LogUtil = null;
        public var commonStrings:CommonStrings = null;
        public var NULL_RUNNABLE:NullRunnable = null;
        public var threadPoolStrings:ThreadPoolStrings = null;
        public var threadObjectUtil:ThreadObjectUtil = null;
        private var isAlive:Boolean = false;
        private var taskQueue:BasicArrayList = null;
        private var numThreads:int = 0;
        private var runningTask:Boolean = false;
        private var currentPriorityRunnable:PriorityRunnable = null;

        // Java field initializers run after the base constructor
        private function initFieldsThreadPool():void {
    this.logUtil = LogUtil.getInstance();
    this.commonStrings = CommonStrings.getInstance();
    this.NULL_RUNNABLE = NullRunnable.getInstance();
    this.threadPoolStrings = ThreadPoolStrings.getInstance();
    this.threadObjectUtil = ThreadObjectUtil.getInstance();
    this.isAlive = false;
    this.taskQueue = new BasicArrayListD();
    this.numThreads = 0;
    this.runningTask = false;
    this.currentPriorityRunnable = this.threadObjectUtil.NULL_PRIORITY_RUNNABLE;
        }
    

    public function ThreadPool(poolName:String, numThreads:int, priority:int) {
        super();
        this.initFieldsThreadPool();
    }
    

    public function runAPriorityTask():void {
        if (!this.currentPriorityRunnable.isDone()) {
            this.currentPriorityRunnable.run();
        } else {
            var runnable:JRunnable = this.getTask();
            if (runnable === this.NULL_RUNNABLE) {
                return;
            }
            this.currentPriorityRunnable = (runnable as PriorityRunnable);
            if (!(this.currentPriorityRunnable == this.threadObjectUtil.NULL_PRIORITY_RUNNABLE)) {
                this.currentPriorityRunnable.reset();
                this.currentPriorityRunnable.run();
            }
        }
    }
    

    public function runATask():void {
        var runnable:JRunnable = this.getTask();
        if (runnable != null) {
            runnable.run();
        }
    }
    

    public function init():void {
        if (!this.isAlive) {
            this.isAlive = true;
            this.taskQueue = new BasicArrayListD();
        }
    }
    

    public function runTaskWithPriority(task:PriorityRunnable):void {
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
        }
    }
    

    public function runTask(task:JRunnable):void {
        if (!this.isAlive) {
            this.init();
        }
        if (task != null) {
            this.taskQueue.add(task);
        }
    }
    

    public function getTask():JRunnable {
        if (this.taskQueue.isEmpty()) {
            return this.NULL_RUNNABLE;
        }
        return (this.taskQueue.removeAt(0) as JRunnable);
    }
    

    public function clear():void {
        this.taskQueue.clear();
    }
    

    public function close():void {
        if (this.isAlive) {
            this.isAlive = false;
            this.taskQueue.clear();
            this.currentPriorityRunnable = this.threadObjectUtil.NULL_PRIORITY_RUNNABLE;
        }
    }
    

    public function join():void {
        this.isAlive = false;
        this.taskQueue.clear();
        this.currentPriorityRunnable = this.threadObjectUtil.NULL_PRIORITY_RUNNABLE;
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
            this.currentPriorityRunnable = this.threadObjectUtil.NULL_PRIORITY_RUNNABLE;
        }
    }
    

    public function startTask(task:JRunnable):void {
    }
    

    public function completedTask(task:JRunnable):void {
    }
    }
}

