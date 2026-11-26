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
package org.allbinary.canvas {
    import javax.microedition.lcdui.CommandListener;
    import org.allbinary.TsUtil;
    import org.allbinary.game.displayable.canvas.NullWaitGameRunnable;
    import org.allbinary.graphics.displayable.MyCanvas;
    import org.allbinary.logic.ABSystemWrapper;
    import org.allbinary.logic.NullUtil;
    import org.allbinary.logic.StdUtil;
    import org.allbinary.logic.string.StringMaker;
    import org.allbinary.logic.string.StringUtil;
    import org.allbinary.string.CommonLabels;
    import org.allbinary.string.CommonStrings;
    import org.allbinary.thread.NullThread;
    import org.allbinary.thread.RunnableInterface;
    import org.allbinary.thread.ThreadObjectUtil;
    import org.allbinary.time.TimeDelayHelper;
    import org.allbinary.util.BasicArrayList;
    import java.lang.JThread;

    public class RunnableCanvas extends MyCanvas implements RunnableInterface {
        public var nullUtil:NullUtil = null;
        public var stdUtil:StdUtil = null;
        public var systemWrapper:ABSystemWrapper = null;
        public var tsUtil:TsUtil = null;
        private var thread:JThread = null;
        private var currentThread:JThread = null;
        private var running:Boolean = false;
        public var loopTimeHelper:TimeDelayHelper = null;
        public var runnableCanvasRefreshHelper:Processor = null;
        public var commonLabels:CommonLabels = null;
        public var threadObjectUtil:ThreadObjectUtil = null;
        public var SET_RUNNING:String = null;
        private var IS_RUNNING:String = null;
        private var THREAD:String = null;
        private var NOT_EQUAL:String = null;
        private var PAUSE_SLEEP:String = null;
        private var START_PAUSE:String = null;
        private var END_PAUSE:String = null;
        private var PROCESS_LOOP_SLEEP:String = null;
        private var pauseWait:Number = 0;
        private var notified:Boolean = false;

        // Java field initializers run after the base constructor
        private function initFieldsRunnableCanvas():void {
    this.nullUtil = NullUtil.getInstance();
    this.stdUtil = StdUtil.getInstance();
    this.systemWrapper = ABSystemWrapper.getInstance();
    this.tsUtil = TsUtil.getInstance();
    this.thread = NullThread.NULL_THREAD;
    this.currentThread = NullThread.NULL_THREAD;
    this.running = false;
    this.loopTimeHelper = new TimeDelayHelper(NullWaitGameRunnable.getInstance().WAIT);
    this.runnableCanvasRefreshHelper = Processor.getInstance();
    this.commonLabels = CommonLabels.getInstance();
    this.threadObjectUtil = ThreadObjectUtil.getInstance();
    this.SET_RUNNING = "setRunning";
    this.IS_RUNNING = "isRunning";
    this.THREAD = "Thread: ";
    this.NOT_EQUAL = " != ";
    this.PAUSE_SLEEP = "pause sleep";
    this.START_PAUSE = "start pause - game thread sleep at: ";
    this.END_PAUSE = "end pause - game thread sleep at: ";
    this.PROCESS_LOOP_SLEEP = "processLoopSleep";
    this.pauseWait = 0;
    this.notified = false;
        }
    

    public function RunnableCanvas(commandListener:CommandListener, childNameList:BasicArrayList, hasParam:Boolean) {
        super(CommonStrings.getInstance().UNKNOWN, childNameList);
        this.initFieldsRunnableCanvas();
        this.logUtil.putF(new StringMaker().append("RunnableCanvas delay: ").appendint(this.loopTimeHelper.delay).toString(), this, this.commonStrings.CONSTRUCTOR);
        this.runnableCanvasRefreshHelper = new RunnableCanvasRefreshHelper(this);
        if (commandListener != null) {
            this.initCommands(commandListener);
        } else if (hasParam) {
            this.logUtil.putF("commandListener was null", this, "initCommands");
        }
    }
    

    public function initCommands(cmdListener:CommandListener):void {
        this.logUtil.putF(this.commonStrings.NOT_IMPLEMENTED, this, "initCommands");
    }
    

    public function isMainCanvas():Boolean {
        if (this.getCustomCommandListener() != null) {
            return true;
        } else {
            return false;
        }
    }
    

    public function setThread(thread:JThread):void {
        this.thread = thread;
    }
    

    public function setRunning(running:Boolean):void {
        this.running = running;
        if (!this.running) {
            this.thread = NullThread.NULL_THREAD;
            {
                this.threadObjectUtil.notifyObject(this);
            }
        }
        this.logUtil.putF(new StringMaker().append(this.IS_RUNNING).appendboolean(this.running).toString(), this, this.SET_RUNNING);
    }
    

    public function isRunning():Boolean {
        if (this.thread === this.currentThread) {
            return this.running;
        } else {
            var stringBuffer:StringMaker = new StringMaker();
            stringBuffer.append(this.THREAD);
            if (this.thread != null) {
                stringBuffer.append(this.thread.toString());
            }
            stringBuffer.append(this.NOT_EQUAL);
            if (this.currentThread != null) {
                stringBuffer.append(StringUtil.getInstance().toString1(this.currentThread));
            }
            this.logUtil.putF(stringBuffer.toString(), this, this.IS_RUNNING);
            return false;
        }
    }
    

    public function getLoopTimeHelperP():TimeDelayHelper {
        return this.loopTimeHelper;
    }
    

    public function setWait(wait:int):void {
        this.loopTimeHelper.delay = wait;
        this.pauseWait = Number(wait) * 3;
        this.logUtil.putF(new StringMaker().append("setWait - delay: ").appendint(this.loopTimeHelper.delay).toString(), this, this.commonStrings.CONSTRUCTOR);
    }
    

    public function getWait():int {
        return this.loopTimeHelper.delay;
    }
    

    public function setCurrentThread():void {
        this.currentThread = JThread.currentThread();
    }
    

    public function setCurrentThreadFake():void {
        this.currentThread = this.thread;
    }
    

    override public function showNotify():void {
        try {
            this.stopWaiting();
        } catch (e:*) {
            this.logUtil.put(this.commonStrings.EXCEPTION, this, "showNotify", e);
        }
    }
    

    private function stopWaiting():void {
        this.notified = true;
        {
            this.threadObjectUtil.notifyObject(this);
        }
        this.repaint();
    }
    

    public function waitOnNotify(wait:Number):void {
        if (!this.notified) {
            if (wait > 0) {
                this.threadObjectUtil.waitObjectFor(this, wait);
            } else {
                this.threadObjectUtil.waitObject(this);
            }
        }
    }
    

    public function processSleep():void {
        JThread.sleep(this.pauseWait);
    }
    

    public function isPausable():Boolean {
        return false;
    }
    

    public function processGameSleep(sleep:Number):void {
        JThread.sleep(sleep);
    }
    

    public function processLoopSleep():void {
        this.runnableCanvasRefreshHelper.process();
        if (this.isPaused()) {
            var stringMaker:StringMaker = new StringMaker();
            if (this.isRunning() && !this.isSingleThread()) {
                stringMaker.delete_(0, stringMaker.length());
                var currentTimeMillis:Number = this.systemWrapper.currentTimeMillis();
                this.logUtil.putF(stringMaker.append(this.START_PAUSE).appendlong(currentTimeMillis).append(this.PAUSE_SLEEP).appendlong(this.pauseWait).toString(), this, this.PROCESS_LOOP_SLEEP);
                while (this.isPaused() && this.isRunning() && !this.isSingleThread()) {
                    this.processSleep();
                    if (!this.isPausable()) {
                        stringMaker.delete_(0, stringMaker.length());
                        this.logUtil.putF(stringMaker.append(this.END_PAUSE).appendlong(currentTimeMillis).toString(), this, this.PROCESS_LOOP_SLEEP);
                        return;
                    }
                }
            }
        }
        var elapsedTime:Number = this.loopTimeHelper.getElapsedTNT();
        var wait:Number = Number(this.loopTimeHelper.delay);
        if (elapsedTime > wait) {
            elapsedTime = wait;
        } else {
            this.processGameSleep(wait - elapsedTime);
        }
    }
    

    public function isSingleThread():Boolean {
        return false;
    }
    

    public function run():void {
        this.setCurrentThread();
    }
    

    public function end2():void {
    }
    

    public function getType():int {
        return -1;
    }
    }
}

