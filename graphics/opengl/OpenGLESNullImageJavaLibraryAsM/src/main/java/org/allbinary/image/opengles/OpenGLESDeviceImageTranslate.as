/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2025 AllBinary 
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
package org.allbinary.image.opengles {

    public class OpenGLESDeviceImageTranslate extends OpenGLESImageTranslate {
        public var translateX:Number = 0.0;
        public var translateY:Number = 0.0;
        public var translateX2:Number = 0.0;
        public var translateY2:Number = 0.0;

        // Java field initializers run after the base constructor
        private function initFieldsOpenGLESDeviceImageTranslate():void {
    this.translateX = 0.0;
    this.translateY = 0.0;
    this.translateX2 = 0.0;
    this.translateY2 = 0.0;
        }

        public function OpenGLESDeviceImageTranslate() {
            super();
            this.initFieldsOpenGLESDeviceImageTranslate();
        }
    

    override public function translate(gl:GL10, openGLESImage:OpenGLESImage, x:Number, y:Number):void {
        openGLESImage.imageProcessor.translate(gl, this.translateX + (openGLESImage.openGLESImageProperties.scaleX * x), this.translateY + (openGLESImage.openGLESImageProperties.scaleY * y));
    }
    

    override public function translate2(gl:GL10, openGLESImage:OpenGLESImage):void {
        openGLESImage.imageProcessor.translate(gl, this.translateX2, this.translateY2);
    }
    }
}

