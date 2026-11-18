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

    public class BasicColorSetUtil {
    private static var instance_value:BasicColorSetUtil;
    private static var instance_set:Boolean = false;
    private static function get instance():BasicColorSetUtil {
        if (!BasicColorSetUtil.instance_set) {
            BasicColorSetUtil.instance_set = true;
            BasicColorSetUtil.instance_value = new BasicColorSetUtil();
        }
        return BasicColorSetUtil.instance_value;
    }
    

    public static function getInstance():BasicColorSetUtil {
        return BasicColorSetUtil.instance;
    }
    

    public function BasicColorSetUtil() {
        super();
    }
    

    public function setBasicColorP(graphics:Graphics, basicColor:BasicColor):void {
        graphics.setColor(basicColor.intValue());
    }
    

    public function setBasicColorP3(graphics:Graphics, basicColor:BasicColor, value:int):void {
        graphics.setColor(value);
    }
    }
}

