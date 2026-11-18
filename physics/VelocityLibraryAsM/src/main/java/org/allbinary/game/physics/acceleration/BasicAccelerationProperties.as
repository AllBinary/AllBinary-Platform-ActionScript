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
package org.allbinary.game.physics.acceleration {

    public class BasicAccelerationProperties {
        private var forward:int = 0;
        private var reverse:int = 0;

        // Java field initializers run after the base constructor
        private function initFieldsBasicAccelerationProperties():void {
    this.forward = 0;
    this.reverse = 0;
        }
    

    public function BasicAccelerationProperties(forward:int, reverse:int) {
        super();
        this.initFieldsBasicAccelerationProperties();
        this.setForward(forward);
        this.setReverse(reverse);
    }
    

    public function setReverse(reverse:int):void {
        this.reverse = reverse;
    }
    

    public function getReverse():int {
        return this.reverse;
    }
    

    public function setForward(forward:int):void {
        this.forward = forward;
    }
    

    public function getForward():int {
        return this.forward;
    }
    }
}

