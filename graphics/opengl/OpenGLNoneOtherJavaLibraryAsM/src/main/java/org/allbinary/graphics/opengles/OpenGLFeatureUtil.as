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
package org.allbinary.graphics.opengles {

    public class OpenGLFeatureUtil {
    private static var instance_value:OpenGLFeatureUtil;
    private static var instance_set:Boolean = false;
    private static function get instance():OpenGLFeatureUtil {
        if (!OpenGLFeatureUtil.instance_set) {
            OpenGLFeatureUtil.instance_set = true;
            OpenGLFeatureUtil.instance_value = new OpenGLFeatureUtil();
        }
        return OpenGLFeatureUtil.instance_value;
    }
    

    public static function getInstance():OpenGLFeatureUtil {
        return OpenGLFeatureUtil.instance;
    }
    

    public function OpenGLFeatureUtil() {
        super();
    }
    

    public function isAnyThreed():Boolean {
        return false;
    }
    }
}

