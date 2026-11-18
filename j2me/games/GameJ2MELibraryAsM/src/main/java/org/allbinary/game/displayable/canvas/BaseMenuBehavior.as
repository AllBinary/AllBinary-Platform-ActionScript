/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2022 AllBinary 
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
package org.allbinary.game.displayable.canvas {
    import org.allbinary.graphics.displayable.event.DisplayChangeEvent;
    import org.allbinary.graphics.paint.NullPaintable;

    public class BaseMenuBehavior {
    private static var instance_value:BaseMenuBehavior;
    private static var instance_set:Boolean = false;
    private static function get instance():BaseMenuBehavior {
        if (!BaseMenuBehavior.instance_set) {
            BaseMenuBehavior.instance_set = true;
            BaseMenuBehavior.instance_value = new BaseMenuBehavior();
        }
        return BaseMenuBehavior.instance_value;
    }
    

    public static function getInstance():BaseMenuBehavior {
        return BaseMenuBehavior.instance;
    }
    

    public function onDisplayChangeEvent(allBinaryGameCanvas:AllBinaryGameCanvas, displayChangeEvent:DisplayChangeEvent):void {
    }
    

    public function initSpecialPaint(allBinaryGameCanvas:AllBinaryGameCanvas):void {
        allBinaryGameCanvas.setNonBotPaintableP(NullPaintable.getInstance());
    }
    

    public function initMenu(allBinaryGameCanvas:AllBinaryGameCanvas):void {
    }
    

    public function updateMenu(allBinaryGameCanvas:AllBinaryGameCanvas):void {
    }
    

    public function popupMenu(allBinaryGameCanvas:AllBinaryGameCanvas):void {
    }
    

    public function closeMenu(allBinaryGameCanvas:AllBinaryGameCanvas):void {
    }
    }
}

