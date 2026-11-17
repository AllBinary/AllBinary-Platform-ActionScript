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
    import org.allbinary.logic.string.StringUtil;

    public class SmallBasicColorCacheFactory {
    private static var instance_value:SmallBasicColorCacheFactory;
    private static var instance_set:Boolean = false;
    private static function get instance():SmallBasicColorCacheFactory {
        if (!SmallBasicColorCacheFactory.instance_set) {
            SmallBasicColorCacheFactory.instance_set = true;
            SmallBasicColorCacheFactory.instance_value = new SmallBasicColorCacheFactory();
        }
        return SmallBasicColorCacheFactory.instance_value;
    }
        private var SIZE:int = 0;
        private var INDEX_TO_COLOR:Vector.<int> = null;
        private var BASIC_COLOR_ARRAY:Vector.<BasicColor> = null;
        private var colorIndex:int = 0;

        // Java field initializers run after the base constructor
        private function initFieldsSmallBasicColorCacheFactory():void {
    this.SIZE = 255;
    this.INDEX_TO_COLOR = new Vector.<int>(this.SIZE);
    this.BASIC_COLOR_ARRAY = new Vector.<BasicColor>(this.SIZE);
    this.colorIndex = 0;
        }
    

    public static function getInstance():SmallBasicColorCacheFactory {
        return SmallBasicColorCacheFactory.instance;
    }
    

    public function SmallBasicColorCacheFactory() {
        super();
        this.initFieldsSmallBasicColorCacheFactory();
    }
    

    public function add(basicDefaultColor:BasicColor):void {
        this.BASIC_COLOR_ARRAY[this.colorIndex] = basicDefaultColor;
        this.INDEX_TO_COLOR[this.colorIndex] = basicDefaultColor.intValue();
        this.colorIndex++;
    }
    

    public function getAndOrCreate(colorAsInt:int):BasicColor {
        var basicColor:BasicColor = null;
        for (var index:int = 0; index < this.SIZE; index++) {
            if (this.INDEX_TO_COLOR[index] == colorAsInt) {
                return this.BASIC_COLOR_ARRAY[index];
            }
        }
        var ALPHA_MASK:int = int(0xFF000000);
        basicColor = BasicColorFactory.getInstance().createInstanceAN(colorAsInt & ALPHA_MASK, colorAsInt & 0x00FFFFFF, StringUtil.getInstance().EMPTY_STRING);
        this.add(basicColor);
        return basicColor;
    }
    }
}

