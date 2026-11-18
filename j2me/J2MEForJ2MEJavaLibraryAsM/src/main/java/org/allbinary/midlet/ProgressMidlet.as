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
package org.allbinary.midlet {
    import org.allbinary.canvas.Processor;
    import org.allbinary.logic.system.security.licensing.AbeClientInformationInterface;
    import org.allbinary.logic.system.security.licensing.ClientInformationFactory;
    import org.allbinary.thread.PrimaryThreadPool;
    import org.allbinary.thread.ThreadPool;
    import java.lang.JRunnable;

    //J2MEForJ2ME
    public class ProgressMidlet extends AllBinaryMidlet {
        public var abeClientInformation:AbeClientInformationInterface = null;

        // Java field initializers run after the base constructor
        private function initFieldsProgressMidlet():void {
    
        }
    

    public function ProgressMidlet(clientInformationFactory:ClientInformationFactory) {
        super();
        this.initFieldsProgressMidlet();
        this.preInit();
        this.abeClientInformation = clientInformationFactory.getInstance();
    }
    

    public function preInit():void {
    }
    

    public function exitProgress(isProgress:Boolean):void {
        var processor:Processor = MidletExitProcessorFactory.getInstance().getExitInstance(this);
        try {
            var primaryThreadPool:ThreadPool = PrimaryThreadPool.getInstance();
            var runnable:JRunnable = new ExitRunnable(this, processor, isProgress);
            primaryThreadPool.runTask(runnable);
        } catch (e:*) {
            this.logUtil.put(this.commonStrings.EXCEPTION, this, "exit", e);
            try {
                processor.process();
            } catch (e2:*) {
                this.logUtil.put(this.commonStrings.EXCEPTION, this, "exit", e);
            }
        }
    }
    }
}

