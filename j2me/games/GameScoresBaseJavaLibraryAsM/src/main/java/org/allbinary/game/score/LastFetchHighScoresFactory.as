/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2022 AllBinary 
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
    import org.allbinary.logic.NullUtil;

    public class LastFetchHighScoresFactory {
    private static var instance_value:Object;
    private static var instance_set:Boolean = false;
    private static function get instance():Object {
        if (!LastFetchHighScoresFactory.instance_set) {
            LastFetchHighScoresFactory.instance_set = true;
            LastFetchHighScoresFactory.instance_value = NullUtil.getInstance().NULL_OBJECT;
        }
        return LastFetchHighScoresFactory.instance_value;
    }
        public var highScoresArray:Vector.<HighScores> = null;

        // Java field initializers run after the base constructor
        private function initFieldsLastFetchHighScoresFactory():void {
    this.highScoresArray = NoHighScoresFactory.getInstance().NO_HIGH_SCORES;
        }

        public function LastFetchHighScoresFactory() {
            super();
            this.initFieldsLastFetchHighScoresFactory();
        }
    

    public static function getInstance():LastFetchHighScoresFactory {
        if (LastFetchHighScoresFactory.instance == NullUtil.getInstance().NULL_OBJECT) {
            LastFetchHighScoresFactory.instance = new LastFetchHighScoresFactory();
        }
        return (LastFetchHighScoresFactory.instance as LastFetchHighScoresFactory);
    }
    }
}

