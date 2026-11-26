/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2025 AllBinary 
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
package org.allbinary.graphics.font {
    import javax.microedition.lcdui.Font;
    import javax.microedition.lcdui.Graphics;

    public class MyFontProcessor {
    private static var instance_value:MyFontProcessor;
    private static var instance_set:Boolean = false;
    private static function get instance():MyFontProcessor {
        if (!MyFontProcessor.instance_set) {
            MyFontProcessor.instance_set = true;
            MyFontProcessor.instance_value = new MyFontProcessor();
        }
        return MyFontProcessor.instance_value;
    }
    

    public static function defaultCharWidth(font:Font):int {
        return font.charWidth("C".charCodeAt(0));
    }
    

    public static function defaultStringWidth(font:Font, size:int):int {
        return MyFontProcessor.defaultCharWidth(font) * size;
    }
    

    public static function getInstance():MyFontProcessor {
        return MyFontProcessor.instance;
    }
    

    public function process(graphics:Graphics):void {
    }
    }
}

