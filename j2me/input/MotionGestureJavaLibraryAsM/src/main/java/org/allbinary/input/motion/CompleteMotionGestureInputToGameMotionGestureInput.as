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
package org.allbinary.input.motion {
    import org.allbinary.input.motion.gesture.TouchMotionGestureFactory;
    import org.allbinary.input.motion.gesture.configuration.MotionGestureConfiguration;
    import org.allbinary.input.motion.gesture.configuration.MotionGestureConfigurationFactory;
    import org.allbinary.input.motion.touch.action.DiagonalDownLeftTouchInputToGameKeyEventAction;
    import org.allbinary.input.motion.touch.action.DiagonalDownRightTouchInputToGameKeyEventAction;
    import org.allbinary.input.motion.touch.action.DiagonalUpLeftTouchInputToGameKeyEventAction;
    import org.allbinary.input.motion.touch.action.DiagonalUpRightTouchInputToGameKeyEventAction;
    import org.allbinary.input.motion.touch.action.DownTouchInputToGameKeyEventAction;
    import org.allbinary.input.motion.touch.action.LeftTouchInputToGameKeyEventAction;
    import org.allbinary.input.motion.touch.action.ReleaseTouchInputToGameKeyEventAction;
    import org.allbinary.input.motion.touch.action.RightTouchInputToGameKeyEventAction;
    import org.allbinary.input.motion.touch.action.UpTouchInputToGameKeyEventAction;
    import org.allbinary.logic.communication.log.LogUtil;
    import org.allbinary.logic.communication.log.PreLogUtil;
    import org.allbinary.string.CommonStrings;
    import org.allbinary.util.BasicArrayList;
    import org.allbinary.util.BasicArrayListD;

    public class CompleteMotionGestureInputToGameMotionGestureInput {
    private static var instance_value:CompleteMotionGestureInputToGameMotionGestureInput;
    private static var instance_set:Boolean = false;
    private static function get instance():CompleteMotionGestureInputToGameMotionGestureInput {
        if (!CompleteMotionGestureInputToGameMotionGestureInput.instance_set) {
            CompleteMotionGestureInputToGameMotionGestureInput.instance_set = true;
            CompleteMotionGestureInputToGameMotionGestureInput.instance_value = new CompleteMotionGestureInputToGameMotionGestureInput();
        }
        return CompleteMotionGestureInputToGameMotionGestureInput.instance_value;
    }
        public var logUtil:LogUtil = null;

        // Java field initializers run after the base constructor
        private function initFieldsCompleteMotionGestureInputToGameMotionGestureInput():void {
    this.logUtil = LogUtil.getInstance();
        }

        public function CompleteMotionGestureInputToGameMotionGestureInput() {
            super();
            this.initFieldsCompleteMotionGestureInputToGameMotionGestureInput();
        }
    

    public static function getInstance():CompleteMotionGestureInputToGameMotionGestureInput {
        return CompleteMotionGestureInputToGameMotionGestureInput.instance;
    }
    

    public function init():void {
        var commonStrings:CommonStrings = CommonStrings.getInstance();
        try {
            PreLogUtil.put("Compound Motion Gestures", this, commonStrings.INIT);
            var motionGestureConfiguration:MotionGestureConfiguration = MotionGestureConfigurationFactory.getInstance();
            var touchMotionGestureFactory:TouchMotionGestureFactory = TouchMotionGestureFactory.getInstance();
            var list:BasicArrayList = new BasicArrayListD();
            list.add(touchMotionGestureFactory.DIAGONAL_DOWN_LEFT);
            motionGestureConfiguration.addMotionGestureAction(list, DiagonalDownLeftTouchInputToGameKeyEventAction.getInstance());
            list = new BasicArrayListD();
            list.add(touchMotionGestureFactory.DIAGONAL_DOWN_RIGHT);
            motionGestureConfiguration.addMotionGestureAction(list, DiagonalDownRightTouchInputToGameKeyEventAction.getInstance());
            list = new BasicArrayListD();
            list.add(touchMotionGestureFactory.DIAGONAL_UP_LEFT);
            motionGestureConfiguration.addMotionGestureAction(list, DiagonalUpLeftTouchInputToGameKeyEventAction.getInstance());
            list = new BasicArrayListD();
            list.add(touchMotionGestureFactory.DIAGONAL_UP_RIGHT);
            motionGestureConfiguration.addMotionGestureAction(list, DiagonalUpRightTouchInputToGameKeyEventAction.getInstance());
            list = new BasicArrayListD();
            list.add(touchMotionGestureFactory.LEFT);
            motionGestureConfiguration.addMotionGestureAction(list, LeftTouchInputToGameKeyEventAction.getInstance());
            list = new BasicArrayListD();
            list.add(touchMotionGestureFactory.RIGHT);
            motionGestureConfiguration.addMotionGestureAction(list, RightTouchInputToGameKeyEventAction.getInstance());
            list = new BasicArrayListD();
            list.add(touchMotionGestureFactory.DOWN);
            motionGestureConfiguration.addMotionGestureAction(list, DownTouchInputToGameKeyEventAction.getInstance());
            list = new BasicArrayListD();
            list.add(touchMotionGestureFactory.UP);
            motionGestureConfiguration.addMotionGestureAction(list, UpTouchInputToGameKeyEventAction.getInstance());
            list = new BasicArrayListD();
            list.add(touchMotionGestureFactory.RELEASED);
            motionGestureConfiguration.addMotionGestureAction(list, ReleaseTouchInputToGameKeyEventAction.getInstance());
        } catch (e:*) {
            this.logUtil.put(commonStrings.EXCEPTION, this, commonStrings.INIT, e);
        }
    }
    }
}

