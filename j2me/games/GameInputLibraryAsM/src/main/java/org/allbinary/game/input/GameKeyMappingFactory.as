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
    import org.allbinary.logic.NullUtil;

    public class GameKeyMappingFactory {
    private static var instance_value:Object;
    private static var instance_set:Boolean = false;
    private static function get instance():Object {
        if (!GameKeyMappingFactory.instance_set) {
            GameKeyMappingFactory.instance_set = true;
            GameKeyMappingFactory.instance_value = NullUtil.getInstance().NULL_OBJECT;
        }
        return GameKeyMappingFactory.instance_value;
    }
    private static function set instance(value:Object):void {
        GameKeyMappingFactory.instance_set = true;
        GameKeyMappingFactory.instance_value = value;
    }
        private var intKeyToGameKey:Vector.<GameKey> = null;

        // Java field initializers run after the base constructor
        private function initFieldsGameKeyMappingFactory():void {
    this.intKeyToGameKey = new Vector.<GameKey>(InputFactory.getInstance().MAX);
        }
    

    public static function getInstance():GameKeyMappingFactory {
        if (GameKeyMappingFactory.instance == NullUtil.getInstance().NULL_OBJECT) {
            GameKeyMappingFactory.instance = new GameKeyMappingFactory();
        }
        return (GameKeyMappingFactory.instance as GameKeyMappingFactory);
    }
    

    public function GameKeyMappingFactory() {
        super();
        this.initFieldsGameKeyMappingFactory();
        var gameKeyFactory:GameKeyFactory = GameKeyFactory.getInstance();
        this.setGameKey(gameKeyFactory.NONE);
        this.setGameKey(gameKeyFactory.UP);
        this.setGameKey(gameKeyFactory.DOWN);
        this.setGameKey(gameKeyFactory.LEFT);
        this.setGameKey(gameKeyFactory.RIGHT);
        this.setGameKey(gameKeyFactory.KEY_POUND);
        this.setGameKey(gameKeyFactory.KEY_STAR);
        this.setGameKey(gameKeyFactory.KEY_NUM0);
        this.setGameKey(gameKeyFactory.KEY_NUM1);
        this.setGameKey(gameKeyFactory.KEY_NUM2);
        this.setGameKey(gameKeyFactory.KEY_NUM3);
        this.setGameKey(gameKeyFactory.KEY_NUM4);
        this.setGameKey(gameKeyFactory.KEY_NUM5);
        this.setGameKey(gameKeyFactory.KEY_NUM6);
        this.setGameKey(gameKeyFactory.KEY_NUM7);
        this.setGameKey(gameKeyFactory.KEY_NUM8);
        this.setGameKey(gameKeyFactory.KEY_NUM9);
        this.setGameKey(gameKeyFactory.GAME_A);
        this.setGameKey(gameKeyFactory.GAME_B);
        this.setGameKey(gameKeyFactory.GAME_C);
        this.setGameKey(gameKeyFactory.GAME_D);
        this.setGameKey(gameKeyFactory.FIRE);
        this.setGameKey(gameKeyFactory.LEVEL_DOWN);
        this.setGameKey(gameKeyFactory.LEVEL_UP);
    }
    

    public function getGameKey(key:int):GameKey {
        return this.intKeyToGameKey[key];
    }
    

    private function setGameKey(gameKey:GameKey):void {
        this.intKeyToGameKey[gameKey.getId()] = gameKey;
    }
    }
}

