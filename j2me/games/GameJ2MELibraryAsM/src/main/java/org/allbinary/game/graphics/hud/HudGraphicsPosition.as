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
package org.allbinary.game.graphics.hud {
    import org.allbinary.graphics.GPoint;
    import org.allbinary.graphics.PointFactory;

    public class HudGraphicsPosition {
    private static var NULL_HUD_GRAPHICS_POSITION_value:HudGraphicsPosition;
    private static var NULL_HUD_GRAPHICS_POSITION_set:Boolean = false;
    public static function get NULL_HUD_GRAPHICS_POSITION():HudGraphicsPosition {
        if (!HudGraphicsPosition.NULL_HUD_GRAPHICS_POSITION_set) {
            HudGraphicsPosition.NULL_HUD_GRAPHICS_POSITION_set = true;
            HudGraphicsPosition.NULL_HUD_GRAPHICS_POSITION_value = new HudGraphicsPosition(PointFactory.getInstance().ZERO_ZERO, 9);
        }
        return HudGraphicsPosition.NULL_HUD_GRAPHICS_POSITION_value;
    }
        private var anchor:int = 0;
        private var point:GPoint = null;

        // Java field initializers run after the base constructor
        private function initFieldsHudGraphicsPosition():void {
    this.anchor = 0;
    this.point = PointFactory.getInstance().ZERO_ZERO;
        }
    

    public function HudGraphicsPosition(point:GPoint, anchor:int) {
        super();
        this.initFieldsHudGraphicsPosition();
        this.setAnchor(anchor);
        this.setPoint(point);
    }
    

    public function getAnchor():int {
        return this.anchor;
    }
    

    private function setAnchor(anchor:int):void {
        this.anchor = anchor;
    }
    

    public function getPoint():GPoint {
        return this.point;
    }
    

    public function setPoint(point:GPoint):void {
        this.point = point;
    }
    }
}

