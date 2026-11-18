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

    public class NullLocationPaintable extends LocationPaintable {
    private static var instanceC_value:NullLocationPaintable;
    private static var instanceC_set:Boolean = false;
    private static function get instanceC():NullLocationPaintable {
        if (!NullLocationPaintable.instanceC_set) {
            NullLocationPaintable.instanceC_set = true;
            NullLocationPaintable.instanceC_value = new NullLocationPaintable();
        }
        return NullLocationPaintable.instanceC_value;
    }
    

    override public static function getInstance():NullLocationPaintable {
        return NullLocationPaintable.instanceC;
    }
    }
}

