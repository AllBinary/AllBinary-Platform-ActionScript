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
package org.allbinary.input.motion.gesture.observer {
    import org.allbinary.graphics.GPoint;
    import org.allbinary.graphics.PointFactory;
    import org.allbinary.input.motion.gesture.MotionGestureInput;
    import org.allbinary.input.motion.gesture.TouchMotionGestureFactory;
    import org.allbinary.TsUtil;
    import org.allbinary.logic.string.StringMaker;
    import org.allbinary.logic.string.StringUtil;
    import org.allbinary.logic.util.event.AllBinaryEventObject;
    import org.allbinary.string.CommonLabels;

    public class MotionGestureEvent extends AllBinaryEventObject {
    private static const PREVIOUS:String = " Previous: ";
    private static const HASHCODE:String = " hashcode: ";
        private var motionGesture:MotionGestureInput = null;
        private var id:int = 0;
        private var previousPoint:GPoint = null;
        private var currentPoint:GPoint = null;
        private var commonLabels:CommonLabels = null;

        // Java field initializers run after the base constructor
        private function initFieldsMotionGestureEvent():void {
    this.motionGesture = TouchMotionGestureFactory.getInstance().NO_MOTION;
    
    this.previousPoint = PointFactory.getInstance().ZERO_ZERO;
    this.currentPoint = PointFactory.getInstance().ZERO_ZERO;
    this.commonLabels = CommonLabels.getInstance();
        }
    

    public function MotionGestureEvent(source:Object, id:int, motionGesture:MotionGestureInput) {
        super(source);
        this.initFieldsMotionGestureEvent();
        this.id = id;
        this.setMotionGesture(motionGesture);
    }
    

    public function getMotionGesture():MotionGestureInput {
        return this.motionGesture;
    }
    

    public function setMotionGesture(motionGesture:MotionGestureInput):void {
        this.motionGesture = motionGesture;
    }
    

    public function getPreviousPoint():GPoint {
        return this.previousPoint;
    }
    

    public function setPreviousPoint(previousPoint:GPoint):void {
        this.previousPoint = previousPoint;
    }
    

    public function getCurrentPoint():GPoint {
        return this.currentPoint;
    }
    

    public function setCurrentPoint(currentPoint:GPoint):void {
        this.currentPoint = currentPoint;
    }
    

    public function toString():String {
        var stringBuffer:StringMaker = new StringMaker();
        var stringUtil:StringUtil = StringUtil.getInstance();
        stringBuffer.append(stringUtil.toString1(this.motionGesture));
        stringBuffer.append(this.commonLabels.CURRENT);
        stringBuffer.append(stringUtil.toString1(this.currentPoint));
        stringBuffer.append(MotionGestureEvent.PREVIOUS);
        stringBuffer.append(stringUtil.toString1(this.previousPoint));
        stringBuffer.append(MotionGestureEvent.HASHCODE);
        stringBuffer.appendint(TsUtil.getInstance().hashCode(this));
        return stringBuffer.toString();
    }
    

    public function getId():int {
        return this.id;
    }
    }
}

