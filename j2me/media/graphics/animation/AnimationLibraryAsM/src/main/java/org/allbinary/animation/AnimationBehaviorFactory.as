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

    public class AnimationBehaviorFactory {
    private static var instance_value:AnimationBehaviorFactory;
    private static var instance_set:Boolean = false;
    private static function get instance():AnimationBehaviorFactory {
        if (!AnimationBehaviorFactory.instance_set) {
            AnimationBehaviorFactory.instance_set = true;
            AnimationBehaviorFactory.instance_value = new AnimationBehaviorFactory();
        }
        return AnimationBehaviorFactory.instance_value;
    }
    

    public static function getInstance():AnimationBehaviorFactory {
        return AnimationBehaviorFactory.instance;
    }
    

    public function getOrCreateInstance():AnimationBehavior {
        return AnimationBehavior.getInstance();
    }
    }
}

