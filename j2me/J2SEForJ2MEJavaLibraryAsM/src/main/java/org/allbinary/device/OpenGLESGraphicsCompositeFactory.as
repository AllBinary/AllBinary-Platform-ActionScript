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
package org.allbinary.device {

    public class OpenGLESGraphicsCompositeFactory {
    private static var instance_value:OpenGLESGraphicsCompositeFactory;
    private static var instance_set:Boolean = false;
    private static function get instance():OpenGLESGraphicsCompositeFactory {
        if (!OpenGLESGraphicsCompositeFactory.instance_set) {
            OpenGLESGraphicsCompositeFactory.instance_set = true;
            OpenGLESGraphicsCompositeFactory.instance_value = new OpenGLESGraphicsCompositeFactory();
        }
        return OpenGLESGraphicsCompositeFactory.instance_value;
    }
        private var openGLESGraphicsFactory:OpenGLESGraphicsFactory = null;

        // Java field initializers run after the base constructor
        private function initFieldsOpenGLESGraphicsCompositeFactory():void {
    this.openGLESGraphicsFactory = new OpenGLESGraphicsFactory();
        }

        public function OpenGLESGraphicsCompositeFactory() {
            super();
            this.initFieldsOpenGLESGraphicsCompositeFactory();
        }
    

    public static function getInstance():OpenGLESGraphicsCompositeFactory {
        return OpenGLESGraphicsCompositeFactory.instance;
    }
    

    public function set_(openGLESGraphicsFactory:OpenGLESGraphicsFactory):void {
        this.openGLESGraphicsFactory = openGLESGraphicsFactory;
    }
    

    public function get_():OpenGLESGraphicsFactory {
        return this.openGLESGraphicsFactory;
    }
    }
}

