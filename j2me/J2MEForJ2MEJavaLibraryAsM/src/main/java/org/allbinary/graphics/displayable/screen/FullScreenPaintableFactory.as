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
package org.allbinary.graphics.displayable.screen {
    import org.allbinary.graphics.paint.NullPaintable;
    import org.allbinary.graphics.paint.Paintable;

    public class FullScreenPaintableFactory {
    private static var instance_value:FullScreenPaintableFactory;
    private static var instance_set:Boolean = false;
    private static function get instance():FullScreenPaintableFactory {
        if (!FullScreenPaintableFactory.instance_set) {
            FullScreenPaintableFactory.instance_set = true;
            FullScreenPaintableFactory.instance_value = new FullScreenPaintableFactory();
        }
        return FullScreenPaintableFactory.instance_value;
    }
        public var paintable:Paintable = null;

        // Java field initializers run after the base constructor
        private function initFieldsFullScreenPaintableFactory():void {
    this.paintable = NullPaintable.getInstance();
        }

        public function FullScreenPaintableFactory() {
            super();
            this.initFieldsFullScreenPaintableFactory();
        }
    

    public static function getInstance():FullScreenPaintableFactory {
        return FullScreenPaintableFactory.instance;
    }
    }
}

