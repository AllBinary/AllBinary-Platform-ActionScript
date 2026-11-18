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
    import org.allbinary.game.input.InputFactory;
    import org.allbinary.input.motion.gesture.MotionGestureInput;
    import org.allbinary.input.motion.gesture.TouchMotionGestureFactory;
    import org.allbinary.logic.util.event.AllBinaryEventCircularPool;

    public class MotionEventCircularPool {
        private var MIN:int = 0;
        private var eventPool:AllBinaryEventCircularPool = null;

        // Java field initializers run after the base constructor
        private function initFieldsMotionEventCircularPool():void {
    this.MIN = TouchMotionGestureFactory.getInstance().LAST_MOTION.getId();
    this.eventPool = new AllBinaryEventCircularPool(int((int(InputFactory.getInstance().MAX - 1)) - this.MIN));
        }
    

    public static function createPool(id:int):MotionEventCircularPool {
        return new MotionEventCircularPool(id);
    }
    

    public function MotionEventCircularPool(id:int) {
        super();
        this.initFieldsMotionEventCircularPool();
        this.eventPool.initAllBinaryEventCircularPool(new MotionEventFactory(this.eventPool, id));
    }
    

    public function getInstance1(motionGestureInput:MotionGestureInput):MotionGestureEvent {
        return (this.eventPool.getInstance1(int(motionGestureInput.getId() - this.MIN)) as MotionGestureEvent);
    }
    }
}

