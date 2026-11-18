// Generated Code Do Not Modify
package org.allbinary.game.terrain {
    import org.allbinary.logic.communication.log.ForcedLogUtil;
    import org.allbinary.logic.util.event.AllBinaryEventObject;
    import org.allbinary.logic.util.event.EventStrings;
    import org.allbinary.util.BasicArrayList;
    import org.allbinary.util.BasicArrayListD;

    public class TerrainEventListener implements TerrainEventListenerInterface {
        private var list:BasicArrayList = null;

        // Java field initializers run after the base constructor
        private function initFieldsTerrainEventListener():void {
    this.list = new BasicArrayListD();
        }

        public function TerrainEventListener() {
            super();
            this.initFieldsTerrainEventListener();
        }
    

    public function onEvent(eventObject:AllBinaryEventObject):void {
        ForcedLogUtil.log(EventStrings.getInstance().PERFORMANCE_MESSAGE, this);
    }
    

    public function onTerrainEvent(terrainEvent:TerrainEvent):void {
        this.list.clear();
        this.list.add(terrainEvent);
    }
    

    public function getList():BasicArrayList {
        return this.list;
    }
    }
}

