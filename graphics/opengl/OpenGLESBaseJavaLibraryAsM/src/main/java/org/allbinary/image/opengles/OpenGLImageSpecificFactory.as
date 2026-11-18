/*
 *
 * AllBinary Open License Version 1
 * Copyright (c) 2011 AllBinary
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
    import org.allbinary.logic.communication.log.PreLogUtil;
    import org.allbinary.logic.string.StringMaker;
    import org.allbinary.logic.string.StringUtil;

    public class OpenGLImageSpecificFactory {
    private static var instance_value:OpenGLImageSpecificFactory;
    private static var instance_set:Boolean = false;
    private static function get instance():OpenGLImageSpecificFactory {
        if (!OpenGLImageSpecificFactory.instance_set) {
            OpenGLImageSpecificFactory.instance_set = true;
            OpenGLImageSpecificFactory.instance_value = new OpenGLImageSpecificFactory();
        }
        return OpenGLImageSpecificFactory.instance_value;
    }
        private var imageFactory:OpenGLImageFactory = null;
        public var updating:Boolean = false;

        // Java field initializers run after the base constructor
        private function initFieldsOpenGLImageSpecificFactory():void {
    this.imageFactory = OpenGLImageFactory.NULL_OPENGL_IMAGE_FACTORY;
    this.updating = false;
        }

        public function OpenGLImageSpecificFactory() {
            super();
            this.initFieldsOpenGLImageSpecificFactory();
        }
    

    public static function getInstance():OpenGLImageSpecificFactory {
        return OpenGLImageSpecificFactory.instance;
    }
    

    public function setImageFactory(imageFactory:OpenGLImageFactory):void {
        this.imageFactory = imageFactory;
        PreLogUtil.put(new StringMaker().append("Selected Image Factory: ").append(StringUtil.getInstance().toString1(this.imageFactory)).toString(), this, "setImageFactory");
    }
    

    public function getImageFactory():OpenGLImageFactory {
        return this.imageFactory;
    }
    }
}

