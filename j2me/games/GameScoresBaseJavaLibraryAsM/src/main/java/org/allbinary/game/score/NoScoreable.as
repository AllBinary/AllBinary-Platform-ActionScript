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

    public class NoScoreable extends Scoreable {
    private static var SINGLETON_value:NoScoreable;
    private static var SINGLETON_set:Boolean = false;
    private static function get SINGLETON():NoScoreable {
        if (!NoScoreable.SINGLETON_set) {
            NoScoreable.SINGLETON_set = true;
            NoScoreable.SINGLETON_value = new NoScoreable();
        }
        return NoScoreable.SINGLETON_value;
    }
    

    public static function getInstance():NoScoreable {
        return NoScoreable.SINGLETON;
    }
    

    public function NoScoreable() {
        super(0);
    }
    

    override public function addPoints(points:int):void {
    }
    

    override public function removePoints(points:int):void {
    }
    }
}

