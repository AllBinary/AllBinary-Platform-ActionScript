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
package org.allbinary.animation {

    public class IndexedAnimationBehavior extends AnimationBehavior {
        public var frameDelayTime:Number = 0;
        public var loopTotal:int = 0;
        public var elapsedTime:Number = 0;
        public var loopIndex:int = 0;

        // Java field initializers run after the base constructor
        private function initFieldsIndexedAnimationBehavior():void {
    
    
    this.elapsedTime = 0;
    this.loopIndex = 0;
        }
    

    public function IndexedAnimationBehavior(loopTotal:int, frameDelayTime:Number) {
        super();
        this.initFieldsIndexedAnimationBehavior();
        this.loopTotal = loopTotal;
        this.frameDelayTime = frameDelayTime;
    }
    

    override public function reset():void {
        this.loopIndex = 0;
    }
    }
}

