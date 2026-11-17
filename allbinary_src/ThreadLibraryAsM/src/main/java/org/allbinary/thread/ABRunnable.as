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
package org.allbinary.thread {
    import java.lang.JThread;

    public class ABRunnable implements RunnableInterface {
        private var running:Boolean = false;

        // Java field initializers run after the base constructor
        private function initFieldsABRunnable():void {
    this.running = false;
        }

        public function ABRunnable() {
            super();
            this.initFieldsABRunnable();
        }
    

    public function setThread(thread:JThread):void {
    }
    

    public function isRunning():Boolean {
        return this.running;
    }
    

    public function setRunning(running:Boolean):void {
        this.running = running;
    }
    

    public function run():void {
    }
    

    public function getType():int {
        return -1;
    }
    }
}

