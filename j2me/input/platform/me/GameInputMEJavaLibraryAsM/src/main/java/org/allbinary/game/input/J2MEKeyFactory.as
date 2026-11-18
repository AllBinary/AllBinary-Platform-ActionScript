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

    public class J2MEKeyFactory {
    private static var instance_value:J2MEKeyFactory;
    private static var instance_set:Boolean = false;
    private static function get instance():J2MEKeyFactory {
        if (!J2MEKeyFactory.instance_set) {
            J2MEKeyFactory.instance_set = true;
            J2MEKeyFactory.instance_value = new J2MEKeyFactory();
        }
        return J2MEKeyFactory.instance_value;
    }
        private var gameKeyFactory:GameKeyFactory = null;

        // Java field initializers run after the base constructor
        private function initFieldsJ2MEKeyFactory():void {
    this.gameKeyFactory = GameKeyFactory.getInstance();
        }
    

    public static function getInstance():J2MEKeyFactory {
        return J2MEKeyFactory.instance;
    }
    

    public function J2MEKeyFactory() {
        super();
        this.initFieldsJ2MEKeyFactory();
    }
    

    public function init():void {
        var gameKeyArray:Vector.<GameKey> = new <GameKey>[this.gameKeyFactory.DOWN, this.gameKeyFactory.FIRE, this.gameKeyFactory.GAME_A, this.gameKeyFactory.GAME_B, this.gameKeyFactory.GAME_C, this.gameKeyFactory.GAME_D, this.gameKeyFactory.KEY_NUM0, this.gameKeyFactory.KEY_NUM1, this.gameKeyFactory.KEY_NUM2, this.gameKeyFactory.KEY_NUM3, this.gameKeyFactory.KEY_NUM4, this.gameKeyFactory.KEY_NUM5, this.gameKeyFactory.KEY_NUM6, this.gameKeyFactory.KEY_NUM7, this.gameKeyFactory.KEY_NUM8, this.gameKeyFactory.KEY_NUM9, this.gameKeyFactory.KEY_POUND, this.gameKeyFactory.KEY_STAR, this.gameKeyFactory.LEFT, this.gameKeyFactory.LEVEL_DOWN, this.gameKeyFactory.LEVEL_UP, this.gameKeyFactory.NONE, this.gameKeyFactory.RIGHT, this.gameKeyFactory.UP];
        var inputFactory:InputFactory = InputFactory.getInstance();
        for (var index:int = gameKeyArray.length; --index >= 0; ) {
            inputFactory.add(gameKeyArray[index].getId(), gameKeyArray[index]);
        }
    }
    

    public function isSubmission(input:Input):Boolean {
        if (input == this.gameKeyFactory.FIRE) {
            return true;
        }
        return false;
    }
    

    public function isDelete(input:Input):Boolean {
        if (input == this.gameKeyFactory.GAME_D) {
            return true;
        }
        return false;
    }
    

    public function isBackSpace(input:Input):Boolean {
        return false;
    }
    

    public function isUp(input:Input):Boolean {
        if (input == this.gameKeyFactory.UP) {
            return true;
        }
        return false;
    }
    

    public function isDown(input:Input):Boolean {
        if (input == this.gameKeyFactory.DOWN) {
            return true;
        }
        return false;
    }
    

    public function isLeft(input:Input):Boolean {
        if (input == this.gameKeyFactory.LEFT) {
            return true;
        }
        return false;
    }
    

    public function isRight(input:Input):Boolean {
        if (input == this.gameKeyFactory.RIGHT) {
            return true;
        }
        return false;
    }
    

    public function isEnter(input:Input):Boolean {
        if (input == this.gameKeyFactory.FIRE) {
            return true;
        }
        return false;
    }
    }
}

