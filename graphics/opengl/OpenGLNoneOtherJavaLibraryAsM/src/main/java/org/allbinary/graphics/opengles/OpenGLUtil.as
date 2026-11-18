// Generated Code Do Not Modify
package org.allbinary.graphics.opengles {
    import java.lang.JRunnable;

    public class OpenGLUtil {
    private static var instance_value:OpenGLUtil;
    private static var instance_set:Boolean = false;
    private static function get instance():OpenGLUtil {
        if (!OpenGLUtil.instance_set) {
            OpenGLUtil.instance_set = true;
            OpenGLUtil.instance_value = new OpenGLUtil();
        }
        return OpenGLUtil.instance_value;
    }
    

    public static function getInstance():OpenGLUtil {
        return OpenGLUtil.instance;
    }
    

    public function addImage(image:Image):Image {
        return image;
    }
    

    public function clear():void {
    }
    

    public function addRunnable(runnable:JRunnable):void {
    }
    }
}

