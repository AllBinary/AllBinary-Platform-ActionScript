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

    public class LayerManagerNoDebug extends LayerManagerLoggingBase {
    private static var instance_value:LayerManagerNoDebug;
    private static var instance_set:Boolean = false;
    private static function get instance():LayerManagerNoDebug {
        if (!LayerManagerNoDebug.instance_set) {
            LayerManagerNoDebug.instance_set = true;
            LayerManagerNoDebug.instance_value = new LayerManagerNoDebug();
        }
        return LayerManagerNoDebug.instance_value;
    }
    

    public static function getInstance():LayerManagerNoDebug {
        return LayerManagerNoDebug.instance;
    }
    }
}

