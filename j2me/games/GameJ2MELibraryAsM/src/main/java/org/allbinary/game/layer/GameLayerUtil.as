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
    import org.allbinary.graphics.displayable.DisplayInfoSingleton;
    import org.allbinary.layer.AllBinaryLayer;
    import org.allbinary.view.ViewPositionBase;

    public class GameLayerUtil {
    

    public function GameLayerUtil() {
        super();
    }
    

    public static function isOnScreen(layer:AllBinaryLayer):Boolean {
        var displayInfo:DisplayInfoSingleton = DisplayInfoSingleton.getInstance();
        var viewPosition:ViewPositionBase = layer.getViewPosition();
        return GameLayerUtil.isInside(viewPosition.getX(), viewPosition.getY(), viewPosition.getX2(), viewPosition.getY2(), 0, 0, displayInfo.getLastWidth(), displayInfo.getLastHeight());
    }
    

    public static function isInside(rectX1:int, rectY1:int, rectX2:int, rectY2:int, rect2X1:int, rect2Y1:int, rect2X2:int, rect2Y2:int):Boolean {
        if (rectX1 > rect2X1 && rectX2 < rect2X2 && rectY1 > rect2Y1 && rectY2 < rect2Y2) {
            return true;
        } else {
            return false;
        }
    }
    }
}

