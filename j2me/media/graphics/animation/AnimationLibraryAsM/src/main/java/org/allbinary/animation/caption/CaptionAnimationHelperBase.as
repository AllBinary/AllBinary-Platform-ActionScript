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
package org.allbinary.animation.caption {
    import org.allbinary.animation.Animation;
    import org.allbinary.graphics.color.BasicColor;

    public class CaptionAnimationHelperBase extends Animation {
    private static var INSTANCE_value:CaptionAnimationHelperBase;
    private static var INSTANCE_set:Boolean = false;
    public static function get INSTANCE():CaptionAnimationHelperBase {
        if (!CaptionAnimationHelperBase.INSTANCE_set) {
            CaptionAnimationHelperBase.INSTANCE_set = true;
            CaptionAnimationHelperBase.INSTANCE_value = new CaptionAnimationHelperBase();
        }
        return CaptionAnimationHelperBase.INSTANCE_value;
    }
    

    public function isShowing():Boolean {
        return false;
    }
    

    public function tick():void {
    }
    

    public function update(message:String, basicColor:BasicColor):void {
    }
    

    override public function paintXY(graphics:Graphics, x:int, y:int):void {
    }
    }
}

