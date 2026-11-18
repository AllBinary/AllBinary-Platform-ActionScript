// Generated Code Do Not Modify
package org.allbinary.graphics.opengles {

    public class NullOpenGLProcessorFactory {
    private static var instance_value:OpenGLProcessor;
    private static var instance_set:Boolean = false;
    private static function get instance():OpenGLProcessor {
        if (!NullOpenGLProcessorFactory.instance_set) {
            NullOpenGLProcessorFactory.instance_set = true;
            NullOpenGLProcessorFactory.instance_value = new OpenGLProcessor();
        }
        return NullOpenGLProcessorFactory.instance_value;
    }
    

    public static function getInstance():OpenGLProcessor {
        return NullOpenGLProcessorFactory.instance;
    }
    }
}

