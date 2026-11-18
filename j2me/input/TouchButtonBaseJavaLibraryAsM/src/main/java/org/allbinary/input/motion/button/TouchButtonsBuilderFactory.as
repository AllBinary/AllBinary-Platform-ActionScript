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

    public class TouchButtonsBuilderFactory {
    private static var NO_TOUCH_BUTTON_BUILDER_FACTORY_value:TouchButtonsBuilderFactory;
    private static var NO_TOUCH_BUTTON_BUILDER_FACTORY_set:Boolean = false;
    public static function get NO_TOUCH_BUTTON_BUILDER_FACTORY():TouchButtonsBuilderFactory {
        if (!TouchButtonsBuilderFactory.NO_TOUCH_BUTTON_BUILDER_FACTORY_set) {
            TouchButtonsBuilderFactory.NO_TOUCH_BUTTON_BUILDER_FACTORY_set = true;
            TouchButtonsBuilderFactory.NO_TOUCH_BUTTON_BUILDER_FACTORY_value = new TouchButtonsBuilderFactory();
        }
        return TouchButtonsBuilderFactory.NO_TOUCH_BUTTON_BUILDER_FACTORY_value;
    }
    

    public function getInstance():BaseTouchInput {
        return NoButtonsTouchInputFactory.getInstance();
    }
    }
}

