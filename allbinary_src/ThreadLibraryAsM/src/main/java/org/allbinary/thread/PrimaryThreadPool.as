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
    import org.allbinary.logic.string.StringMaker;
    import org.allbinary.logic.string.StringUtil;
    import java.lang.JRunnable;

    public class PrimaryThreadPool extends ThreadPool {
    private static var THREAD_POOL_value:ThreadPool;
    private static var THREAD_POOL_set:Boolean = false;
    private static function get THREAD_POOL():ThreadPool {
        if (!PrimaryThreadPool.THREAD_POOL_set) {
            PrimaryThreadPool.THREAD_POOL_set = true;
            PrimaryThreadPool.THREAD_POOL_value = new ThreadPool("Primary", 1, ThreadPool.NORMAL_PRIORITY);
        }
        return PrimaryThreadPool.THREAD_POOL_value;
    }
    

    public static function getInstance():ThreadPool {
        return PrimaryThreadPool.THREAD_POOL;
    }
    

    public function PrimaryThreadPool(poolName:String, numThreads:int, priority:int) {
        super(poolName, numThreads, priority);
    }
    

    override public function runTask(task:JRunnable):void {
        this.logUtil.putF(new StringMaker().append(StringUtil.getInstance().toString1(task)).appendlong(JSystem.currentTimeMillis()).toString(), this, this.threadPoolStrings.ADD_TASK);
        super.runTask(task);
    }
    

    override public function startTask(task:JRunnable):void {
        this.logUtil.putF(new StringMaker().append(this.threadPoolStrings.START_TASK).append(StringUtil.getInstance().toString1(task)).toString(), this, this.commonStrings.RUN);
    }
    

    override public function completedTask(task:JRunnable):void {
        this.logUtil.putF(new StringMaker().append(this.threadPoolStrings.COMPLETE_TASK).append(StringUtil.getInstance().toString1(task)).toString(), this, this.commonStrings.RUN);
    }
    }
}

