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
    import java.lang.JRunnable;

    //This is mainly for network communications.
    public class PathFindingThreadPool extends ThreadPool {
    private static var instance_value:ThreadPool;
    private static var instance_set:Boolean = false;
    private static function get instance():ThreadPool {
        if (!PathFindingThreadPool.instance_set) {
            PathFindingThreadPool.instance_set = true;
            PathFindingThreadPool.instance_value = new PathFindingThreadPool("PathFinding", 1, 1);
        }
        return PathFindingThreadPool.instance_value;
    }
    

    public static function getInstance():ThreadPool {
        return PathFindingThreadPool.instance;
    }
    

    public function PathFindingThreadPool(poolName:String, numThreads:int, priority:int) {
        super(poolName, numThreads, ThreadPool.NORMAL_PRIORITY);
    }
    

    override public function runTaskWithPriority(task:PriorityRunnable):void {
        super.runTaskWithPriority(task);
    }
    

    override public function runTask(task:JRunnable):void {
        super.runTask(task);
    }
    

    override public function startTask(task:JRunnable):void {
    }
    

    override public function completedTask(task:JRunnable):void {
    }
    }
}

