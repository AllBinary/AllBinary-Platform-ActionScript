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
package org.allbinary.game.input {
    import org.allbinary.init.Init;
    import org.allbinary.logic.communication.log.LogUtil;

    public class KeyFactoryInitializer extends Init {
        public var logUtil:LogUtil = null;

        // Java field initializers run after the base constructor
        private function initFieldsKeyFactoryInitializer():void {
    this.logUtil = LogUtil.getInstance();
        }

        public function KeyFactoryInitializer() {
            super();
            this.initFieldsKeyFactoryInitializer();
        }
    

    override public function init(...args):void {
        if (args.length == 0) {
            this.init_jo0();
            return;
        }
        super.init.apply(this, args);
    }

    private function init_jo0():void {
        this.logUtil.putF(this.commonStrings.START, this, this.commonStrings.INIT);
    }
    }
}

