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
package org.allbinary.media.audio {

    public class BaseSoundsFactory implements SoundsFactoryInterface {
        private var initialized:Boolean = false;

        // Java field initializers run after the base constructor
        private function initFieldsBaseSoundsFactory():void {
    this.initialized = false;
        }

        public function BaseSoundsFactory() {
            super();
            this.initFieldsBaseSoundsFactory();
        }
    

    public function init():void {
    }
    

    public function getSoundInterfaceArray():Vector.<Sound> {
        return new Vector.<Sound>(0);
    }
    

    public function setInitialized(initialized:Boolean):void {
        this.initialized = initialized;
    }
    

    public function isInitialized():Boolean {
        return this.initialized;
    }
    }
}

