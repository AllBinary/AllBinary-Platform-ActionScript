// Generated Code Do Not Modify
package org.allbinary.device {
    import javax.microedition.khronos.opengles.GL;
    import javax.microedition.khronos.opengles.GL10;
    import javax.microedition.lcdui.Font;
    import javax.microedition.lcdui.Graphics;
    import org.allbinary.graphics.font.FontDebugBase;
    import org.allbinary.image.opengles.OpenGLSurfaceChangedInterface;
    import org.allbinary.string.CommonStrings;

    public class OpenGLESGraphics extends Graphics implements OpenGLSurfaceChangedInterface, GraphicsInterface {
        public var commonStrings:CommonStrings = null;
        public var gl:GL10 = null;

        // Java field initializers run after the base constructor
        private function initFieldsOpenGLESGraphics():void {
    this.commonStrings = CommonStrings.getInstance();
    this.gl = NullGL10.NULL_GL10;
        }
    

    public function OpenGLESGraphics() {
        super();
        this.initFieldsOpenGLESGraphics();
    }
    

    public function updateGL(gl:GL):void {
    }
    

    public function set_(...args):* {
        if (args.length == 1) {
            return this.set__jo1(args[0]);
        }
        throw new JException("IllegalArgumentException", "set");
    }

    private function set__jo1(gl:GL):void {
    }
    

    public function init(...args):void {
        if (args.length == 0) {
            this.init_jo0();
            return;
        }
        throw new JException("IllegalArgumentException", "init");
    }

    private function init_jo0():void {
    }
    

    public function update(...args):void {
        if (args.length == 0) {
            this.update_jo0();
            return;
        }
        throw new JException("IllegalArgumentException", "update");
    }

    private function update_jo0():void {
    }
    

    public function setOrthoginalMode():void {
    }
    

    public function setCameraMode():void {
    }
    

    public function getGl10():GL10 {
        return this.gl;
    }
    

    public function setFontDebug(font:Font, fontDebug:FontDebugBase):void {
        throw new JException("RuntimeException", "");
    }
    }
}

