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

    public class AnimationBehavior {
    private static var instance_value:AnimationBehavior;
    private static var instance_set:Boolean = false;
    private static function get instance():AnimationBehavior {
        if (!AnimationBehavior.instance_set) {
            AnimationBehavior.instance_set = true;
            AnimationBehavior.instance_value = new AnimationBehavior();
        }
        return AnimationBehavior.instance_value;
    }
    

    public static function getInstance():AnimationBehavior {
        return AnimationBehavior.instance;
    }
    

    public function reset():void {
    }
    }
}

