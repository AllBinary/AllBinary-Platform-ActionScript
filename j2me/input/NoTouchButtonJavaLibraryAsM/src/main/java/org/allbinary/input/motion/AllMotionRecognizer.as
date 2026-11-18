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
package org.allbinary.input.motion {

    public class AllMotionRecognizer {
    private static var index:int = 0;
        private var id:int = 0;

        // Java field initializers run after the base constructor
        private function initFieldsAllMotionRecognizer():void {
    
        }
    

    public function AllMotionRecognizer() {
        super();
        this.initFieldsAllMotionRecognizer();
        this.id = AllMotionRecognizer.index++;
    }
    

    public function processStartMotionEvent(x:int, y:int, deviceId:int, modifiers:int):void {
    }
    

    public function processEndMotionEvent(x:int, y:int, deviceId:int, modifiers:int):void {
    }
    

    public function processDraggedMotionEvent(x:int, y:int, deviceId:int, modifiers:int):void {
    }
    

    public function processMovedMotionEvent(x:int, y:int, deviceId:int, modifiers:int):void {
    }
    

    public function processScrolledMotionEvent(x:int, y:int, deviceId:int, modifiers:int):void {
    }
    

    public function getId():int {
        return this.id;
    }
    }
}

