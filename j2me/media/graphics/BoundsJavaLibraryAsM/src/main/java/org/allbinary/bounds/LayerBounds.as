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
package org.allbinary.bounds {
    import org.allbinary.bounds.event.BoundsChangeEvent;
    import org.allbinary.bounds.event.BoundsChangeEventListener;
    import org.allbinary.graphics.Rectangle;
    import org.allbinary.logic.communication.log.ForcedLogUtil;
    import org.allbinary.logic.communication.log.LogUtil;
    import org.allbinary.logic.util.event.AllBinaryEventObject;
    import org.allbinary.logic.util.event.EventStrings;

    public class LayerBounds implements BoundsChangeEventListener {
        public var logUtil:LogUtil = null;
        public var rectangle:Rectangle = null;

        // Java field initializers run after the base constructor
        private function initFieldsLayerBounds():void {
    this.logUtil = LogUtil.getInstance();
    
        }
    

    public function LayerBounds(rectangle:Rectangle) {
        super();
        this.initFieldsLayerBounds();
        this.rectangle = rectangle;
    }
    

    public function getRectangleP():Rectangle {
        return this.rectangle;
    }
    

    public function visit(boundsVisitorInterface:BoundsVisitorInterface):void {
    }
    

    public function onEvent(eventObject:AllBinaryEventObject):void {
        ForcedLogUtil.log(EventStrings.getInstance().PERFORMANCE_MESSAGE, this);
    }
    

    public function onBoundsChangeEvent(boundsChangeEvent:BoundsChangeEvent):void {
        this.rectangle = boundsChangeEvent.getRectangle();
    }
    }
}

