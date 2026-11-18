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
    import org.allbinary.logic.communication.log.LogUtil;
    import org.allbinary.string.CommonStrings;

    public class GameOptionsFormFactory {
    private static var instance_value:GameOptionsFormFactory;
    private static var instance_set:Boolean = false;
    private static function get instance():GameOptionsFormFactory {
        if (!GameOptionsFormFactory.instance_set) {
            GameOptionsFormFactory.instance_set = true;
            GameOptionsFormFactory.instance_value = new GameOptionsFormFactory();
        }
        return GameOptionsFormFactory.instance_value;
    }
        public var logUtil:LogUtil = null;

        // Java field initializers run after the base constructor
        private function initFieldsGameOptionsFormFactory():void {
    this.logUtil = LogUtil.getInstance();
        }
    

    public function GameOptionsFormFactory() {
        super();
        this.initFieldsGameOptionsFormFactory();
    }
    

    public static function getInstance():GameOptionsFormFactory {
        return GameOptionsFormFactory.instance;
    }
    

    public function init(commandListener:CommandListener, title:String, backgrounBasicColor:BasicColor, foregroundBasicColor:BasicColor):CommandForm {
        try {
            return new GameOptionsForm(commandListener, title, backgrounBasicColor, foregroundBasicColor);
        } catch (e:*) {
            var commonStrings:CommonStrings = CommonStrings.getInstance();
            this.logUtil.put(commonStrings.EXCEPTION, this, commonStrings.INIT, e);
            return CommandForm.getNullCommandForm();
        }
    }
    }
}

