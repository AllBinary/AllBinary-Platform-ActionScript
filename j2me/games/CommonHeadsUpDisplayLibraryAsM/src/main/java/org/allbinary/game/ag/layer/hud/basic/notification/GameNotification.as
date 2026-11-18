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
    import org.allbinary.game.layer.hud.event.GameNotificationEvent;
    import org.allbinary.graphics.color.BasicColor;
    import org.allbinary.graphics.color.BasicColorFactory;
    import org.allbinary.logic.NullUtil;
    import org.allbinary.logic.java.bool.BooleanFactory;
    import org.allbinary.logic.string.StringUtil;
    import org.allbinary.util.BasicArrayList;
    import org.allbinary.util.BasicArrayListD;
    import java.lang.JInteger;

    public class GameNotification {
    private static var NULL_GAME_NOTIFICATION_EVENT_value:GameNotificationEvent;
    private static var NULL_GAME_NOTIFICATION_EVENT_set:Boolean = false;
    public static function get NULL_GAME_NOTIFICATION_EVENT():GameNotificationEvent {
        if (!GameNotification.NULL_GAME_NOTIFICATION_EVENT_set) {
            GameNotification.NULL_GAME_NOTIFICATION_EVENT_set = true;
            GameNotification.NULL_GAME_NOTIFICATION_EVENT_value = new GameNotificationEvent(NullUtil.getInstance().NULL_OBJECT, StringUtil.getInstance().EMPTY_STRING, 0, BasicColorFactory.getInstance().RED, BooleanFactory.getInstance().FALSE);
        }
        return GameNotification.NULL_GAME_NOTIFICATION_EVENT_value;
    }
        public var stringList:BasicArrayList = null;
        public var timeList:BasicArrayList = null;
        public var colorList:BasicArrayList = null;

        // Java field initializers run after the base constructor
        private function initFieldsGameNotification():void {
    this.stringList = new BasicArrayListD();
    this.timeList = new BasicArrayListD();
    this.colorList = new BasicArrayListD();
        }

        public function GameNotification() {
            super();
            this.initFieldsGameNotification();
        }
    

    public function add(string:String, seconds:*, basicColor:BasicColor):void {
        if (!this.stringList.contains(string)) {
            this.stringList.add(string);
            this.timeList.add(seconds);
            this.colorList.add(basicColor);
        }
    }
    

    public function clear():void {
        this.stringList.clear();
        this.timeList.clear();
        this.colorList.clear();
    }
    

    public function getSize():int {
        return this.stringList.size();
    }
    }
}

