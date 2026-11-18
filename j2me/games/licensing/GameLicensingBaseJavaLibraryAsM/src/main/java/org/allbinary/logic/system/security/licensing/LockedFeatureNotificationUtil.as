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
package org.allbinary.logic.system.security.licensing {
    import org.allbinary.game.layer.hud.event.GameNotificationEvent;
    import org.allbinary.game.layer.hud.event.GameNotificationEventHandler;
    import org.allbinary.graphics.color.BasicColor;
    import org.allbinary.graphics.color.BasicColorFactory;
    import org.allbinary.logic.java.bool.BooleanFactory;
    import org.allbinary.logic.math.SmallIntegerSingletonFactory;
    import org.allbinary.media.audio.ErrorSound;
    import org.allbinary.media.audio.PrimaryPlayerQueueFactory;

    public class LockedFeatureNotificationUtil {
    private static var instance_value:LockedFeatureNotificationUtil;
    private static var instance_set:Boolean = false;
    private static function get instance():LockedFeatureNotificationUtil {
        if (!LockedFeatureNotificationUtil.instance_set) {
            LockedFeatureNotificationUtil.instance_set = true;
            LockedFeatureNotificationUtil.instance_value = new LockedFeatureNotificationUtil();
        }
        return LockedFeatureNotificationUtil.instance_value;
    }
        private var gameNotificationEvent:GameNotificationEvent = null;

        // Java field initializers run after the base constructor
        private function initFieldsLockedFeatureNotificationUtil():void {
    this.gameNotificationEvent = new GameNotificationEvent(this, LicenseStrings.getInstance().LOCKED, SmallIntegerSingletonFactory.getInstance().getAt(3), BasicColorFactory.getInstance().RED, BooleanFactory.getInstance().FALSE);
        }

        public function LockedFeatureNotificationUtil() {
            super();
            this.initFieldsLockedFeatureNotificationUtil();
        }
    

    public static function getInstance():LockedFeatureNotificationUtil {
        return LockedFeatureNotificationUtil.instance;
    }
    

    public function fire():void {
        PrimaryPlayerQueueFactory.getInstance().add(ErrorSound.getInstance());
        GameNotificationEventHandler.getInstance().fireEvent(this.gameNotificationEvent);
    }
    

    public function fireWithColor(basicColor:BasicColor):void {
        PrimaryPlayerQueueFactory.getInstance().add(ErrorSound.getInstance());
        this.gameNotificationEvent.setBasicColorP(basicColor);
        GameNotificationEventHandler.getInstance().fireEvent(this.gameNotificationEvent);
    }
    }
}

