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
package org.allbinary.game.tracking {
    import org.allbinary.layer.AllBinaryLayer;
    import org.allbinary.logic.util.event.AllBinaryEventCircularPool;

    public class TrackingEventCircularStaticPool {
    private static var instance_value:TrackingEventCircularStaticPool;
    private static var instance_set:Boolean = false;
    private static function get instance():TrackingEventCircularStaticPool {
        if (!TrackingEventCircularStaticPool.instance_set) {
            TrackingEventCircularStaticPool.instance_set = true;
            TrackingEventCircularStaticPool.instance_value = new TrackingEventCircularStaticPool();
        }
        return TrackingEventCircularStaticPool.instance_value;
    }
    private static function set instance(value:TrackingEventCircularStaticPool):void {
        TrackingEventCircularStaticPool.instance_set = true;
        TrackingEventCircularStaticPool.instance_value = value;
    }
        private var EVENT_POOL:AllBinaryEventCircularPool = null;

        // Java field initializers run after the base constructor
        private function initFieldsTrackingEventCircularStaticPool():void {
    this.EVENT_POOL = new AllBinaryEventCircularPool(20);
        }

        public function TrackingEventCircularStaticPool() {
            super();
            this.initFieldsTrackingEventCircularStaticPool();
        }
    

    public static function getInstance():TrackingEventCircularStaticPool {
        return TrackingEventCircularStaticPool.instance;
    }
    

    public function init():void {
        this.EVENT_POOL.initAllBinaryEventCircularPool(new TrackingEventFactory());
    }
    

    public function getNextInstance(layerInterface:AllBinaryLayer):TrackingEvent {
        var trackingEvent:TrackingEvent = (this.EVENT_POOL.getNextInstance() as TrackingEvent);
        trackingEvent.setLayerInterfaceForCircularStaticPool(layerInterface);
        return trackingEvent;
    }
    }
}

