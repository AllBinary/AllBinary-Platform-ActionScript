// Generated Code Do Not Modify
package org.allbinary.graphics {
    import java.io.JIOException;
    import java.io.JInputStream;
    import org.allbinary.logic.NullUtil;
    import org.allbinary.platform.graphics.PlatformBitmapBase;
    import org.allbinary.platform.graphics.PlatformBitmapBaseFactory;

    public class OpenGLBitmapFactory extends PlatformBitmapBaseFactory {
    private static var instance_value:OpenGLBitmapFactory;
    private static var instance_set:Boolean = false;
    private static function get instance():OpenGLBitmapFactory {
        if (!OpenGLBitmapFactory.instance_set) {
            OpenGLBitmapFactory.instance_set = true;
            OpenGLBitmapFactory.instance_value = new OpenGLBitmapFactory();
        }
        return OpenGLBitmapFactory.instance_value;
    }
        public var ARGB_8888:OpenGLBitmapConfig = null;

        // Java field initializers run after the base constructor
        private function initFieldsOpenGLBitmapFactory():void {
    this.ARGB_8888 = new OpenGLBitmapConfig(NullUtil.getInstance().NULL_OBJECT);
        }

        public function OpenGLBitmapFactory() {
            super();
            this.initFieldsOpenGLBitmapFactory();
        }
    

    public static function getInstance():OpenGLBitmapFactory {
        return OpenGLBitmapFactory.instance;
    }
    

    public function createBitmap(width:int, height:int, config:OpenGLBitmapConfig):OpenGLBitmap {
        return new OpenGLBitmap(NullUtil.getInstance().NULL_OBJECT);
    }
    

    public function decodeStream(inputStream:InputStream):OpenGLBitmap {
        return new OpenGLBitmap(NullUtil.getInstance().NULL_OBJECT);
    }
    

    override public function createBitmap(image:Image):PlatformBitmapBase {
        return new OpenGLBitmap(NullUtil.getInstance().NULL_OBJECT);
    }
    }
}

