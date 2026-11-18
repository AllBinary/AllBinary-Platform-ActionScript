// Generated Code Do Not Modify
package org.allbinary.device {

    public class OpenGLESNullGraphicsFactory {
    private static var instance_value:OpenGLESGraphics;
    private static var instance_set:Boolean = false;
    private static function get instance():OpenGLESGraphics {
        if (!OpenGLESNullGraphicsFactory.instance_set) {
            OpenGLESNullGraphicsFactory.instance_set = true;
            OpenGLESNullGraphicsFactory.instance_value = new OpenGLESGraphics();
        }
        return OpenGLESNullGraphicsFactory.instance_value;
    }
    

    public static function getInstance():OpenGLESGraphics {
        return OpenGLESNullGraphicsFactory.instance;
    }
    }
}

