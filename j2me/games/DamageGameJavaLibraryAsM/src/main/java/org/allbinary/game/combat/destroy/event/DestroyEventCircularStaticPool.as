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
package org.allbinary.game.combat.destroy.event {
    import org.allbinary.game.displayable.canvas.AllBinaryGameCanvas;
    import org.allbinary.layer.AllBinaryLayer;
    import org.allbinary.logic.util.event.AllBinaryEventCircularPool;

    public class DestroyEventCircularStaticPool {
    private static var instance_value:DestroyEventCircularStaticPool;
    private static var instance_set:Boolean = false;
    private static function get instance():DestroyEventCircularStaticPool {
        if (!DestroyEventCircularStaticPool.instance_set) {
            DestroyEventCircularStaticPool.instance_set = true;
            DestroyEventCircularStaticPool.instance_value = new DestroyEventCircularStaticPool();
        }
        return DestroyEventCircularStaticPool.instance_value;
    }
        private var EVENT_POOL:AllBinaryEventCircularPool = null;

        // Java field initializers run after the base constructor
        private function initFieldsDestroyEventCircularStaticPool():void {
    this.EVENT_POOL = new AllBinaryEventCircularPool(20);
        }
    

    public static function getInstance():DestroyEventCircularStaticPool {
        return DestroyEventCircularStaticPool.instance;
    }
    

    public function DestroyEventCircularStaticPool() {
        super();
        this.initFieldsDestroyEventCircularStaticPool();
    }
    

    public function init(combatGameCanvas:AllBinaryGameCanvas):void {
        this.EVENT_POOL.initAllBinaryEventCircularPool(new DestroyEventFactory(combatGameCanvas));
    }
    

    public function getInstanceForLayer(layerInterface:AllBinaryLayer):DestroyedEvent {
        var destroyedEvent:DestroyedEvent = (this.EVENT_POOL.getNextInstance() as DestroyedEvent);
        destroyedEvent.setLayerInterfaceForCircularStaticPool(layerInterface);
        return destroyedEvent;
    }
    }
}

