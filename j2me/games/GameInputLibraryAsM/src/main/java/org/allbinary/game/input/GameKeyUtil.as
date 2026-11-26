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
package org.allbinary.game.input {
    import javax.microedition.lcdui.Canvas;

    public class GameKeyUtil {
    private static var instance_value:GameKeyUtil;
    private static var instance_set:Boolean = false;
    private static function get instance():GameKeyUtil {
        if (!GameKeyUtil.instance_set) {
            GameKeyUtil.instance_set = true;
            GameKeyUtil.instance_value = new GameKeyUtil();
        }
        return GameKeyUtil.instance_value;
    }
    

    public function isDirectionKey(key:int):Boolean {
        if (key == Canvas.UP || key == Canvas.DOWN || key == Canvas.LEFT || key == Canvas.RIGHT) {
            return true;
        } else {
            return false;
        }
    }
    

    public static function getInstance():GameKeyUtil {
        return GameKeyUtil.instance;
    }
    }
}

