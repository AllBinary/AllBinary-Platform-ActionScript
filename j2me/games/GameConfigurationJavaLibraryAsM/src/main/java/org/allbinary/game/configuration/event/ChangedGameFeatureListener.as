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
package org.allbinary.game.configuration.event {
    import org.allbinary.game.configuration.GameConfiguration;

    public class ChangedGameFeatureListener extends BaseChangedGameFeatureListener {
    private static var gameFeatureListener_value:ChangedGameFeatureListener;
    private static var gameFeatureListener_set:Boolean = false;
    private static function get gameFeatureListener():ChangedGameFeatureListener {
        if (!ChangedGameFeatureListener.gameFeatureListener_set) {
            ChangedGameFeatureListener.gameFeatureListener_set = true;
            ChangedGameFeatureListener.gameFeatureListener_value = new ChangedGameFeatureListener();
        }
        return ChangedGameFeatureListener.gameFeatureListener_value;
    }
    

    public static function getInstance():ChangedGameFeatureListener {
        return ChangedGameFeatureListener.gameFeatureListener;
    }
    

    public function isChangedGameConfiguration(gameConfiguration:GameConfiguration):Boolean {
        return this.list.contains(gameConfiguration);
    }
    }
}

