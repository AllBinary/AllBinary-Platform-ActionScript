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

    public class RemoteErrorHighScoresSingletonFactory {
    private static var SINGLETON_value:HighScores;
    private static var SINGLETON_set:Boolean = false;
    private static function get SINGLETON():HighScores {
        if (!RemoteErrorHighScoresSingletonFactory.SINGLETON_set) {
            RemoteErrorHighScoresSingletonFactory.SINGLETON_set = true;
            RemoteErrorHighScoresSingletonFactory.SINGLETON_value = new HighScores(CommonStrings.getInstance().LOADING, "Remote High Scores Did Not Load", CommonStrings.getInstance().PERIODS);
        }
        return RemoteErrorHighScoresSingletonFactory.SINGLETON_value;
    }
    

    public static function getInstance():HighScores {
        return RemoteErrorHighScoresSingletonFactory.SINGLETON;
    }
    }
}

