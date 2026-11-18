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

    //This is mainly for network communications.
    public class SecondaryThreadPool extends ThreadPool {
    private static var instance_value:ThreadPool;
    private static var instance_set:Boolean = false;
    private static function get instance():ThreadPool {
        if (!SecondaryThreadPool.instance_set) {
            SecondaryThreadPool.instance_set = true;
            SecondaryThreadPool.instance_value = new SecondaryThreadPool("Secondary", 1, ThreadPool.NORMAL_PRIORITY);
        }
        return SecondaryThreadPool.instance_value;
    }
    

    public static function getInstance():ThreadPool {
        return SecondaryThreadPool.instance;
    }
    

    public function SecondaryThreadPool(poolName:String, numThreads:int, priority:int) {
        super(poolName, numThreads, priority);
    }
    

    override public function runTask(task:JRunnable):void {
        this.logUtil.putF(new StringMaker().append(StringUtil.getInstance().toString1(task)).appendlong(JSystem.currentTimeMillis()).toString(), this, this.threadPoolStrings.ADD_TASK);
        super.runTask(task);
    }
    

    override public function startTask(task:JRunnable):void {
        this.logUtil.putF(new StringMaker().append(this.threadPoolStrings.START_TASK).append(StringUtil.getInstance().toString1(task)).appendlong(JSystem.currentTimeMillis()).toString(), this, this.commonStrings.RUN);
    }
    

    override public function completedTask(task:JRunnable):void {
        this.logUtil.putF(new StringMaker().append(this.threadPoolStrings.COMPLETE_TASK).append(StringUtil.getInstance().toString1(task)).appendlong(JSystem.currentTimeMillis()).toString(), this, this.commonStrings.RUN);
    }
    }
}

