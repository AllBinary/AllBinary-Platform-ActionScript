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
package org.allbinary.game.ag.life {

    public class Life implements LifeInterface {
    private static var NO_LIFE_value:Life;
    private static var NO_LIFE_set:Boolean = false;
    public static function get NO_LIFE():Life {
        if (!Life.NO_LIFE_set) {
            Life.NO_LIFE_set = true;
            Life.NO_LIFE_value = Life.createLife();
        }
        return Life.NO_LIFE_value;
    }
        private var lives:int = 0;
        private var startLives:int = 0;
        private var maxlives:int = 0;

        // Java field initializers run after the base constructor
        private function initFieldsLife():void {
    
    
    
        }
    

    public static function createLife():Life {
        try {
            return new Life(((int(0) << 16) >> 16), ((int(0) << 16) >> 16));
        } catch (e:*) {
            throw new JException("RuntimeException", "");
        }
    }
    

    public function Life(lives:int, maxlives:int) {
        super();
        this.initFieldsLife();
        this.maxlives = maxlives;
        if (lives > this.maxlives) {
            throw new JException("Exception", "To Many Lives");
        }
        this.lives = lives;
        this.startLives = lives;
    }
    

    public function get_():int {
        return this.lives;
    }
    

    public function set_(lives:int):void {
        this.lives = lives;
    }
    

    public function reset():void {
        this.lives = this.startLives;
    }
    

    public function add(lives:int):void {
        if (!this.reachedLimit()) {
            if (int(this.lives + lives) <= this.getMaxlives()) {
                this.lives = ((int((int(this.lives + lives))) << 16) >> 16);
            } else {
                this.lives = this.getMaxlives();
            }
        }
    }
    

    public function isAlive():Boolean {
        if (this.lives <= 0) {
            return false;
        } else {
            return true;
        }
    }
    

    public function getMaxlives():int {
        return this.maxlives;
    }
    

    private function reachedLimit():Boolean {
        if (this.lives > this.maxlives || this.lives < 0) {
            return true;
        } else {
            return false;
        }
    }
    

    public function deaths(lives:int):void {
        if (!this.reachedLimit()) {
            if (int(this.lives - lives) >= 0) {
                this.lives = ((int((int(this.lives - lives))) << 16) >> 16);
            } else {
                this.lives = 0;
            }
        }
    }
    

    public function getStartLives():int {
        return this.startLives;
    }
    

    public function setStartLives(startLives:int):void {
        this.startLives = startLives;
    }
    }
}

