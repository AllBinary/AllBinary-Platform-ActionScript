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
    import org.allbinary.game.input.Input;
    import org.allbinary.game.input.InputFactory;
    import org.allbinary.input.motion.gesture.MotionGestureInput;
    import org.allbinary.input.motion.gesture.TouchMotionGestureFactory;
    import org.allbinary.logic.util.event.AllBinaryEventObject;
    import org.allbinary.logic.util.event.AllBinaryEventObjectFactoryInterface;

    public class MotionEventFactory implements AllBinaryEventObjectFactoryInterface {
    private static var index:int = 0;
        private var source:Object = null;
        private var id:int = 0;

        // Java field initializers run after the base constructor
        private function initFieldsMotionEventFactory():void {
    
    
        }
    

    public function MotionEventFactory(source:Object, id:int) {
        super();
        this.initFieldsMotionEventFactory();
        this.source = source;
        this.id = id;
        MotionEventFactory.index = TouchMotionGestureFactory.getInstance().LAST_MOTION.getId();
    }
    

    public function getInstance():AllBinaryEventObject {
        var inputFactory:InputFactory = InputFactory.getInstance();
        var input:Input = inputFactory.getInstanceById(MotionEventFactory.index++);
        if (input == inputFactory.NO_INPUT) {
            return new MotionGestureEvent(this.source, this.id, (TouchMotionGestureFactory.getInstance().NO_MOTION as MotionGestureInput));
        } else {
            return new MotionGestureEvent(this.source, this.id, (input as MotionGestureInput));
        }
    }
    }
}

