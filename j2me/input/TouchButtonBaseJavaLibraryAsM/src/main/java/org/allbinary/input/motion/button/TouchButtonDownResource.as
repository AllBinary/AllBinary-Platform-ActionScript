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

    public class TouchButtonDownResource extends TouchButtonResource {
    private static var instance_value:TouchButtonResource;
    private static var instance_set:Boolean = false;
    private static function get instance():TouchButtonResource {
        if (!TouchButtonDownResource.instance_set) {
            TouchButtonDownResource.instance_set = true;
            TouchButtonDownResource.instance_value = new TouchButtonDownResource();
        }
        return TouchButtonDownResource.instance_value;
    }
    

    public static function getInstance():TouchButtonResource {
        return TouchButtonDownResource.instance;
    }
    

    public function TouchButtonDownResource() {
        super("/touch_button_down_arrow_64_by_64.png", "/touch_button_down_arrow_hint_64_by_64.png");
    }
    }
}

