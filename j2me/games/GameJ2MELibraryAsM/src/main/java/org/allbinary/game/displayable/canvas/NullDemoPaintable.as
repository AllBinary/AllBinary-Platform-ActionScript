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
package org.allbinary.game.displayable.canvas {

    public class NullDemoPaintable implements DemoPaintableInterface {
    private static var NULL_DEMO_PAINTABLE_value:NullDemoPaintable;
    private static var NULL_DEMO_PAINTABLE_set:Boolean = false;
    public static function get NULL_DEMO_PAINTABLE():NullDemoPaintable {
        if (!NullDemoPaintable.NULL_DEMO_PAINTABLE_set) {
            NullDemoPaintable.NULL_DEMO_PAINTABLE_set = true;
            NullDemoPaintable.NULL_DEMO_PAINTABLE_value = new NullDemoPaintable();
        }
        return NullDemoPaintable.NULL_DEMO_PAINTABLE_value;
    }
    

    public function showGamePaintable():void {
    }
    }
}

