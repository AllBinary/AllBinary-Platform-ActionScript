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

    public class InGameFeatureChoiceGroups {
    private static var gameFeatureChoiceGroupsExclusive_value:InGameFeatureChoiceGroups;
    private static var gameFeatureChoiceGroupsExclusive_set:Boolean = false;
    private static function get gameFeatureChoiceGroupsExclusive():InGameFeatureChoiceGroups {
        if (!InGameFeatureChoiceGroups.gameFeatureChoiceGroupsExclusive_set) {
            InGameFeatureChoiceGroups.gameFeatureChoiceGroupsExclusive_set = true;
            InGameFeatureChoiceGroups.gameFeatureChoiceGroupsExclusive_value = new InGameFeatureChoiceGroups();
        }
        return InGameFeatureChoiceGroups.gameFeatureChoiceGroupsExclusive_value;
    }
    private static var gameFeatureChoiceGroupsMultiple_value:InGameFeatureChoiceGroups;
    private static var gameFeatureChoiceGroupsMultiple_set:Boolean = false;
    private static function get gameFeatureChoiceGroupsMultiple():InGameFeatureChoiceGroups {
        if (!InGameFeatureChoiceGroups.gameFeatureChoiceGroupsMultiple_set) {
            InGameFeatureChoiceGroups.gameFeatureChoiceGroupsMultiple_set = true;
            InGameFeatureChoiceGroups.gameFeatureChoiceGroupsMultiple_value = new InGameFeatureChoiceGroups();
        }
        return InGameFeatureChoiceGroups.gameFeatureChoiceGroupsMultiple_value;
    }
        private var hashtable:ABHashtable = null;

        // Java field initializers run after the base constructor
        private function initFieldsInGameFeatureChoiceGroups():void {
    this.hashtable = StdUtil.getInstance().createHashtable();
        }
    

    public function InGameFeatureChoiceGroups() {
        super();
        this.initFieldsInGameFeatureChoiceGroups();
    }
    

    public static function getExclusiveInstance():InGameFeatureChoiceGroups {
        return InGameFeatureChoiceGroups.gameFeatureChoiceGroupsExclusive;
    }
    

    public static function getMultipleInstance():InGameFeatureChoiceGroups {
        return InGameFeatureChoiceGroups.gameFeatureChoiceGroupsMultiple;
    }
    

    public function get_():ABHashtable {
        return this.hashtable;
    }
    

    public function add(name:String, list:BasicArrayList):void {
        this.hashtable.put(name, list);
    }
    }
}

