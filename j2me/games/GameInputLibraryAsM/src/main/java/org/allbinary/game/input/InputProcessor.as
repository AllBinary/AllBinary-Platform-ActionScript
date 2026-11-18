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

    public class InputProcessor {
        public var gameInputStrings:GameInputStrings = null;

        // Java field initializers run after the base constructor
        private function initFieldsInputProcessor():void {
    this.gameInputStrings = GameInputStrings.getInstance();
        }

        public function InputProcessor() {
            super();
            this.initFieldsInputProcessor();
        }
    

    public function keyPressedByDevice(keyCode:int, deviceId:int):void {
    }
    

    public function keyReleasedByDevice(canvas:Canvas, keyCode:int, deviceId:int):void {
    }
    }
}

