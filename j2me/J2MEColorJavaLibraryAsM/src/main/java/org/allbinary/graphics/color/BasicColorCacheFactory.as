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
package org.allbinary.graphics.color {
    import org.allbinary.logic.StdUtil;
    import org.allbinary.util.ABHashtable;
    import java.lang.JInteger;

    public class BasicColorCacheFactory {
    private static var instance_value:BasicColorCacheFactory;
    private static var instance_set:Boolean = false;
    private static function get instance():BasicColorCacheFactory {
        if (!BasicColorCacheFactory.instance_set) {
            BasicColorCacheFactory.instance_set = true;
            BasicColorCacheFactory.instance_value = new BasicColorCacheFactory();
        }
        return BasicColorCacheFactory.instance_value;
    }
        private var hashtable:ABHashtable = null;

        // Java field initializers run after the base constructor
        private function initFieldsBasicColorCacheFactory():void {
    this.hashtable = StdUtil.getInstance().createHashtable();
        }
    

    public static function getInstance():BasicColorCacheFactory {
        return BasicColorCacheFactory.instance;
    }
    

    public function BasicColorCacheFactory() {
        super();
        this.initFieldsBasicColorCacheFactory();
    }
    

    public function add(basicDefaultColor:BasicColor):void {
        this.hashtable.put(basicDefaultColor.intValue(), basicDefaultColor);
    }
    

    public function getAndOrCreate(integer:*):BasicColor {
        var basicColor:BasicColor = (this.hashtable.get_(integer) as BasicColor);
        if (basicColor == null) {
            basicColor = BasicColorFactory.getInstance().createInstance(integer.intValue());
            this.hashtable.put(integer, basicColor);
        }
        return basicColor;
    }
    }
}

