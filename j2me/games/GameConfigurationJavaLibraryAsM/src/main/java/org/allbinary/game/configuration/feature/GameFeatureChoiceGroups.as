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
package org.allbinary.game.configuration.feature {
    import org.allbinary.logic.StdUtil;
    import org.allbinary.util.ABHashtable;
    import org.allbinary.util.BasicArrayList;

    public class GameFeatureChoiceGroups {
    private static var gameFeatureChoiceGroupsExclusive_value:GameFeatureChoiceGroups;
    private static var gameFeatureChoiceGroupsExclusive_set:Boolean = false;
    private static function get gameFeatureChoiceGroupsExclusive():GameFeatureChoiceGroups {
        if (!GameFeatureChoiceGroups.gameFeatureChoiceGroupsExclusive_set) {
            GameFeatureChoiceGroups.gameFeatureChoiceGroupsExclusive_set = true;
            GameFeatureChoiceGroups.gameFeatureChoiceGroupsExclusive_value = new GameFeatureChoiceGroups();
        }
        return GameFeatureChoiceGroups.gameFeatureChoiceGroupsExclusive_value;
    }
    private static var gameFeatureChoiceGroupsMultiple_value:GameFeatureChoiceGroups;
    private static var gameFeatureChoiceGroupsMultiple_set:Boolean = false;
    private static function get gameFeatureChoiceGroupsMultiple():GameFeatureChoiceGroups {
        if (!GameFeatureChoiceGroups.gameFeatureChoiceGroupsMultiple_set) {
            GameFeatureChoiceGroups.gameFeatureChoiceGroupsMultiple_set = true;
            GameFeatureChoiceGroups.gameFeatureChoiceGroupsMultiple_value = new GameFeatureChoiceGroups();
        }
        return GameFeatureChoiceGroups.gameFeatureChoiceGroupsMultiple_value;
    }
        private var hashtable:ABHashtable = null;

        // Java field initializers run after the base constructor
        private function initFieldsGameFeatureChoiceGroups():void {
    this.hashtable = StdUtil.getInstance().createHashtable();
        }
    

    public function GameFeatureChoiceGroups() {
        super();
        this.initFieldsGameFeatureChoiceGroups();
    }
    

    public static function getExclusiveInstance():GameFeatureChoiceGroups {
        return GameFeatureChoiceGroups.gameFeatureChoiceGroupsExclusive;
    }
    

    public static function getMultipleInstance():GameFeatureChoiceGroups {
        return GameFeatureChoiceGroups.gameFeatureChoiceGroupsMultiple;
    }
    

    public function get_():ABHashtable {
        return this.hashtable;
    }
    

    public function add(name:String, list:BasicArrayList):void {
        this.hashtable.put(name, list);
    }
    }
}

