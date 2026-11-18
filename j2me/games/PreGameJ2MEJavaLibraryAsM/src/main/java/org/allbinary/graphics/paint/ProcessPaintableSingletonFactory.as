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

    public class ProcessPaintableSingletonFactory {
    private static var SINGLETON_value:ProcessPaintable;
    private static var SINGLETON_set:Boolean = false;
    private static function get SINGLETON():ProcessPaintable {
        if (!ProcessPaintableSingletonFactory.SINGLETON_set) {
            ProcessPaintableSingletonFactory.SINGLETON_set = true;
            ProcessPaintableSingletonFactory.SINGLETON_value = new ProcessPaintable();
        }
        return ProcessPaintableSingletonFactory.SINGLETON_value;
    }
    

    public function ProcessPaintableSingletonFactory() {
        super();
    }
    

    public static function getInstance():ProcessPaintable {
        return ProcessPaintableSingletonFactory.SINGLETON;
    }
    }
}

