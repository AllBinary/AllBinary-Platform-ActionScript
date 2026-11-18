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
    import org.allbinary.string.CommonStrings;

    public class NullHighScoresSingletonFactory {
    private static var SINGLETON_value:HighScores;
    private static var SINGLETON_set:Boolean = false;
    private static function get SINGLETON():HighScores {
        if (!NullHighScoresSingletonFactory.SINGLETON_set) {
            NullHighScoresSingletonFactory.SINGLETON_set = true;
            NullHighScoresSingletonFactory.SINGLETON_value = new HighScores(CommonStrings.getInstance().LOADING, "High Scores Not Loaded", CommonStrings.getInstance().PERIODS);
        }
        return NullHighScoresSingletonFactory.SINGLETON_value;
    }
    

    public static function getInstance():HighScores {
        return NullHighScoresSingletonFactory.SINGLETON;
    }
    }
}

