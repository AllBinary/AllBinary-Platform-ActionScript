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
package org.allbinary.game.layer.hud.event {
    import org.allbinary.logic.util.event.AllBinaryEventObject;
    import org.allbinary.logic.util.event.EventListenerInterface;
    import org.allbinary.logic.util.event.NullEventListener;
    import org.allbinary.logic.util.event.handler.BasicEventHandler;
    import org.allbinary.util.BasicArrayList;

    public class GameNotificationEventHandler extends BasicEventHandler {
    private static var instance_value:GameNotificationEventHandler;
    private static var instance_set:Boolean = false;
    private static function get instance():GameNotificationEventHandler {
        if (!GameNotificationEventHandler.instance_set) {
            GameNotificationEventHandler.instance_set = true;
            GameNotificationEventHandler.instance_value = new GameNotificationEventHandler();
        }
        return GameNotificationEventHandler.instance_value;
    }
        public var enabled:Boolean = false;

        // Java field initializers run after the base constructor
        private function initFieldsGameNotificationEventHandler():void {
    this.enabled = true;
        }
    

    public function GameNotificationEventHandler() {
        super();
        this.initFieldsGameNotificationEventHandler();
    }
    

    override public function removeAllListeners():void {
        var eventListenerInterface:EventListenerInterface = NullEventListener.NULL_EVENT_LISTENER;
        var list:BasicArrayList = this.eventListenerInterfaceList;
        if (list.size() > 0) {
            eventListenerInterface = (list.objectArray[0] as EventListenerInterface);
        }
        super.removeAllListeners();
        if (eventListenerInterface != NullEventListener.NULL_EVENT_LISTENER) {
            this.addListenerInterface(eventListenerInterface);
        }
    }
    

    public static function getInstance():GameNotificationEventHandler {
        return GameNotificationEventHandler.instance;
    }
    

    override public function process(eventObject:AllBinaryEventObject, eventListenerInterface:EventListenerInterface):void {
        if (!this.enabled) {
            return;
        }
        var gameNotificationListenerInterface:GameNotificationListenerInterface = (eventListenerInterface as GameNotificationListenerInterface);
        gameNotificationListenerInterface.onGameNotificationEvent((eventObject as GameNotificationEvent));
    }
    }
}

