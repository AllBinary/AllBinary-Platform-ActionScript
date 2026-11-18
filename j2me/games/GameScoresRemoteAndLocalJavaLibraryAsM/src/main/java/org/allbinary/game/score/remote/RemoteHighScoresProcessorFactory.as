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
package org.allbinary.game.score.remote {

    public class RemoteHighScoresProcessorFactory {
    private static var SINGLETON_value:RemoteHighScoresProcessorInterface;
    private static var SINGLETON_set:Boolean = false;
    private static function get SINGLETON():RemoteHighScoresProcessorInterface {
        if (!RemoteHighScoresProcessorFactory.SINGLETON_set) {
            RemoteHighScoresProcessorFactory.SINGLETON_set = true;
            RemoteHighScoresProcessorFactory.SINGLETON_value = new RemoteHighScoresProcessor();
        }
        return RemoteHighScoresProcessorFactory.SINGLETON_value;
    }
    

    public static function getInstance():RemoteHighScoresProcessorInterface {
        return RemoteHighScoresProcessorFactory.SINGLETON;
    }
    }
}

