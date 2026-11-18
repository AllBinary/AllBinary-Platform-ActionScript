/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2025 AllBinary 
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
package org.allbinary.animation.text {

    public class TextChangeListener {
    private static var instance_value:TextChangeListener;
    private static var instance_set:Boolean = false;
    private static function get instance():TextChangeListener {
        if (!TextChangeListener.instance_set) {
            TextChangeListener.instance_set = true;
            TextChangeListener.instance_value = new TextChangeListener();
        }
        return TextChangeListener.instance_value;
    }
    

    public static function getInstance():TextChangeListener {
        return TextChangeListener.instance;
    }
    

    public function onMeasure():void {
    }
    }
}

