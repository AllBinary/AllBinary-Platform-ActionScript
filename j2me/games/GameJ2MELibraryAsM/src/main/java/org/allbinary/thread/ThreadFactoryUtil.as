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
    import org.allbinary.J2MEUtil;
    import org.allbinary.canvas.RunnableCanvas;
    import org.allbinary.game.displayable.canvas.AllBinaryGameCanvas;
    import org.allbinary.game.displayable.canvas.DemoCanvas;
    import org.allbinary.game.displayable.canvas.GameCanvasRunnableInterface;
    import org.allbinary.game.displayable.canvas.RunnableCanvasSingleThreadStartRunnable;
    import org.allbinary.logic.communication.log.LogUtil;
    import org.allbinary.logic.communication.log.PreLogUtil;
    import org.allbinary.logic.string.StringMaker;
    import org.allbinary.logic.string.StringUtil;
    import org.allbinary.string.CommonStrings;
    import java.lang.JThread;
    import java.lang.JRunnable;

    public class ThreadFactoryUtil {
    private static var instance_value:ThreadFactoryUtil;
    private static var instance_set:Boolean = false;
    private static function get instance():ThreadFactoryUtil {
        if (!ThreadFactoryUtil.instance_set) {
            ThreadFactoryUtil.instance_set = true;
            ThreadFactoryUtil.instance_value = new ThreadFactoryUtil();
        }
        return ThreadFactoryUtil.instance_value;
    }
        public var logUtil:LogUtil = null;

        // Java field initializers run after the base constructor
        private function initFieldsThreadFactoryUtil():void {
    this.logUtil = LogUtil.getInstance();
        }

        public function ThreadFactoryUtil() {
            super();
            this.initFieldsThreadFactoryUtil();
        }
    

    public static function getInstance():ThreadFactoryUtil {
        return ThreadFactoryUtil.instance;
    }
    

    public function getInstanceGameCanvasRunnable(runnable:GameCanvasRunnableInterface):JThread {
        return this.getInstanceType(runnable, runnable.getType());
    }
    

    public function getInstanceForRunnable(runnable:ABRunnable):JThread {
        return this.getInstanceType(runnable, runnable.getType());
    }
    

    private function getInstanceType(runnable:JRunnable, type:int):JThread {
        var commonStrings:CommonStrings = CommonStrings.getInstance();
        if (J2MEUtil.isHTML()) {
            if (type == DemoCanvas.TYPE || type == AllBinaryGameCanvas.TYPE) {
                var demoGameSingleThreadStartRunnable:RunnableCanvasSingleThreadStartRunnable = new RunnableCanvasSingleThreadStartRunnable((runnable as RunnableCanvas));
                PreLogUtil.put(new StringMaker().append("Using Pseudo Thread for DemoCanvas/AllBinaryGameCanvas under PlayN/HTML5: ").append(StringUtil.getInstance().toString1(runnable)).toString(), this, commonStrings.CONSTRUCTOR);
                primaryThreadPool = PrimaryThreadPool.getInstance();
                primaryThreadPool.runTask(demoGameSingleThreadStartRunnable);
            } else {
                PreLogUtil.put(new StringMaker().append("Using Pseudo Thread for Runnable under PlayN/HTML5: ").append(StringUtil.getInstance().toString1(runnable)).toString(), this, commonStrings.CONSTRUCTOR);
                var primaryThreadPool:ThreadPool = PrimaryThreadPool.getInstance();
                primaryThreadPool.runTask(runnable);
            }
        }
        var thread:JThread = new JThread(runnable, runnable.toString());
        this.logUtil.putF(thread.toString(), this, commonStrings.CONSTRUCTOR);
        return thread;
    }
    

    public function start(thread:JThread):void {
        thread.start();
    }
    }
}

