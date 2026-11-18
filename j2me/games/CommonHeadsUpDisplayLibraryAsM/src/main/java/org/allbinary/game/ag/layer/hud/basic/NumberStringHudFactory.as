/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2025 AllBinary 
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
package org.allbinary.game.ag.layer.hud.basic {
    import org.allbinary.game.graphics.hud.BasicHudFactory;
    import org.allbinary.graphics.color.BasicColorFactory;
    import org.allbinary.logic.NullUtil;
    import org.allbinary.logic.communication.log.LogUtil;
    import org.allbinary.logic.string.StringUtil;
    import org.allbinary.string.CommonStrings;

    public class NumberStringHudFactory {
    private static var instance_value:Object;
    private static var instance_set:Boolean = false;
    private static function get instance():Object {
        if (!NumberStringHudFactory.instance_set) {
            NumberStringHudFactory.instance_set = true;
            NumberStringHudFactory.instance_value = NullUtil.getInstance();
        }
        return NumberStringHudFactory.instance_value;
    }
        public var NULL_NUMBER_STRING_HUD:NumberStringHud = null;

        // Java field initializers run after the base constructor
        private function initFieldsNumberStringHudFactory():void {
    this.NULL_NUMBER_STRING_HUD = this.createHud();
        }

        public function NumberStringHudFactory() {
            super();
            this.initFieldsNumberStringHudFactory();
        }
    

    public static function getInstance():NumberStringHudFactory {
        if (NumberStringHudFactory.instance == NullUtil.getInstance()) {
            NumberStringHudFactory.instance = new NumberStringHudFactory();
        }
        return (NumberStringHudFactory.instance as NumberStringHudFactory);
    }
    

    public function createHud():NumberStringHud {
        try {
            return new NumberStringHud(StringUtil.getInstance().EMPTY_STRING, 9, BasicHudFactory.getInstance().ABSOLUTE, 1, 0, BasicColorFactory.getInstance().NULL_COLOR);
        } catch (e:*) {
            var logUtil:LogUtil = LogUtil.getInstance();
            var commonStrings:CommonStrings = CommonStrings.getInstance();
            logUtil.put(commonStrings.EXCEPTION, this, commonStrings.CONSTRUCTOR, e);
            throw new JException("RuntimeException", "");
        }
    }
    }
}

