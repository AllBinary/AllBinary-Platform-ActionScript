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
    import org.allbinary.game.layer.hud.event.GameNotificationEvent;
    import org.allbinary.game.layer.hud.event.GameNotificationEventHandler;
    import org.allbinary.graphics.color.BasicColorFactory;
    import org.allbinary.logic.java.bool.BooleanFactory;
    import org.allbinary.logic.math.SmallIntegerSingletonFactory;
    import org.allbinary.media.audio.ErrorSound;
    import org.allbinary.media.audio.PrimaryPlayerQueueFactory;
    import org.allbinary.media.audio.SelectSound;
    import java.lang.JInteger;

    public class TextNotificationUtil {
    private static var instance_value:TextNotificationUtil;
    private static var instance_set:Boolean = false;
    private static function get instance():TextNotificationUtil {
        if (!TextNotificationUtil.instance_set) {
            TextNotificationUtil.instance_set = true;
            TextNotificationUtil.instance_value = new TextNotificationUtil();
        }
        return TextNotificationUtil.instance_value;
    }
        private var TWO:* = null;
        private var FALSE:* = null;
        private var gameNotificationEventHandler:GameNotificationEventHandler = null;

        // Java field initializers run after the base constructor
        private function initFieldsTextNotificationUtil():void {
    this.TWO = SmallIntegerSingletonFactory.getInstance().getAt(2);
    this.FALSE = BooleanFactory.getInstance().FALSE;
    this.gameNotificationEventHandler = GameNotificationEventHandler.getInstance();
        }

        public function TextNotificationUtil() {
            super();
            this.initFieldsTextNotificationUtil();
        }
    

    public static function getInstance():TextNotificationUtil {
        return TextNotificationUtil.instance;
    }
    

    public function fireError(message:String):void {
        PrimaryPlayerQueueFactory.getInstance().add(ErrorSound.getInstance());
        this.fire(message);
    }
    

    public function fireNew(message:String):void {
        PrimaryPlayerQueueFactory.getInstance().add(SelectSound.getInstance());
        this.fire(message);
    }
    

    public function fireSuccess(message:String):void {
        PrimaryPlayerQueueFactory.getInstance().add(SelectSound.getInstance());
        this.fire(message);
    }
    

    public function fire(message:String):void {
        var gameNotificationEvent:GameNotificationEvent = new GameNotificationEvent(this, message, this.TWO, BasicColorFactory.getInstance().RED, this.FALSE);
        this.gameNotificationEventHandler.fireEvent(gameNotificationEvent);
    }
    }
}

