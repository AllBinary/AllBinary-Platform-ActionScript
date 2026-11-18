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
    import org.allbinary.logic.StdUtil;
    import org.allbinary.logic.util.event.AllBinaryEventObject;
    import org.allbinary.logic.util.event.EventListenerInterface;
    import org.allbinary.logic.util.event.EventStrings;
    import org.allbinary.logic.util.event.handler.BasicEventHandler;
    import org.allbinary.util.ABHashtable;
    import org.allbinary.util.BasicArrayList;
    import org.allbinary.util.BasicArrayListD;

    public class TerrainEventHandler extends BasicEventHandler {
    private static var hashtable_value:ABHashtable;
    private static var hashtable_set:Boolean = false;
    private static function get hashtable():ABHashtable {
        if (!TerrainEventHandler.hashtable_set) {
            TerrainEventHandler.hashtable_set = true;
            TerrainEventHandler.hashtable_value = StdUtil.getInstance().NULL_TABLE;
        }
        return TerrainEventHandler.hashtable_value;
    }
        private var list:BasicArrayList = null;

        // Java field initializers run after the base constructor
        private function initFieldsTerrainEventHandler():void {
    this.list = new BasicArrayListD();
        }
    

    public static function init():void {
        TerrainEventHandler.hashtable = StdUtil.getInstance().createHashtable();
    }
    

    public static function getInstance1(anyType:Object):TerrainEventHandler {
        var eventHandlerCanBeNull:Object = TerrainEventHandler.hashtable.get_(anyType);
        if (eventHandlerCanBeNull == null) {
            eventHandlerCanBeNull = new TerrainEventHandler();
            TerrainEventHandler.hashtable.put(anyType, eventHandlerCanBeNull);
        }
        return (eventHandlerCanBeNull as TerrainEventHandler);
    }
    

    public function TerrainEventHandler() {
        super();
        this.initFieldsTerrainEventHandler();
    }
    

    public function addListener(terrainEventListener:TerrainEventListener):void {
        if (!this.list.contains(terrainEventListener)) {
            this.list.add(terrainEventListener);
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
                var terrainEventListener:TerrainEventListener = (this.list.get_(index) as TerrainEventListener);
                terrainEventListener.onTerrainEvent((eventObject as TerrainEvent));
            } catch (e:*) {
                this.logUtil.put(this.commonStrings.EXCEPTION, this, EventStrings.getInstance().FIRE_EVENT, e);
            }
        }
        super.fireEvent(eventObject);
    }
    

    override public function process(eventObject:AllBinaryEventObject, eventListenerInterface:EventListenerInterface):void {
        var terrainEventListenerInterface:TerrainEventListenerInterface = (eventListenerInterface as TerrainEventListenerInterface);
        terrainEventListenerInterface.onTerrainEvent((eventObject as TerrainEvent));
    }
    }
}

