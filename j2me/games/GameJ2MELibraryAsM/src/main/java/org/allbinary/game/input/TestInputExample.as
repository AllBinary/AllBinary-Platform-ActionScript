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

    public class TestInputExample implements TestInputInterface {
        private var testValue:int = 0;

        // Java field initializers run after the base constructor
        private function initFieldsTestInputExample():void {
    this.testValue = 0;
        }

        public function TestInputExample() {
            super();
            this.initFieldsTestInputExample();
        }
    

    public function up():void {
    }
    

    public function down():void {
    }
    

    public function left():void {
        this.testValue++;
    }
    

    public function right():void {
        this.testValue--;
    }
    

    public function strafeLeft():void {
    }
    

    public function strafeRight():void {
    }
    

    public function paint(graphics:Graphics):void {
    }
    

    public function paintThreed(graphics:Graphics):void {
    }
    }
}

