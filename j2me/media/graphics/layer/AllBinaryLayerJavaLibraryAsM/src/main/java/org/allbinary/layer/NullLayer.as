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
package org.allbinary.layer {

    public class NullLayer extends Layer {
    private static var instance_value:NullLayer;
    private static var instance_set:Boolean = false;
    private static function get instance():NullLayer {
        if (!NullLayer.instance_set) {
            NullLayer.instance_set = true;
            NullLayer.instance_value = new NullLayer();
        }
        return NullLayer.instance_value;
    }
    

    public static function getInstance():NullLayer {
        return NullLayer.instance;
    }
    

    public function NullLayer() {
        super(0, 0);
    }
    

    override public function paint(graphics:Graphics):void {
    }
    }
}

