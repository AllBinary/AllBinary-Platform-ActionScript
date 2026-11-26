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
    import org.allbinary.game.configuration.event.ChangedGameFeatureListener;
    import org.allbinary.logic.StdUtil;
    import org.allbinary.util.ABHashtable;

    public class Feature {
    private static var hashtable_value:ABHashtable;
    private static var hashtable_set:Boolean = false;
    private static function get hashtable():ABHashtable {
        if (!Feature.hashtable_set) {
            Feature.hashtable_set = true;
            Feature.hashtable_value = StdUtil.getInstance().createHashtable();
        }
        return Feature.hashtable_value;
    }
    private static function set hashtable(value:ABHashtable):void {
        Feature.hashtable_set = true;
        Feature.hashtable_value = value;
    }
        private var name:String = null;

        // Java field initializers run after the base constructor
        private function initFieldsFeature():void {
    
        }
    

    public function Feature(name:String) {
        super();
        this.initFieldsFeature();
        this.name = name;
        Feature.add(name, this);
        ChangedGameFeatureListener.getInstance().add(this);
    }
    

    public static function getInstance1(name:String):Feature {
        return (Feature.hashtable.get_(name) as Feature);
    }
    

    private static function add(name:String, gameFeature:Feature):void {
        Feature.hashtable.put(name, gameFeature);
    }
    

    public function toString():String {
        return this.getName();
    }
    

    public function getName():String {
        return this.name;
    }
    }
}

