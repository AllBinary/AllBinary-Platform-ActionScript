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
package org.allbinary.math {

    public class FrameUtil {
    private static var instance_value:FrameUtil;
    private static var instance_set:Boolean = false;
    private static function get instance():FrameUtil {
        if (!FrameUtil.instance_set) {
            FrameUtil.instance_set = true;
            FrameUtil.instance_value = new FrameUtil();
        }
        return FrameUtil.instance_value;
    }
    

    public static function getInstance():FrameUtil {
        return FrameUtil.instance;
    }
    

    public function FrameUtil() {
        super();
    }
    

    public function getFrameForAngle(angle:int, angleIncrement:int):int {
        return int(this.adjustAngleToFrameAngle(angle) / angleIncrement);
    }
    

    public function getFrameAngle(frame:int, angleIncrement:int):int {
        var frameAngle:int = int(int(angleIncrement * frame) - 90);
        return this.adjustAngleToFrameAngle(frameAngle);
    }
    

    public function adjustAngleToFrameAngle(currentAngle:int):int {
        var angleFactory:AngleFactory = AngleFactory.getInstance();
        if (currentAngle > 359) {
            currentAngle = (int(currentAngle - angleFactory.TOTAL_ANGLE));
            while (currentAngle > 359) {
                currentAngle = (int(currentAngle - angleFactory.TOTAL_ANGLE));
            }
        }
        if (currentAngle < 0) {
            currentAngle = (int(currentAngle + angleFactory.TOTAL_ANGLE));
            while (currentAngle < 0) {
                currentAngle = (int(currentAngle + angleFactory.TOTAL_ANGLE));
            }
        }
        return currentAngle;
    }
    }
}

