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
package org.allbinary.game {
    import org.allbinary.logic.string.StringUtil;

    public class GameTypeFactory {
    private static var instance_value:GameTypeFactory;
    private static var instance_set:Boolean = false;
    private static function get instance():GameTypeFactory {
        if (!GameTypeFactory.instance_set) {
            GameTypeFactory.instance_set = true;
            GameTypeFactory.instance_value = new GameTypeFactory();
        }
        return GameTypeFactory.instance_value;
    }
        public var NULL_GAME_TYPE_ARRAY:Vector.<GameType> = null;
        public var NONE:GameType = null;
        public var SINGLE_PLAYER:GameType = null;
        public var MULTI_PLAYER:GameType = null;
        public var BOT:GameType = null;

        // Java field initializers run after the base constructor
        private function initFieldsGameTypeFactory():void {
    this.NULL_GAME_TYPE_ARRAY = new Vector.<GameType>(0);
    this.NONE = new GameType(StringUtil.getInstance().NULL_STRING);
    this.SINGLE_PLAYER = new GameType("Single Player");
    this.MULTI_PLAYER = new GameType("Multi Player");
    this.BOT = new GameType("Artificial Player");
        }

        public function GameTypeFactory() {
            super();
            this.initFieldsGameTypeFactory();
        }
    

    public static function getInstance():GameTypeFactory {
        return GameTypeFactory.instance;
    }
    }
}

