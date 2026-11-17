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
package org.allbinary.graphics.color {

    public class ColorTemperatureUtil {
    private static var instance_value:ColorTemperatureUtil;
    private static var instance_set:Boolean = false;
    private static function get instance():ColorTemperatureUtil {
        if (!ColorTemperatureUtil.instance_set) {
            ColorTemperatureUtil.instance_set = true;
            ColorTemperatureUtil.instance_value = new ColorTemperatureUtil();
        }
        return ColorTemperatureUtil.instance_value;
    }
        private var basicColorFactory:BasicColorFactory = null;

        // Java field initializers run after the base constructor
        private function initFieldsColorTemperatureUtil():void {
    this.basicColorFactory = BasicColorFactory.getInstance();
        }

        public function ColorTemperatureUtil() {
            super();
            this.initFieldsColorTemperatureUtil();
        }
    

    public static function getInstance():ColorTemperatureUtil {
        return ColorTemperatureUtil.instance;
    }
    

    public function getBasicColor(thirdTemp:int):BasicColor {
        var basicColor:BasicColor = this.basicColorFactory.RED;
        if (thirdTemp > 3700) {
            basicColor = this.basicColorFactory.PURPLE;
        } else if (thirdTemp > 3200) {
            basicColor = this.basicColorFactory.BLUE;
        } else if (thirdTemp > 2700) {
            basicColor = this.basicColorFactory.PUCE;
        } else if (thirdTemp > 2200) {
            basicColor = this.basicColorFactory.WHITE;
        } else if (thirdTemp > 1700) {
            basicColor = this.basicColorFactory.GREEN;
        } else if (thirdTemp > 1200) {
            basicColor = this.basicColorFactory.YELLOW;
        } else if (thirdTemp > 700) {
            basicColor = this.basicColorFactory.ORANGE;
        }
        return basicColor;
    }
    }
}

