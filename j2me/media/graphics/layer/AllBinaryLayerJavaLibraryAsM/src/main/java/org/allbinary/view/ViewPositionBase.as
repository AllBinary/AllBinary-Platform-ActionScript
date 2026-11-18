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
package org.allbinary.view {
    import org.allbinary.graphics.GPoint;

    public class ViewPositionBase extends GPoint {
    private static var NULL_VIEW_POSITION_value:ViewPositionBase;
    private static var NULL_VIEW_POSITION_set:Boolean = false;
    public static function get NULL_VIEW_POSITION():ViewPositionBase {
        if (!ViewPositionBase.NULL_VIEW_POSITION_set) {
            ViewPositionBase.NULL_VIEW_POSITION_set = true;
            ViewPositionBase.NULL_VIEW_POSITION_value = new ViewPositionBase(0, 0, 0);
        }
        return ViewPositionBase.NULL_VIEW_POSITION_value;
    }
    

    public function ViewPositionBase(x:int, y:int, z:int) {
        super(x, y, z);
    }
    

    public function getX2():int {
        return this.getX();
    }
    

    public function getY2():int {
        return this.getY();
    }
    

    public function getZ2():int {
        return this.getZ();
    }
    

    public function setAllbinaryLayer(allbinaryLayer:Object):void {
    }
    }
}

