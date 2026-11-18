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
    import org.allbinary.string.CommonPhoneStrings;

    public class GameKeyFactory {
    private static var instance_value:Object;
    private static var instance_set:Boolean = false;
    private static function get instance():Object {
        if (!GameKeyFactory.instance_set) {
            GameKeyFactory.instance_set = true;
            GameKeyFactory.instance_value = NullUtil.getInstance().NULL_OBJECT;
        }
        return GameKeyFactory.instance_value;
    }
        public var NONE:GameKey = null;
        public var UP:GameKey = null;
        public var DOWN:GameKey = null;
        public var LEFT:GameKey = null;
        public var RIGHT:GameKey = null;
        public var KEY_POUND:GameKey = null;
        public var KEY_STAR:GameKey = null;
        public var KEY_NUM0:GameKey = null;
        public var KEY_NUM1:GameKey = null;
        public var KEY_NUM2:GameKey = null;
        public var KEY_NUM3:GameKey = null;
        public var KEY_NUM4:GameKey = null;
        public var KEY_NUM5:GameKey = null;
        public var KEY_NUM6:GameKey = null;
        public var KEY_NUM7:GameKey = null;
        public var KEY_NUM8:GameKey = null;
        public var KEY_NUM9:GameKey = null;
        public var GAME_A:GameKey = null;
        public var GAME_B:GameKey = null;
        public var GAME_C:GameKey = null;
        public var GAME_D:GameKey = null;
        public var FIRE:GameKey = null;
        public var LEVEL_DOWN:GameKey = null;
        public var LEVEL_UP:GameKey = null;

        // Java field initializers run after the base constructor
        private function initFieldsGameKeyFactory():void {
    this.NONE = new GameKey(int(InputFactory.getInstance().MAX - 1), "None");
    this.UP = new GameKey(Canvas.UP, CommonPhoneStrings.getInstance().UP);
    this.DOWN = new GameKey(Canvas.DOWN, CommonPhoneStrings.getInstance().DOWN);
    this.LEFT = new GameKey(Canvas.LEFT, CommonPhoneStrings.getInstance().LEFT);
    this.RIGHT = new GameKey(Canvas.RIGHT, CommonPhoneStrings.getInstance().RIGHT);
    this.KEY_POUND = new GameKey(Canvas.KEY_POUND, "POUND");
    this.KEY_STAR = new GameKey(Canvas.KEY_STAR, "STAR");
    this.KEY_NUM0 = new GameKey(Canvas.KEY_NUM0, CommonPhoneStrings.getInstance().ZERO);
    this.KEY_NUM1 = new GameKey(Canvas.KEY_NUM1, CommonPhoneStrings.getInstance().ONE);
    this.KEY_NUM2 = new GameKey(Canvas.KEY_NUM2, CommonPhoneStrings.getInstance().TWO);
    this.KEY_NUM3 = new GameKey(Canvas.KEY_NUM3, CommonPhoneStrings.getInstance().THREE);
    this.KEY_NUM4 = new GameKey(Canvas.KEY_NUM4, CommonPhoneStrings.getInstance().FOUR);
    this.KEY_NUM5 = new GameKey(Canvas.KEY_NUM5, CommonPhoneStrings.getInstance().FIVE);
    this.KEY_NUM6 = new GameKey(Canvas.KEY_NUM6, CommonPhoneStrings.getInstance().SIX);
    this.KEY_NUM7 = new GameKey(Canvas.KEY_NUM7, CommonPhoneStrings.getInstance().SEVEN);
    this.KEY_NUM8 = new GameKey(Canvas.KEY_NUM8, CommonPhoneStrings.getInstance().EIGHT);
    this.KEY_NUM9 = new GameKey(Canvas.KEY_NUM9, CommonPhoneStrings.getInstance().NINE);
    this.GAME_A = new GameKey(Canvas.GAME_A, "Game A");
    this.GAME_B = new GameKey(Canvas.GAME_B, "Game B");
    this.GAME_C = new GameKey(Canvas.GAME_C, "Game C");
    this.GAME_D = new GameKey(Canvas.GAME_D, "Game D");
    this.FIRE = new GameKey(Canvas.FIRE, CommonPhoneStrings.getInstance().FIRE);
    this.LEVEL_DOWN = new GameKey(Canvas.KEY_NUM9 + 1, "Cheat Level Up");
    this.LEVEL_UP = new GameKey(Canvas.KEY_NUM9 + 2, "Cheat Level Down");
        }

        public function GameKeyFactory() {
            super();
            this.initFieldsGameKeyFactory();
        }
    

    public static function getInstance():GameKeyFactory {
        if (GameKeyFactory.instance == NullUtil.getInstance().NULL_OBJECT) {
            GameKeyFactory.instance = new GameKeyFactory();
        }
        return (GameKeyFactory.instance as GameKeyFactory);
    }
    }
}

