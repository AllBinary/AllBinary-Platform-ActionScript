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
package org.allbinary.game.displayable {
    import org.allbinary.graphics.displayable.event.DisplayChangeEventHandler;
    import org.allbinary.graphics.displayable.event.DisplayChangeEventListener;
    import org.allbinary.logic.util.event.handler.BasicEventHandler;
    import org.allbinary.util.BasicArrayList;
    import org.allbinary.util.BasicArrayListD;

    public class GameLevelDisplayChangeEventListenersFactory {
    private static var instance_value:GameLevelDisplayChangeEventListenersFactory;
    private static var instance_set:Boolean = false;
    private static function get instance():GameLevelDisplayChangeEventListenersFactory {
        if (!GameLevelDisplayChangeEventListenersFactory.instance_set) {
            GameLevelDisplayChangeEventListenersFactory.instance_set = true;
            GameLevelDisplayChangeEventListenersFactory.instance_value = new GameLevelDisplayChangeEventListenersFactory();
        }
        return GameLevelDisplayChangeEventListenersFactory.instance_value;
    }
        private var list:BasicArrayList = null;

        // Java field initializers run after the base constructor
        private function initFieldsGameLevelDisplayChangeEventListenersFactory():void {
    this.list = new BasicArrayListD();
        }

        public function GameLevelDisplayChangeEventListenersFactory() {
            super();
            this.initFieldsGameLevelDisplayChangeEventListenersFactory();
        }
    

    public static function getInstance():GameLevelDisplayChangeEventListenersFactory {
        return GameLevelDisplayChangeEventListenersFactory.instance;
    }
    

    public function add(displayChangeEventListener:DisplayChangeEventListener):void {
        this.list.add(displayChangeEventListener);
        DisplayChangeEventHandler.getInstance().addListenerInterface(displayChangeEventListener);
    }
    

    public function clear():void {
        var displayChangeEventHandler:BasicEventHandler = DisplayChangeEventHandler.getInstance();
        var displayChangeEventListener:DisplayChangeEventListener = null;
        for (var index:int = this.list.size(); --index >= 0; ) {
            displayChangeEventListener = (this.list.objectArray[index] as DisplayChangeEventListener);
            displayChangeEventHandler.removeListener(displayChangeEventListener);
        }
        this.list.clear();
    }
    }
}

