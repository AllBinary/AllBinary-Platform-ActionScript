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
    import org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer;
    import org.allbinary.logic.util.event.AllBinaryEventObject;
    import org.allbinary.logic.util.event.EventListenerInterface;
    import org.allbinary.logic.util.event.EventStrings;
    import org.allbinary.logic.util.event.handler.BasicEventHandler;
    import org.allbinary.util.BasicArrayList;
    import org.allbinary.util.BasicArrayListD;

    public class DestroyedEventHandler extends BasicEventHandler {
    private static var instance_value:DestroyedEventHandler;
    private static var instance_set:Boolean = false;
    private static function get instance():DestroyedEventHandler {
        if (!DestroyedEventHandler.instance_set) {
            DestroyedEventHandler.instance_set = true;
            DestroyedEventHandler.instance_value = new DestroyedEventHandler();
        }
        return DestroyedEventHandler.instance_value;
    }
        private var list:BasicArrayList = null;

        // Java field initializers run after the base constructor
        private function initFieldsDestroyedEventHandler():void {
    this.list = new BasicArrayListD();
        }
    

    public static function getInstance():DestroyedEventHandler {
        return DestroyedEventHandler.instance;
    }
    

    public function DestroyedEventHandler() {
        super();
        this.initFieldsDestroyedEventHandler();
    }
    

    public function addListener(collidableDestroyableDamageableLayer:CollidableDestroyableDamageableLayer):void {
        if (!this.list.contains(collidableDestroyableDamageableLayer)) {
            this.list.add(collidableDestroyableDamageableLayer);
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
                var collidableDestroyableDamageableLayer:CollidableDestroyableDamageableLayer = (this.list.objectArray[index] as CollidableDestroyableDamageableLayer);
                collidableDestroyableDamageableLayer.onDestroyed((eventObject as DestroyedEvent));
            } catch (e:*) {
                this.logUtil.put(this.commonStrings.EXCEPTION, this, EventStrings.getInstance().FIRE_EVENT, e);
            }
        }
        super.fireEvent(eventObject);
    }
    

    override public function process(eventObject:AllBinaryEventObject, eventListenerInterface:EventListenerInterface):void {
        var destroyedEventListenerInterface:DestroyedEventListenerInterface = (eventListenerInterface as DestroyedEventListenerInterface);
        destroyedEventListenerInterface.onDestroyed((eventObject as DestroyedEvent));
    }
    }
}

