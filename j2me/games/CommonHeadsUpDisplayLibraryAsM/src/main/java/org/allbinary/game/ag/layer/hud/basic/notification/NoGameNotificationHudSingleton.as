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
package org.allbinary.game.ag.layer.hud.basic.notification {
    import org.allbinary.game.graphics.hud.BasicHudFactory;
    import org.allbinary.logic.communication.log.LogUtil;
    import org.allbinary.string.CommonStrings;

    public class NoGameNotificationHudSingleton {
    private static var instance_value:NoGameNotificationHudSingleton;
    private static var instance_set:Boolean = false;
    private static function get instance():NoGameNotificationHudSingleton {
        if (!NoGameNotificationHudSingleton.instance_set) {
            NoGameNotificationHudSingleton.instance_set = true;
            NoGameNotificationHudSingleton.instance_value = new NoGameNotificationHudSingleton();
        }
        return NoGameNotificationHudSingleton.instance_value;
    }
        public var logUtil:LogUtil = null;
        private var gameNotificationHud:GameNotificationHud = null;

        // Java field initializers run after the base constructor
        private function initFieldsNoGameNotificationHudSingleton():void {
    this.logUtil = LogUtil.getInstance();
    this.gameNotificationHud = GameNotificationHud.NULL_GAME_NOTIFICATION;
        }
    

    public static function getInstance():NoGameNotificationHudSingleton {
        return NoGameNotificationHudSingleton.instance;
    }
    

    public function NoGameNotificationHudSingleton() {
        super();
        this.initFieldsNoGameNotificationHudSingleton();
        try {
            var basicHudFactory:BasicHudFactory = BasicHudFactory.getInstance();
            this.gameNotificationHud = new NoGameGameNotificationHud();
        } catch (e:*) {
            var commonStrings:CommonStrings = CommonStrings.getInstance();
            this.logUtil.put(commonStrings.EXCEPTION, this, commonStrings.CONSTRUCTOR, e);
        }
    }
    

    public function getGameNotificationHud():GameNotificationHud {
        return this.gameNotificationHud;
    }
    }
}

