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
package org.allbinary.media {
    import org.allbinary.logic.string.StringMaker;
    import org.allbinary.string.CommonLabels;

    public class ScaleProperties {
    private static var instance_value:ScaleProperties;
    private static var instance_set:Boolean = false;
    public static function get instance():ScaleProperties {
        if (!ScaleProperties.instance_set) {
            ScaleProperties.instance_set = true;
            ScaleProperties.instance_value = new ScaleProperties();
        }
        return ScaleProperties.instance_value;
    }
        public var scaleX:Number = 0.0;
        public var scaleY:Number = 0.0;
        public var scaleWidth:int = 0;
        public var scaleHeight:int = 0;
        public var shouldScale:Boolean = false;

        // Java field initializers run after the base constructor
        private function initFieldsScaleProperties():void {
    this.scaleX = 0.0;
    this.scaleY = 0.0;
    this.scaleWidth = 0;
    this.scaleHeight = 0;
    this.shouldScale = false;
        }

        public function ScaleProperties() {
            super();
            this.initFieldsScaleProperties();
        }
    

    public function toString():String {
        return new StringMaker().append(CommonLabels.getInstance().COLON_SEP).appendboolean(this.shouldScale).append("scaleX: ").appendfloat(this.scaleX).append("scaleY: ").appendfloat(this.scaleY).append("scaleWidth: ").appendint(this.scaleWidth).append("scaleHeight: ").appendint(this.scaleHeight).toString();
    }
    }
}

