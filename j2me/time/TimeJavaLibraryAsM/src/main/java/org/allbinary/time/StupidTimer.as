// Generated Code Do Not Modify
package org.allbinary.time {
    import org.allbinary.logic.NullUtil;
    import org.allbinary.logic.communication.log.LogUtil;
    import org.allbinary.logic.communication.log.PreLogUtil;
    import org.allbinary.logic.string.StringMaker;
    import org.allbinary.logic.string.StringUtil;
    import org.allbinary.logic.util.visitor.Visitor;
    import org.allbinary.string.CommonStrings;
    import org.allbinary.thread.ThreadObjectUtil;

    public class StupidTimer {
        public var logUtil:LogUtil = null;
        public var commonStrings:CommonStrings = null;
        public var nullUtil:NullUtil = null;
        private var threadObjectUtil:ThreadObjectUtil = null;

        // Java field initializers run after the base constructor
        private function initFieldsStupidTimer():void {
    this.logUtil = LogUtil.getInstance();
    this.commonStrings = CommonStrings.getInstance();
    this.nullUtil = NullUtil.getInstance();
    this.threadObjectUtil = ThreadObjectUtil.getInstance();
        }

        public function StupidTimer() {
            super();
            this.initFieldsStupidTimer();
        }
    

    private function visitBool(visitorInterface:Visitor):Boolean {
        var result:* = (visitorInterface.visit(this.nullUtil.NULL_OBJECT) as *);
        var result2:Boolean = Boolean(result);
        return result2;
    }
    

    public function visit(visitorInterface:Visitor, timeDelayHelper:TimeDelayHelper):void {
        var tookTooLong:Boolean = false;
        var WAITING_FOR:String = "Waiting for: ";
        PreLogUtil.put(new StringMaker().append(WAITING_FOR).append(StringUtil.getInstance().toString1(visitorInterface)).toString(), this, this.commonStrings.VISIT);
        var index:int = 0;
        while (this.visitBool(visitorInterface)) {
            if (index % 10 == 0) {
                PreLogUtil.put(new StringMaker().append(WAITING_FOR).appendint(index).toString(), this, this.commonStrings.VISIT);
            }
            index++;
            {
                this.threadObjectUtil.waitObjectFor(this, 1800);
            }
            if (timeDelayHelper.isTimeTNT()) {
                tookTooLong = true;
                break;
            }
        }
        if (tookTooLong) {
            this.logUtil.put(this.commonStrings.EXCEPTION, this, this.commonStrings.VISIT, new JException("Exception", new StringMaker().append("Took Too Long: ").append(StringUtil.getInstance().toString1(visitorInterface)).toString()));
        } else {
            PreLogUtil.put(timeDelayHelper.toString(), this, this.commonStrings.VISIT);
        }
    }
    

    public function stopWaiting():void {
        {
            this.threadObjectUtil.notifyObject(this);
        }
    }
    }
}

