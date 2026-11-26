// Generated Code Do Not Modify
package org.allbinary.graphics {
    import java.io.JIOException;
    import java.io.JInputStream;
    import javax.microedition.lcdui.Image;
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
    

    override public function createBitmap(...args):* {
        if (args.length == 3) {
            return this.createBitmap_jo3(args[0], args[1], args[2]);
        }
        if (args.length == 1) {
            return this.createBitmap_jo1(args[0]);
        }
        return super.createBitmap.apply(this, args);
    }

    private function createBitmap_jo3(width:int, height:int, config:OpenGLBitmapConfig):OpenGLBitmap {
        return new OpenGLBitmap(NullUtil.getInstance().NULL_OBJECT);
    }

    private function createBitmap_jo1(image:Image):PlatformBitmapBase {
        return new OpenGLBitmap(NullUtil.getInstance().NULL_OBJECT);
    }
    

    public function decodeStream(inputStream:JInputStream):OpenGLBitmap {
        return new OpenGLBitmap(NullUtil.getInstance().NULL_OBJECT);
    }
    
    }
}

