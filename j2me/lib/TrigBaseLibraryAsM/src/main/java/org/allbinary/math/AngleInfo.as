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
    import org.allbinary.logic.string.StringMaker;
    import org.allbinary.logic.string.StringUtil;
    import org.allbinary.string.CommonSeps;

    public class AngleInfo {
    private static const ANGLE:String = "Angle: ";
        private var angleIncrementInfo:AngleIncrementInfo = null;
        private var angle:int = 0;
        private var frameUtil:FrameUtil = null;

        // Java field initializers run after the base constructor
        private function initFieldsAngleInfo():void {
    
    this.angle = 0;
    this.frameUtil = FrameUtil.getInstance();
        }
    

    public static function getInstance1(angleIncrement:int):AngleInfo {
        return new AngleInfo(AngleIncrementInfoFactory.getInstance().getAt(angleIncrement));
    }
    

    public function AngleInfo(angleIncrementInfo:AngleIncrementInfo) {
        super();
        this.initFieldsAngleInfo();
        this.angleIncrementInfo = angleIncrementInfo;
    }
    

    public function adjustAngle(frame:int):void {
        var newAngle:int = int(int(this.angleIncrementInfo.getAngleIncrement() * frame) - 90);
        this.setAngle(((int(this.frameUtil.adjustAngleToFrameAngle(newAngle)) << 16) >> 16));
    }
    

    public function getAngle():int {
        return this.angle;
    }
    

    public function setAngle(angle:int):void {
        this.angle = angle;
    }
    

    public function getAngleIncrementInfo():AngleIncrementInfo {
        return this.angleIncrementInfo;
    }
    

    public function toString():String {
        var stringBuffer:StringMaker = new StringMaker();
        stringBuffer.append(AngleInfo.ANGLE);
        stringBuffer.appendshort(this.angle);
        stringBuffer.append(CommonSeps.getInstance().SPACE);
        stringBuffer.append(StringUtil.getInstance().toString1(this.getAngleIncrementInfo()));
        return stringBuffer.toString();
    }
    }
}

