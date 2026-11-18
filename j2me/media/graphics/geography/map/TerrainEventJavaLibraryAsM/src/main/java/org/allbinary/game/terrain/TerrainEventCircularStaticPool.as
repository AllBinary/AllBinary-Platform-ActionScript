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
package org.allbinary.game.terrain {
    import org.allbinary.logic.util.event.AllBinaryEventCircularPool;

    public class TerrainEventCircularStaticPool {
    private static var instance_value:TerrainEventCircularStaticPool;
    private static var instance_set:Boolean = false;
    private static function get instance():TerrainEventCircularStaticPool {
        if (!TerrainEventCircularStaticPool.instance_set) {
            TerrainEventCircularStaticPool.instance_set = true;
            TerrainEventCircularStaticPool.instance_value = new TerrainEventCircularStaticPool();
        }
        return TerrainEventCircularStaticPool.instance_value;
    }
        private var EVENT_POOL:AllBinaryEventCircularPool = null;

        // Java field initializers run after the base constructor
        private function initFieldsTerrainEventCircularStaticPool():void {
    this.EVENT_POOL = new AllBinaryEventCircularPool(20);
        }

        public function TerrainEventCircularStaticPool() {
            super();
            this.initFieldsTerrainEventCircularStaticPool();
        }
    

    public static function getInstance():TerrainEventCircularStaticPool {
        return TerrainEventCircularStaticPool.instance;
    }
    

    public function init():void {
        this.EVENT_POOL.initAllBinaryEventCircularPool(new TerrainEventFactory());
    }
    

    public function getNext(basicTerrainInfo:BasicTerrainInfo):TerrainEvent {
        var trackingEvent:TerrainEvent = (this.EVENT_POOL.getNextInstance() as TerrainEvent);
        trackingEvent.setBasicTerrainInfoForCircularStaticPool(basicTerrainInfo);
        return trackingEvent;
    }
    }
}

