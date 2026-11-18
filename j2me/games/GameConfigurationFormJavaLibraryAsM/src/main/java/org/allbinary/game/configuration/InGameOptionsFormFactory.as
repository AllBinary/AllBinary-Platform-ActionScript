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
package org.allbinary.game.configuration {
    import org.allbinary.graphics.color.BasicColor;
    import org.allbinary.graphics.displayable.screen.CommandForm;
    import org.allbinary.init.Init;
    import org.allbinary.logic.NullUtil;
    import org.allbinary.logic.communication.log.LogUtil;
    import org.allbinary.string.CommonStrings;

    public class InGameOptionsFormFactory {
    private static var instance_value:Object;
    private static var instance_set:Boolean = false;
    private static function get instance():Object {
        if (!InGameOptionsFormFactory.instance_set) {
            InGameOptionsFormFactory.instance_set = true;
            InGameOptionsFormFactory.instance_value = NullUtil.getInstance().NULL_OBJECT;
        }
        return InGameOptionsFormFactory.instance_value;
    }
        public var logUtil:LogUtil = null;
        private var SINGLETON:CommandForm = null;

        // Java field initializers run after the base constructor
        private function initFieldsInGameOptionsFormFactory():void {
    this.logUtil = LogUtil.getInstance();
    this.SINGLETON = CommandForm.getNullCommandForm();
        }

        public function InGameOptionsFormFactory() {
            super();
            this.initFieldsInGameOptionsFormFactory();
        }
    

    public static function getInstance():InGameOptionsFormFactory {
        if (InGameOptionsFormFactory.instance == NullUtil.getInstance().NULL_OBJECT) {
            InGameOptionsFormFactory.instance = new InGameOptionsFormFactory();
        }
        return (InGameOptionsFormFactory.instance as InGameOptionsFormFactory);
    }
    

    public function init(commandListener:CommandListener, initInterface:Init, title:String, backgrounBasicColor:BasicColor, foregroundBasicColor:BasicColor):void {
        try {
            if (this.SINGLETON == CommandForm.getNullCommandForm()) {
                initInterface.init();
                this.SINGLETON = new InGameOptionsForm(commandListener, title, backgrounBasicColor, foregroundBasicColor);
            }
        } catch (e:*) {
            var commonStrings:CommonStrings = CommonStrings.getInstance();
            this.logUtil.put(commonStrings.EXCEPTION, this, commonStrings.INIT, e);
        }
    }
    

    public function get_():CommandForm {
        return this.SINGLETON;
    }
    }
}

