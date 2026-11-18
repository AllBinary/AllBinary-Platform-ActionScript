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
package org.allbinary.game.displayable.canvas {
    import org.allbinary.game.input.event.GameKeyEvent;
    import org.allbinary.input.motion.gesture.observer.MotionGestureEvent;
    import org.allbinary.util.BasicArrayListUtil;

    public class NoMenuInputProcessor extends BasicMenuInputProcessor {
    private static var SINGLETON_value:NoMenuInputProcessor;
    private static var SINGLETON_set:Boolean = false;
    private static function get SINGLETON():NoMenuInputProcessor {
        if (!NoMenuInputProcessor.SINGLETON_set) {
            NoMenuInputProcessor.SINGLETON_set = true;
            NoMenuInputProcessor.SINGLETON_value = new NoMenuInputProcessor();
        }
        return NoMenuInputProcessor.SINGLETON_value;
    }
    

    public static function getInstance():NoMenuInputProcessor {
        return NoMenuInputProcessor.SINGLETON;
    }
    

    public function NoMenuInputProcessor() {
        super(BasicArrayListUtil.getInstance().getImmutableInstance(), -1, NullCanvas.NULL_CANVAS);
    }
    

    override public function onDownGameKeyEvent(gameKeyEvent:GameKeyEvent):void {
    }
    

    override public function onUpGameKeyEvent(gameKeyEvent:GameKeyEvent):void {
    }
    

    override public function onMotionGestureEvent(motionGestureEvent:MotionGestureEvent):void {
    }
    }
}

