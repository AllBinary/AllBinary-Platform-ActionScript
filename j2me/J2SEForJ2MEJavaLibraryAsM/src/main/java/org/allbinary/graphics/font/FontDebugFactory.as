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
package org.allbinary.graphics.font {
    import javax.microedition.lcdui.Font;
    import javax.microedition.lcdui.Graphics;

    public class FontDebugFactory {
    private static var instance_value:FontDebugFactory;
    private static var instance_set:Boolean = false;
    private static function get instance():FontDebugFactory {
        if (!FontDebugFactory.instance_set) {
            FontDebugFactory.instance_set = true;
            FontDebugFactory.instance_value = new FontDebugFactory();
        }
        return FontDebugFactory.instance_value;
    }
    

    public static function getInstance():FontDebugFactory {
        return FontDebugFactory.instance;
    }
    

    public function setFont(font:Font, graphics:Graphics):void {
        graphics.setFont(font);
    }
    }
}

