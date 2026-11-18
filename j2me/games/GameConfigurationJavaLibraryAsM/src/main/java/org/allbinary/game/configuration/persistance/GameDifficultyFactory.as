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
package org.allbinary.game.configuration.persistance {

    public class GameDifficultyFactory {
    private static var instance_value:GameDifficultyFactory;
    private static var instance_set:Boolean = false;
    private static function get instance():GameDifficultyFactory {
        if (!GameDifficultyFactory.instance_set) {
            GameDifficultyFactory.instance_set = true;
            GameDifficultyFactory.instance_value = new GameDifficultyFactory();
        }
        return GameDifficultyFactory.instance_value;
    }
        private var level:int = 0;

        // Java field initializers run after the base constructor
        private function initFieldsGameDifficultyFactory():void {
    this.level = 0;
        }

        public function GameDifficultyFactory() {
            super();
            this.initFieldsGameDifficultyFactory();
        }
    

    public static function getInstance():GameDifficultyFactory {
        return GameDifficultyFactory.instance;
    }
    

    public function setLevel(level:int):void {
        this.level = level;
    }
    

    public function getLevel():int {
        return this.level;
    }
    }
}

