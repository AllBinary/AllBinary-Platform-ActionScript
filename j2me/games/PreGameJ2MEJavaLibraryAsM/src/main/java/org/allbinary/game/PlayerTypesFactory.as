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

    public class PlayerTypesFactory {
    private static var SINGLETON_value:PlayerTypesFactory;
    private static var SINGLETON_set:Boolean = false;
    private static function get SINGLETON():PlayerTypesFactory {
        if (!PlayerTypesFactory.SINGLETON_set) {
            PlayerTypesFactory.SINGLETON_set = true;
            PlayerTypesFactory.SINGLETON_value = new PlayerTypesFactory();
        }
        return PlayerTypesFactory.SINGLETON_value;
    }
        public var PLAYER_TYPE_ONE:PlayerType = null;
        public var PLAYER_TYPE_TWO:PlayerType = null;
        public var PLAYER_TYPE_THREE:PlayerType = null;

        // Java field initializers run after the base constructor
        private function initFieldsPlayerTypesFactory():void {
    this.PLAYER_TYPE_ONE = new PlayerType("Player Type One", 0);
    this.PLAYER_TYPE_TWO = new PlayerType("Player Type Two", 1);
    this.PLAYER_TYPE_THREE = new PlayerType("Player Type Three", 2);
        }

        public function PlayerTypesFactory() {
            super();
            this.initFieldsPlayerTypesFactory();
        }
    

    public static function getInstance():PlayerTypesFactory {
        return PlayerTypesFactory.SINGLETON;
    }
    }
}

