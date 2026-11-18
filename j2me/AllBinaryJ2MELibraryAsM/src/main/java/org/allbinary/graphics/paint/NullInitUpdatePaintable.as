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

    public class NullInitUpdatePaintable extends InitUpdatePaintable {
    private static var SINGLETON_value:NullInitUpdatePaintable;
    private static var SINGLETON_set:Boolean = false;
    private static function get SINGLETON():NullInitUpdatePaintable {
        if (!NullInitUpdatePaintable.SINGLETON_set) {
            NullInitUpdatePaintable.SINGLETON_set = true;
            NullInitUpdatePaintable.SINGLETON_value = new NullInitUpdatePaintable();
        }
        return NullInitUpdatePaintable.SINGLETON_value;
    }
    

    public function NullInitUpdatePaintable() {
        super();
    }
    

    public static function getInstance():InitUpdatePaintable {
        return NullInitUpdatePaintable.SINGLETON;
    }
    }
}

