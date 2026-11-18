// Generated Code Do Not Modify
package org.allbinary.graphics.opengles {

    public class OpenGLThreadUtil {
    private static var instance_value:OpenGLThreadUtil;
    private static var instance_set:Boolean = false;
    private static function get instance():OpenGLThreadUtil {
        if (!OpenGLThreadUtil.instance_set) {
            OpenGLThreadUtil.instance_set = true;
            OpenGLThreadUtil.instance_value = new OpenGLThreadUtil();
        }
        return OpenGLThreadUtil.instance_value;
    }
    

    public static function getInstance():OpenGLThreadUtil {
        return OpenGLThreadUtil.instance;
    }
    

    public function set_(glSurfaceView:Object):void {
    }
    

    public function onPause():void {
    }
    

    public function onResume():void {
    }
    }
}

