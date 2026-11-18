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
package org.allbinary.game.score {
    import org.allbinary.logic.math.SmallIntegerSingletonFactory;
    import java.lang.JInteger;

    public class Scoreable implements ScoreableInterface {
    private static var ID_value:*;
    private static var ID_set:Boolean = false;
    public static function get ID():* {
        if (!Scoreable.ID_set) {
            Scoreable.ID_set = true;
            Scoreable.ID_value = SmallIntegerSingletonFactory.getInstance().getAt(3);
        }
        return Scoreable.ID_value;
    }
        private var points:int = 0;

        // Java field initializers run after the base constructor
        private function initFieldsScoreable():void {
    
        }
    

    public function Scoreable(points:int) {
        super();
        this.initFieldsScoreable();
        this.points = points;
    }
    

    public function addPoints(points:int):void {
        this.points += points;
    }
    

    public function removePoints(points:int):void {
        this.points -= points;
    }
    

    public function setPoints(points:int):void {
        this.points = points;
    }
    

    public function getPoints():int {
        return this.points;
    }
    }
}

