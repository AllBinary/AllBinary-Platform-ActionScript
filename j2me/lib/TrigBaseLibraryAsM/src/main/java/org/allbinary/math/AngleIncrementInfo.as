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
    import org.allbinary.logic.math.SmallIntegerSingletonFactory;
    import org.allbinary.logic.string.StringMaker;
    import java.lang.JInteger;

    public class AngleIncrementInfo {
    private static const INCREMENT:String = "Inc: ";
        private var angleIncrement:int = 0;
        public var DOWN_FRAME:* = null;
        public var UP_FRAME:* = null;
        public var LEFT_FRAME:* = null;
        public var RIGHT_FRAME:* = null;
        private var frameUtil:FrameUtil = null;

        // Java field initializers run after the base constructor
        private function initFieldsAngleIncrementInfo():void {
    
    
    
    
    
    this.frameUtil = FrameUtil.getInstance();
        }
    

    public function AngleIncrementInfo(angleIncrement:int) {
        super();
        this.initFieldsAngleIncrementInfo();
        this.angleIncrement = angleIncrement;
        var angleFactory:AngleFactory = AngleFactory.getInstance();
        var smallIntegerSingletonFactory:SmallIntegerSingletonFactory = SmallIntegerSingletonFactory.getInstance();
        this.DOWN_FRAME = smallIntegerSingletonFactory.getAt(int(angleFactory.DOWN.getValue() / this.angleIncrement));
        this.UP_FRAME = smallIntegerSingletonFactory.getAt(angleFactory.UP.getValue());
        this.LEFT_FRAME = smallIntegerSingletonFactory.getAt(int(angleFactory.LEFT.getValue() / this.angleIncrement));
        this.RIGHT_FRAME = smallIntegerSingletonFactory.getAt(int(angleFactory.RIGHT.getValue() / this.angleIncrement));
    }
    

    public function getFrameAngle(frame:int):int {
        return this.frameUtil.getFrameAngle(frame, this.angleIncrement);
    }
    

    public function getAngleIncrement():int {
        return this.angleIncrement;
    }
    

    public function toString():String {
        return new StringMaker().append(AngleIncrementInfo.INCREMENT).appendshort(this.angleIncrement).toString();
    }
    

    public function getClosestGeneralDirection(angle:int):int {
        var closestDirection:* = SmallIntegerSingletonFactory.getInstance().getAt(360);
        if (this.UP_FRAME.intValue() - angle < closestDirection.intValue() - angle) {
            closestDirection = this.UP_FRAME;
        }
        if (this.DOWN_FRAME.intValue() - angle < closestDirection.intValue() - angle) {
            closestDirection = this.DOWN_FRAME;
        }
        if (this.LEFT_FRAME.intValue() - angle < closestDirection.intValue() - angle) {
            closestDirection = this.LEFT_FRAME;
        }
        if (this.RIGHT_FRAME.intValue() - angle < closestDirection.intValue() - angle) {
            closestDirection = this.RIGHT_FRAME;
        }
        return closestDirection.intValue();
    }
    }
}

