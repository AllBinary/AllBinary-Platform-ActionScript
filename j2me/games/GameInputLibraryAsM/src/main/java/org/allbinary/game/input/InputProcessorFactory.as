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
package org.allbinary.game.input {

    public class InputProcessorFactory {
    private static var instance_value:InputProcessorFactory;
    private static var instance_set:Boolean = false;
    private static function get instance():InputProcessorFactory {
        if (!InputProcessorFactory.instance_set) {
            InputProcessorFactory.instance_set = true;
            InputProcessorFactory.instance_value = new InputProcessorFactory();
        }
        return InputProcessorFactory.instance_value;
    }
        private var inputProcessor:InputProcessor = null;

        // Java field initializers run after the base constructor
        private function initFieldsInputProcessorFactory():void {
    this.inputProcessor = new InputProcessor();
        }

        public function InputProcessorFactory() {
            super();
            this.initFieldsInputProcessorFactory();
        }
    

    public static function getInstance():InputProcessorFactory {
        return InputProcessorFactory.instance;
    }
    

    public function getInputProcessor():InputProcessor {
        return this.inputProcessor;
    }
    }
}

