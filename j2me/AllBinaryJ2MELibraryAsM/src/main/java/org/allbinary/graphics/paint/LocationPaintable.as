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
package org.allbinary.graphics.paint {

    public class LocationPaintable implements LocationPaintableInterface {
    private static var instance_value:LocationPaintable;
    private static var instance_set:Boolean = false;
    private static function get instance():LocationPaintable {
        if (!LocationPaintable.instance_set) {
            LocationPaintable.instance_set = true;
            LocationPaintable.instance_value = new LocationPaintable();
        }
        return LocationPaintable.instance_value;
    }
    

    public static function getInstance():LocationPaintable {
        return LocationPaintable.instance;
    }
    

    public function paintXY(graphics:Graphics, x:int, y:int):void {
    }
    }
}

