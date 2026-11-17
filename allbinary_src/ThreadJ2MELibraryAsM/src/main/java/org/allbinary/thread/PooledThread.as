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
package org.allbinary.thread {
    import org.allbinary.logic.communication.log.LogUtil;
    import org.allbinary.logic.string.StringMaker;
    import org.allbinary.logic.string.StringUtil;
    import org.allbinary.string.CommonStrings;
    import java.lang.JThread;
    import java.lang.JRunnable;

    public class PooledThread extends JThread {
        private var logUtil:LogUtil = null;
        private var commonStrings:CommonStrings = null;
        private var threadObjectUtil:ThreadObjectUtil = null;
        private var threadPool:ThreadPool = null;
        private var INTERRUPT_EXCEPTION:String = null;

        // Java field initializers run after the base constructor
        private function initFieldsPooledThread():void {
    this.logUtil = LogUtil.getInstance();
    this.commonStrings = CommonStrings.getInstance();
    this.threadObjectUtil = ThreadObjectUtil.getInstance();
    
    this.INTERRUPT_EXCEPTION = "Exit InterruptedException";
        }
    

    public function PooledThread(threadPool:ThreadPool) {
        super(threadPool.createName());
        this.initFieldsPooledThread();
        this.logUtil.putF(this.commonStrings.CONSTRUCTOR, this, this.commonStrings.CONSTRUCTOR);
        this.threadPool = threadPool;
    }
    

    override public function run():void {
        this.threadPool.threadStarted();
        while (true) {
            var task2:JRunnable = this.threadObjectUtil.NULL_PRIORITY_RUNNABLE;
            try {
                task2 = this.threadPool.getTask();
                this.threadPool.runningTask = true;
                this.threadPool.startTask(task2);
            } catch (ex:*) {
                var logUtil:LogUtil = LogUtil.getInstance();
                logUtil.putF(this.INTERRUPT_EXCEPTION, this, this.commonStrings.RUN);
                break;
            }
            if (task2 == this.threadObjectUtil.NULL_PRIORITY_RUNNABLE) {
                break;
            }
            try {
                task2.run();
                this.threadPool.completedTask(task2);
                this.threadPool.runningTask = false;
            } catch (e:*) {
                logUtil = LogUtil.getInstance();
                logUtil.put(new StringMaker().append(this.commonStrings.EXCEPTION_LABEL).append(StringUtil.getInstance().toString1(task2)).toString(), this, this.commonStrings.RUN, e);
            }
        }
        this.threadPool.threadStopped();
    }
    }
}

