/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2026 AllBinary 
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
package org.allbinary.graphics.canvas.transition.progress {

    public class ProgressEndListener {
    private static var instance_value:ProgressEndListener;
    private static var instance_set:Boolean = false;
    public static function get instance():ProgressEndListener {
        if (!ProgressEndListener.instance_set) {
            ProgressEndListener.instance_set = true;
            ProgressEndListener.instance_value = new ProgressEndListener();
        }
        return ProgressEndListener.instance_value;
    }
    

    public function onEndEvent():void {
    }
    }
}

