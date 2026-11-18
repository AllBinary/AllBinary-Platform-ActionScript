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

    public class GameInputStrings {
    private static var instance_value:GameInputStrings;
    private static var instance_set:Boolean = false;
    private static function get instance():GameInputStrings {
        if (!GameInputStrings.instance_set) {
            GameInputStrings.instance_set = true;
            GameInputStrings.instance_value = new GameInputStrings();
        }
        return GameInputStrings.instance_value;
    }
        public var PROCESS_INPUT:String = null;
        public var KEY_PRESSED:String = null;
        public var KEY_RELEASED:String = null;
        public var KEY_REPEATED:String = null;
        public var ON_PRESS_GAME_KEY:String = null;
        public var ON_DOWN_GAME_KEY:String = null;
        public var ON_UP_GAME_KEY:String = null;
        public var NO_KEY:String = null;
        public var ADD_KEY_EVENT:String = null;
        public var REMOVE_KEY_EVENT:String = null;
        public var STRAFE_LEFT:String = null;
        public var STRAFE_RIGHT:String = null;
        public var PROCESS_MOTION_INPUT:String = null;
        public var UDPATE_CURRENT_TOUCH_INPUT_FACTORY:String = null;
        public var ENABLE_PLAYER_GAME_INPUTS:String = null;
        public var ENABLE_PLAYER_GAME_INPUT:String = null;

        // Java field initializers run after the base constructor
        private function initFieldsGameInputStrings():void {
    this.PROCESS_INPUT = "processInput";
    this.KEY_PRESSED = "keyPressed";
    this.KEY_RELEASED = "keyReleased";
    this.KEY_REPEATED = "keyRepeated";
    this.ON_PRESS_GAME_KEY = "onPressGameKeyEvent";
    this.ON_DOWN_GAME_KEY = "onDownGameKeyEvent";
    this.ON_UP_GAME_KEY = "onUpGameKeyEvent";
    this.NO_KEY = "Key Code Not Mapped For Game: ";
    this.ADD_KEY_EVENT = "addGameKeyEvent";
    this.REMOVE_KEY_EVENT = "removeGameKeyEvent";
    this.STRAFE_LEFT = "strafeLeft";
    this.STRAFE_RIGHT = "strafeRight";
    this.PROCESS_MOTION_INPUT = "processMotionInput";
    this.UDPATE_CURRENT_TOUCH_INPUT_FACTORY = "updateCurrentTouchInputFactory";
    this.ENABLE_PLAYER_GAME_INPUTS = "Enabling PlayerGameInputs: ";
    this.ENABLE_PLAYER_GAME_INPUT = "Enabling PlayerGameInput: ";
        }

        public function GameInputStrings() {
            super();
            this.initFieldsGameInputStrings();
        }
    

    public static function getInstance():GameInputStrings {
        return GameInputStrings.instance;
    }
    }
}

