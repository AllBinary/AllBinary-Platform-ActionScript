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
package org.allbinary.graphics.opengles.shader {
    import org.allbinary.logic.NullUtil;

    public class ModelViewProjection {
    private static var instance_value:ModelViewProjection;
    private static var instance_set:Boolean = false;
    private static function get instance():ModelViewProjection {
        if (!ModelViewProjection.instance_set) {
            ModelViewProjection.instance_set = true;
            ModelViewProjection.instance_value = new ModelViewProjection();
        }
        return ModelViewProjection.instance_value;
    }
    

    public static function getInstance():ModelViewProjection {
        return ModelViewProjection.instance;
    }
    

    public function get_():Vector.<Number> {
        return NullUtil.getInstance().NULL_FLOAT_ARRAY;
    }
    }
}

