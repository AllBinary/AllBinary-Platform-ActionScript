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
package org.allbinary.game.input {
    import org.allbinary.logic.util.event.AllBinaryEventObject;
    import org.allbinary.logic.util.event.EventListenerInterface;
    import org.allbinary.logic.util.event.EventStrings;
    import org.allbinary.logic.util.event.handler.BasicEventHandler;
    import org.allbinary.util.BasicArrayList;
    import org.allbinary.util.BasicArrayListD;

    public class CompleteMotionGestureInputEventHandler extends BasicEventHandler {
    private static var SINGLETON_value:CompleteMotionGestureInputEventHandler;
    private static var SINGLETON_set:Boolean = false;
    private static function get SINGLETON():CompleteMotionGestureInputEventHandler {
        if (!CompleteMotionGestureInputEventHandler.SINGLETON_set) {
            CompleteMotionGestureInputEventHandler.SINGLETON_set = true;
            CompleteMotionGestureInputEventHandler.SINGLETON_value = new CompleteMotionGestureInputEventHandler();
        }
        return CompleteMotionGestureInputEventHandler.SINGLETON_value;
    }
        private var list:BasicArrayList = null;

        // Java field initializers run after the base constructor
        private function initFieldsCompleteMotionGestureInputEventHandler():void {
    this.list = new BasicArrayListD();
        }
    

    public static function getInstance():CompleteMotionGestureInputEventHandler {
        return CompleteMotionGestureInputEventHandler.SINGLETON;
    }
    

    public function CompleteMotionGestureInputEventHandler() {
        super();
        this.initFieldsCompleteMotionGestureInputEventHandler();
    }
    

    public function addListener(completeMotionGestureInputEventListener:CompleteMotionGestureInputEventListener):void {
        if (!this.list.contains(completeMotionGestureInputEventListener)) {
            this.list.add(completeMotionGestureInputEventListener);
        }
    }
    

    override public function removeAllListeners():void {
        this.list.clear();
        super.removeAllListeners();
    }
    

    override public function removeListener(eventListenerInterface:EventListenerInterface):void {
        this.list.remove(eventListenerInterface);
        super.removeListener(eventListenerInterface);
    }
    

    override public function fireEvent(eventObject:AllBinaryEventObject):void {
        for (var index:int = this.list.size(); --index >= 0; ) {
            try {
                var completeMotionGestureInputEventListener:CompleteMotionGestureInputEventListener = (this.list.objectArray[index] as CompleteMotionGestureInputEventListener);
                completeMotionGestureInputEventListener.onCompleteMotionGestureInputEvent((eventObject as CompleteMotionGestureInputEvent));
            } catch (e:*) {
                this.logUtil.put(this.commonStrings.EXCEPTION, this, EventStrings.getInstance().FIRE_EVENT, e);
            }
        }
        super.fireEvent(eventObject);
    }
    

    override public function process(eventObject:AllBinaryEventObject, eventListenerInterface:EventListenerInterface):void {
        var completeMotionGestureInputEventListenerInterface:CompleteMotionGestureInputEventListenerInterface = (eventListenerInterface as CompleteMotionGestureInputEventListenerInterface);
        completeMotionGestureInputEventListenerInterface.onCompleteMotionGestureInputEvent((eventObject as CompleteMotionGestureInputEvent));
    }
    }
}

