// Generated Code Do Not Modify
package org.allbinary.graphics.opengles.shader {
    import javax.microedition.khronos.opengles.GL10;
    import org.allbinary.string.CommonStrings;

    public class OpenGLObject3dProcessor {
        public var commonStrings:CommonStrings = null;

        // Java field initializers run after the base constructor
        private function initFieldsOpenGLObject3dProcessor():void {
    this.commonStrings = CommonStrings.getInstance();
        }

        public function OpenGLObject3dProcessor() {
            super();
            this.initFieldsOpenGLObject3dProcessor();
        }
    

    public function process(...args):void {
        if (args.length == 2) {
            this.process_jo2(args[0], args[1]);
            return;
        }
        if (args.length == 3) {
            this.process_jo3(args[0], args[1], args[2]);
            return;
        }
        throw new JException("IllegalArgumentException", "process");
    }

    private function process_jo2(gl:GL10, object3d:Object):void {
    }

    private function process_jo3(gl:GL10, object3d:Object, index:int):void {
    }
    
    }
}

