/*
 *
 * AllBinary Open License Version 1
 * Copyright (c) 2022 AllBinary
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
package org.allbinary.graphics.displayable.screen {
    import org.allbinary.logic.communication.log.LogUtil;
    import org.allbinary.string.CommonStrings;
    import org.allbinary.util.BasicArrayList;
    import org.allbinary.util.BasicArrayListD;

    public class WebCommandProcessor {
    private static var instance_value:WebCommandProcessor;
    private static var instance_set:Boolean = false;
    private static function get instance():WebCommandProcessor {
        if (!WebCommandProcessor.instance_set) {
            WebCommandProcessor.instance_set = true;
            WebCommandProcessor.instance_value = new WebCommandProcessor();
        }
        return WebCommandProcessor.instance_value;
    }
        public var logUtil:LogUtil = null;
        private var aboutCommandProcessor:AboutCommandProcessor = null;
        public var list:BasicArrayList = null;

        // Java field initializers run after the base constructor
        private function initFieldsWebCommandProcessor():void {
    this.logUtil = LogUtil.getInstance();
    this.aboutCommandProcessor = AboutCommandProcessor.getInstance();
    this.list = new BasicArrayListD();
        }

        public function WebCommandProcessor() {
            super();
            this.initFieldsWebCommandProcessor();
        }
    

    public static function getInstance():WebCommandProcessor {
        return WebCommandProcessor.instance;
    }
    

    public function process(midletCommandListener:CommandListener, command:Command, canvas:Canvas):void {
        try {
            this.list.removeAt(0);
        } catch (e:*) {
            var commonStrings:CommonStrings = CommonStrings.getInstance();
            this.logUtil.put(commonStrings.EXCEPTION, this, commonStrings.PROCESS, e);
        }
    }
    }
}

