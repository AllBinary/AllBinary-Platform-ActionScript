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
package org.allbinary.game.layer {
    import java.util.JEnumeration;
    import org.allbinary.layer.Layer;
    import org.allbinary.logic.math.SmallIntegerSingletonFactory;
    import org.allbinary.util.ABHashtable;
    import org.allbinary.util.BasicArrayList;
    import org.allbinary.util.BasicArrayListD;
    import org.allbinary.util.EnumerationUtil;
    import java.lang.JInteger;

    public class LevelLayersFinder {
    private static var instance_value:LevelLayersFinder;
    private static var instance_set:Boolean = false;
    private static function get instance():LevelLayersFinder {
        if (!LevelLayersFinder.instance_set) {
            LevelLayersFinder.instance_set = true;
            LevelLayersFinder.instance_value = new LevelLayersFinder();
        }
        return LevelLayersFinder.instance_value;
    }
        private var enumerationUtil:EnumerationUtil = null;

        // Java field initializers run after the base constructor
        private function initFieldsLevelLayersFinder():void {
    this.enumerationUtil = EnumerationUtil.getInstance();
        }

        public function LevelLayersFinder() {
            super();
            this.initFieldsLevelLayersFinder();
        }
    

    public static function getInstance():LevelLayersFinder {
        return LevelLayersFinder.instance;
    }
    

    public function get_(hashtable:ABHashtable):BasicArrayList {
        var smallIntegerSingletonFactory:SmallIntegerSingletonFactory = SmallIntegerSingletonFactory.getInstance();
        var list:BasicArrayList = new BasicArrayListD();
        var enumeration:JEnumeration = hashtable.keys();
        var layerHashtableCanBeNull:ABHashtable = null;
        var integerCanBeNull:* = null;
        var cachedIntegerCanBeNull:* = null;
        while (this.enumerationUtil.hasMoreElements(enumeration)) {
            layerHashtableCanBeNull = (hashtable.get_((this.enumerationUtil.nextElement(enumeration) as Object)) as ABHashtable);
            integerCanBeNull = (layerHashtableCanBeNull.get_((Layer.ID as Object)) as *);
            cachedIntegerCanBeNull = smallIntegerSingletonFactory.getAt(integerCanBeNull.intValue());
            if (!list.contains(cachedIntegerCanBeNull)) {
                list.add(cachedIntegerCanBeNull);
            }
        }
        return list;
    }
    }
}

