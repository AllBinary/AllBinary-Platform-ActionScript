/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2022 AllBinary 
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
package org.allbinary.graphics.opengles.renderer {
    import org.allbinary.image.opengles.OpenGLESImage;
    import org.allbinary.util.BasicArrayList;
    import org.allbinary.util.BasicArrayListD;

    public class AllBinaryRendererBase3 {
        public var list:BasicArrayList = null;

        // Java field initializers run after the base constructor
        private function initFieldsAllBinaryRendererBase3():void {
    this.list = new BasicArrayListD();
        }

        public function AllBinaryRendererBase3() {
            super();
            this.initFieldsAllBinaryRendererBase3();
        }
    

    public function update(gl:GL10):void {
        while (this.list.size() > 0) {
            var openGLESImage:OpenGLESImage = (this.list.removeAt(0) as OpenGLESImage);
            if (openGLESImage != null) {
                openGLESImage.set_(gl);
            }
        }
    }
    

    public function add(image:Image):void {
        this.list.add(image);
    }
    }
}

