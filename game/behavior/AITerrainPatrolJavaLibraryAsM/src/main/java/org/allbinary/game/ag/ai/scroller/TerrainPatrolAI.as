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
package org.allbinary.game.ag.ai.scroller {
    import org.allbinary.game.input.GameInput;
    import org.allbinary.game.terrain.BasicTerrainInfo;
    import org.allbinary.game.terrain.TerrainEvent;
    import org.allbinary.game.terrain.TerrainEventCircularStaticPool;
    import org.allbinary.game.terrain.TerrainEventHandler;
    import org.allbinary.game.terrain.TerrainEventListener;
    import org.allbinary.layer.AllBinaryLayer;
    import org.allbinary.math.Angle;
    import org.allbinary.math.AngleFactory;
    import org.allbinary.util.ABHashtable;
    import org.allbinary.util.BasicArrayList;

    public class TerrainPatrolAI extends PacePatrolAI {
        private var terrainEventListener:TerrainEventListener = null;
        private var DOWN:Angle = null;
        private var CLIFF:BasicTerrainInfo = null;

        // Java field initializers run after the base constructor
        private function initFieldsTerrainPatrolAI():void {
    this.terrainEventListener = new TerrainEventListener();
    this.DOWN = AngleFactory.getInstance().DOWN;
    this.CLIFF = new BasicTerrainInfo(this.DOWN);
        }
    

    public function TerrainPatrolAI(hashtable:ABHashtable, ownerLayerInterface:AllBinaryLayer, gameInput:GameInput) {
        super(hashtable, ownerLayerInterface, gameInput);
        this.initFieldsTerrainPatrolAI();
        TerrainEventHandler.getInstance1(ownerLayerInterface).addListener(this.terrainEventListener);
        this.terrainEventListener.onTerrainEvent(TerrainEventCircularStaticPool.getInstance().getNext(this.CLIFF));
    }
    

    override public function update():void {
        super.update();
        this.changeDirectionIfCliffReached();
    }
    

    private function changeDirectionIfCliffReached():void {
        var list:BasicArrayList = this.terrainEventListener.getList();
        var size:int = list.size();
        for (var index:int = 0; index < size; index++) {
            var terrainEvent:TerrainEvent = (list.removeAt(index) as TerrainEvent);
            var basicTerrainInfo:BasicTerrainInfo = terrainEvent.getBasicTerrainInfo();
            var angle:Angle = basicTerrainInfo.getAngle();
            if (angle === this.DOWN) {
                this.nextDirection();
                if (!this.isFollowLimitedByTerrain) {
                    this.logUtil.putF("Following Limited", this, "onTerrainEvent");
                    this.isFollowLimitedByTerrain = true;
                }
            }
        }
    }
    }
}

