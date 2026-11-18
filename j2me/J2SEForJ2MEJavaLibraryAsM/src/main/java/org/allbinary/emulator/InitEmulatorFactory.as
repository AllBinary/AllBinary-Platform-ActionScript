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
package org.allbinary.emulator {

    public class InitEmulatorFactory {
    private static var instance_value:InitEmulatorFactory;
    private static var instance_set:Boolean = false;
    private static function get instance():InitEmulatorFactory {
        if (!InitEmulatorFactory.instance_set) {
            InitEmulatorFactory.instance_set = true;
            InitEmulatorFactory.instance_value = new InitEmulatorFactory();
        }
        return InitEmulatorFactory.instance_value;
    }
        private var initEmulator:Boolean = false;

        // Java field initializers run after the base constructor
        private function initFieldsInitEmulatorFactory():void {
    this.initEmulator = false;
        }

        public function InitEmulatorFactory() {
            super();
            this.initFieldsInitEmulatorFactory();
        }
    

    public static function getInstance():InitEmulatorFactory {
        return InitEmulatorFactory.instance;
    }
    

    public function setInitEmulator(initEmulator:Boolean):void {
        this.initEmulator = initEmulator;
    }
    

    public function isInitEmulator():Boolean {
        return this.initEmulator;
    }
    }
}

