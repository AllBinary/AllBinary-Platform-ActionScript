// Generated Code Do Not Modify
package org.allbinary.device {
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
    

    override public function set_(gl:GL):void {
    }
    

    public function init():void {
    }
    

    public function update():void {
    }
    

    public function setOrthoginalMode():void {
    }
    

    public function setCameraMode():void {
    }
    

    public function getGl10():GL10 {
        return this.gl;
    }
    

    override public function setFontDebug(font:Font, fontDebug:FontDebugBase):void {
        throw new JException("RuntimeException", "");
    }
    }
}

