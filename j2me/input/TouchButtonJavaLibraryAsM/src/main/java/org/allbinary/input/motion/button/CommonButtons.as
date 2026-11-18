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
    import org.allbinary.graphics.PointFactory;
    import org.allbinary.graphics.Rectangle;
    import org.allbinary.graphics.displayable.DisplayInfoSingleton;

    public class CommonButtons {
    private static var instance_value:CommonButtons;
    private static var instance_set:Boolean = false;
    private static function get instance():CommonButtons {
        if (!CommonButtons.instance_set) {
            CommonButtons.instance_set = true;
            CommonButtons.instance_value = new CommonButtons();
        }
        return CommonButtons.instance_value;
    }
        public var STANDARD_BUTTON_SIZE:int = 0;
        public var NORMAL_BUTTON:Rectangle = null;
        public var LARGE_BUTTON:Rectangle = null;

        // Java field initializers run after the base constructor
        private function initFieldsCommonButtons():void {
    
    
    
        }
    

    public static function getInstance():CommonButtons {
        return CommonButtons.instance;
    }
    

    public function CommonButtons() {
        super();
        this.initFieldsCommonButtons();
        var displayInfo:DisplayInfoSingleton = DisplayInfoSingleton.getInstance();
        var commonButtonSize:int = 128;
        while (commonButtonSize > 64) {
            var totalColumns:int = int(displayInfo.getLastWidth() / commonButtonSize);
            var totalRows:int = int(displayInfo.getLastHeight() / commonButtonSize);
            var max:int = totalColumns;
            if (totalRows > max) {
                max = totalRows;
            }
            if (max > 9) {
                break;
            }
            commonButtonSize = commonButtonSize >> 1;
        }
        this.STANDARD_BUTTON_SIZE = commonButtonSize;
        this.NORMAL_BUTTON = new Rectangle(PointFactory.getInstance().ZERO_ZERO, this.STANDARD_BUTTON_SIZE, this.STANDARD_BUTTON_SIZE);
        this.LARGE_BUTTON = new Rectangle(PointFactory.getInstance().ZERO_ZERO, this.STANDARD_BUTTON_SIZE << 1, this.STANDARD_BUTTON_SIZE << 1);
    }
    }
}

