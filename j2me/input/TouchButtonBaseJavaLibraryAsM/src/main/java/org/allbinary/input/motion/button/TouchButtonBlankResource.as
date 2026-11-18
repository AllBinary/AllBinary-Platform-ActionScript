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

    public class TouchButtonBlankResource extends TouchButtonResource {
    private static var instance_value:TouchButtonResource;
    private static var instance_set:Boolean = false;
    private static function get instance():TouchButtonResource {
        if (!TouchButtonBlankResource.instance_set) {
            TouchButtonBlankResource.instance_set = true;
            TouchButtonBlankResource.instance_value = new TouchButtonBlankResource();
        }
        return TouchButtonBlankResource.instance_value;
    }
    

    public static function getInstance():TouchButtonResource {
        return TouchButtonBlankResource.instance;
    }
    

    public function TouchButtonBlankResource() {
        super("/touch_button_64_by_64.png", "/touch_button_hint_64_by_64.png");
    }
    }
}

