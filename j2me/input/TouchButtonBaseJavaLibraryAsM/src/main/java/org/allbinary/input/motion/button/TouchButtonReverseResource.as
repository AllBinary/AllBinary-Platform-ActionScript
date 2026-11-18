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
package org.allbinary.input.motion.button {

    public class TouchButtonReverseResource extends TouchButtonResource {
    private static var instance_value:TouchButtonResource;
    private static var instance_set:Boolean = false;
    private static function get instance():TouchButtonResource {
        if (!TouchButtonReverseResource.instance_set) {
            TouchButtonReverseResource.instance_set = true;
            TouchButtonReverseResource.instance_value = new TouchButtonReverseResource();
        }
        return TouchButtonReverseResource.instance_value;
    }
    

    public static function getInstance():TouchButtonResource {
        return TouchButtonReverseResource.instance;
    }
    

    public function TouchButtonReverseResource() {
        super("/touch_button_reverse_64_by_64.png", "/touch_button_reverse_hint_64_by_64.png");
    }
    }
}

