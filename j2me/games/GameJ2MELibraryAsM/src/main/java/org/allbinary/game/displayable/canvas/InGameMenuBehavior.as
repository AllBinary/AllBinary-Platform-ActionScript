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

    public class InGameMenuBehavior extends BaseMenuBehavior {
    private static var instanceC_value:InGameMenuBehavior;
    private static var instanceC_set:Boolean = false;
    private static function get instanceC():InGameMenuBehavior {
        if (!InGameMenuBehavior.instanceC_set) {
            InGameMenuBehavior.instanceC_set = true;
            InGameMenuBehavior.instanceC_value = new InGameMenuBehavior();
        }
        return InGameMenuBehavior.instanceC_value;
    }
    

    override public static function getInstance():InGameMenuBehavior {
        return InGameMenuBehavior.instanceC;
    }
    

    override public function onDisplayChangeEvent(allBinaryGameCanvas:AllBinaryGameCanvas, displayChangeEvent:DisplayChangeEvent):void {
        allBinaryGameCanvas.updateMenuFromEvent(displayChangeEvent);
    }
    

    override public function initSpecialPaint(allBinaryGameCanvas:AllBinaryGameCanvas):void {
        allBinaryGameCanvas.setNonBotPaintableP(new GameCanvasNonBotPaintable(allBinaryGameCanvas));
    }
    

    override public function initMenu(allBinaryGameCanvas:AllBinaryGameCanvas):void {
        allBinaryGameCanvas.initMenu2();
    }
    

    override public function updateMenu(allBinaryGameCanvas:AllBinaryGameCanvas):void {
        allBinaryGameCanvas.initMenu2();
    }
    

    override public function popupMenu(allBinaryGameCanvas:AllBinaryGameCanvas):void {
        allBinaryGameCanvas.popupMenu2();
    }
    

    override public function closeMenu(allBinaryGameCanvas:AllBinaryGameCanvas):void {
        allBinaryGameCanvas.closeMenu2();
    }
    }
}

