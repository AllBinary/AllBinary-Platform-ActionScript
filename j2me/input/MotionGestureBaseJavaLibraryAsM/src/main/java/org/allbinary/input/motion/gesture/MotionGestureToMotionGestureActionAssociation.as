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
package org.allbinary.input.motion.gesture {
    import org.allbinary.game.input.CompleteMotionGestureInputEvent;
    import org.allbinary.util.BasicArrayList;

    public class MotionGestureToMotionGestureActionAssociation {
        private var list:BasicArrayList = null;
        private var motionGestureAction:CompleteMotionGestureInputEvent = null;

        // Java field initializers run after the base constructor
        private function initFieldsMotionGestureToMotionGestureActionAssociation():void {
    
    
        }
    

    public function MotionGestureToMotionGestureActionAssociation(list:BasicArrayList, commandAction:CompleteMotionGestureInputEvent) {
        super();
        this.initFieldsMotionGestureToMotionGestureActionAssociation();
        this.list = list;
        this.motionGestureAction = commandAction;
    }
    

    public function getMotionGesture():BasicArrayList {
        return this.list;
    }
    

    public function setMotionGestures(list:BasicArrayList):void {
        this.list = list;
    }
    

    public function getCommandAction():CompleteMotionGestureInputEvent {
        return this.motionGestureAction;
    }
    

    public function setMotionGestureAction(commandAction:CompleteMotionGestureInputEvent):void {
        this.motionGestureAction = commandAction;
    }
    

    public function isMotionGestureArrayEquals(aList:BasicArrayList):Boolean {
        var size:int = aList.size();
        if (this.list.size() != size) {
            return false;
        }
        for (var i:int = int(size - 1); i >= 0; i--) {
            if (aList.objectArray[i] != this.list.objectArray[i]) {
                return false;
            }
        }
        return true;
    }
    }
}

