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
    import org.allbinary.game.graphics.hud.BasicHud;
    import org.allbinary.game.graphics.hud.BasicHudFactory;
    import org.allbinary.game.layer.hud.event.GameNotificationEvent;
    import org.allbinary.game.layer.hud.event.GameNotificationListenerInterface;
    import org.allbinary.graphics.color.BasicColor;
    import org.allbinary.graphics.color.BasicColorFactory;
    import org.allbinary.logic.communication.log.ForcedLogUtil;
    import org.allbinary.logic.util.event.AllBinaryEventObject;
    import org.allbinary.logic.util.event.EventStrings;
    import java.lang.JInteger;

    public class GameNotificationHud extends BasicHud implements GameNotificationListenerInterface {
    private static var NULL_GAME_NOTIFICATION_value:GameNotificationHud;
    private static var NULL_GAME_NOTIFICATION_set:Boolean = false;
    public static function get NULL_GAME_NOTIFICATION():GameNotificationHud {
        if (!GameNotificationHud.NULL_GAME_NOTIFICATION_set) {
            GameNotificationHud.NULL_GAME_NOTIFICATION_set = true;
            GameNotificationHud.NULL_GAME_NOTIFICATION_value = new GameNotificationHud(BasicHudFactory.getInstance().TOPCENTER, BasicHudFactory.getInstance().HORIZONTAL, 0, BasicColorFactory.getInstance().RED);
        }
        return GameNotificationHud.NULL_GAME_NOTIFICATION_value;
    }
        private var METHOD_NAME:String = null;
        private var lastGameNotificationEvent:GameNotificationEvent = null;

        // Java field initializers run after the base constructor
        private function initFieldsGameNotificationHud():void {
    this.METHOD_NAME = "onGameNotificationEvent";
    this.lastGameNotificationEvent = GameNotification.NULL_GAME_NOTIFICATION_EVENT;
        }
    

    public function GameNotificationHud(location:int, direction:int, bufferZone:int, basicColor:BasicColor) {
        super(location, direction, bufferZone, basicColor);
        this.initFieldsGameNotificationHud();
    }
    

    override public function onEvent(eventObject:AllBinaryEventObject):void {
        ForcedLogUtil.log(EventStrings.getInstance().PERFORMANCE_MESSAGE, this);
    }
    

    public function onGameNotificationEvent(gameNotificationEvent:GameNotificationEvent):void {
        if (this.lastGameNotificationEvent !== gameNotificationEvent) {
            this.lastGameNotificationEvent = gameNotificationEvent;
            this.logUtil.putF(gameNotificationEvent.getString(), this, this.METHOD_NAME);
        }
        this.add(gameNotificationEvent.getString(), gameNotificationEvent.getSeconds(), gameNotificationEvent.getBasicColorP(), gameNotificationEvent.getPermanent());
    }
    

    public function add(string:String, seconds:*, basicColor:BasicColor, permanent:*):void {
    }
    

    public function processTick():void {
    }
    

    public function paint(graphics:Graphics):void {
    }
    

    public function clear():void {
    }
    }
}

