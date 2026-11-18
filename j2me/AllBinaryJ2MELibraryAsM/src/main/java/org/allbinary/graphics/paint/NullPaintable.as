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

    public class NullPaintable extends Paintable {
    private static var SINGLETON_value:NullPaintable;
    private static var SINGLETON_set:Boolean = false;
    private static function get SINGLETON():NullPaintable {
        if (!NullPaintable.SINGLETON_set) {
            NullPaintable.SINGLETON_set = true;
            NullPaintable.SINGLETON_value = new NullPaintable();
        }
        return NullPaintable.SINGLETON_value;
    }
    

    public function NullPaintable() {
        super();
    }
    

    public static function getInstance():Paintable {
        return NullPaintable.SINGLETON;
    }
    }
}

