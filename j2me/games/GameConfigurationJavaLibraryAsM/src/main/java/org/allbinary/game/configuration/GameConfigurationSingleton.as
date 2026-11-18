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
package org.allbinary.game.configuration {
    import org.allbinary.logic.StdUtil;
    import org.allbinary.util.ABHashtable;
    import org.allbinary.util.BasicArrayList;
    import org.allbinary.util.BasicArrayListD;

    public class GameConfigurationSingleton {
    private static var SINGLETON_value:GameConfigurationSingleton;
    private static var SINGLETON_set:Boolean = false;
    private static function get SINGLETON():GameConfigurationSingleton {
        if (!GameConfigurationSingleton.SINGLETON_set) {
            GameConfigurationSingleton.SINGLETON_set = true;
            GameConfigurationSingleton.SINGLETON_value = new GameConfigurationSingleton();
        }
        return GameConfigurationSingleton.SINGLETON_value;
    }
        private var list:BasicArrayList = null;
        private var hashtable:ABHashtable = null;

        // Java field initializers run after the base constructor
        private function initFieldsGameConfigurationSingleton():void {
    
    
        }
    

    public static function getInstance():GameConfigurationSingleton {
        return GameConfigurationSingleton.SINGLETON;
    }
    

    public function GameConfigurationSingleton() {
        super();
        this.initFieldsGameConfigurationSingleton();
        this.list = new BasicArrayListD();
        this.hashtable = StdUtil.getInstance().createHashtable();
    }
    

    public function getInstanceByName(name:String):GameConfiguration {
        return (this.hashtable.get_(name) as GameConfiguration);
    }
    

    public function getOptionsBasicArrayList():BasicArrayList {
        return this.list;
    }
    

    public function add(gameConfiguration:GameConfiguration):void {
        this.list.add(gameConfiguration);
    }
    

    public function getHashtable():ABHashtable {
        return this.hashtable;
    }
    }
}

