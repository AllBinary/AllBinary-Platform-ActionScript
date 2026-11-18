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
package org.allbinary.game {
    import org.allbinary.time.TimeDelayHelper;

    public class Intermission implements IntermissionInterface {
        private var enabled:Boolean = false;
        private var timeElapsedHelper:TimeDelayHelper = null;
        private var intermissionEnableListener:IntermissionEnableListenerInterface = null;

        // Java field initializers run after the base constructor
        private function initFieldsIntermission():void {
    this.enabled = false;
    this.timeElapsedHelper = new TimeDelayHelper(0);
    this.intermissionEnableListener = NullIntermissionEnableListener.getInstance();
        }
    

    public function Intermission() {
        super();
        this.initFieldsIntermission();
    }
    

    public function setListener(enableListener:IntermissionEnableListenerInterface):void {
        this.intermissionEnableListener = enableListener;
    }
    

    public function getTimeDelayHelper():TimeDelayHelper {
        return this.timeElapsedHelper;
    }
    

    public function setEnabled(enabled:Boolean):void {
        this.enabled = enabled;
        if (this.isEnabled()) {
            this.getTimeDelayHelper().setStartTimeTNT();
        }
        this.intermissionEnableListener.notifyIntermission(enabled);
    }
    

    public function isEnabled():Boolean {
        return this.enabled;
    }
    }
}

