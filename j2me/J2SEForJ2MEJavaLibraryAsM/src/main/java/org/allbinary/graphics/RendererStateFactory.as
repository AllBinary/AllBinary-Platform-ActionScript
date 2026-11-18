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
package org.allbinary.graphics {

    public class RendererStateFactory {
    private static var instance_value:RendererStateFactory;
    private static var instance_set:Boolean = false;
    private static function get instance():RendererStateFactory {
        if (!RendererStateFactory.instance_set) {
            RendererStateFactory.instance_set = true;
            RendererStateFactory.instance_value = new RendererStateFactory();
        }
        return RendererStateFactory.instance_value;
    }
        private var loaded:Boolean = false;
        private var surfaceChanged:Boolean = false;

        // Java field initializers run after the base constructor
        private function initFieldsRendererStateFactory():void {
    this.loaded = false;
    this.surfaceChanged = false;
        }

        public function RendererStateFactory() {
            super();
            this.initFieldsRendererStateFactory();
        }
    

    public static function getInstance():RendererStateFactory {
        return RendererStateFactory.instance;
    }
    

    public function setLoaded(loaded:Boolean):void {
        this.loaded = loaded;
    }
    

    public function isLoaded():Boolean {
        return this.loaded;
    }
    

    public function setSurfaceChanged(initialized:Boolean):void {
        this.surfaceChanged = initialized;
    }
    

    public function isSurfaceChanged():Boolean {
        return this.surfaceChanged;
    }
    }
}

