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
package org.allbinary.layer {
    import org.allbinary.layer.event.LayerManagerEvent;
    import org.allbinary.layer.event.LayerManagerEventHandler;

    public class AllBinaryLayerManager extends LayerManager {
        private var layerManagerEventHandler:LayerManagerEventHandler = null;
        private var createLayerManagerEvent:LayerManagerEvent = null;
        private var deleteLayerManagerEvent:LayerManagerEvent = null;
        private var basicLayerProcessorArray:Vector.<LayerProcessor> = null;

        // Java field initializers run after the base constructor
        private function initFieldsAllBinaryLayerManager():void {
    this.layerManagerEventHandler = LayerManagerEventHandler.getInstance();
    this.createLayerManagerEvent = new LayerManagerEvent(this, this.layerManagerEventHandler.CREATE);
    this.deleteLayerManagerEvent = new LayerManagerEvent(this, this.layerManagerEventHandler.DELETE);
    this.basicLayerProcessorArray = new Vector.<LayerProcessor>(0);
        }
    

    public function AllBinaryLayerManager() {
        super(LayerManagerNoDebug.getInstance());
        this.initFieldsAllBinaryLayerManager();
    }
    

    public function getLayerProcessorArray():Vector.<LayerProcessor> {
        return this.basicLayerProcessorArray;
    }
    

    public function setLayerProcessorArray(layerProcessorArray:Vector.<LayerProcessor>):void {
        this.basicLayerProcessorArray = layerProcessorArray;
    }
    

    public function log():void {
        var size:int = this.basicLayerProcessorArray.length;
        for (var index:int = 0; index < size; index++) {
            var layerProcessorInterface:LayerProcessor = this.basicLayerProcessorArray[index];
        }
    }
    

    override public function append(layerInterface:AllBinaryLayer):void {
        if (!this.contains(layerInterface)) {
            this.appendProcessors(layerInterface);
            super.append(layerInterface);
        }
    }
    

    override public function appendAt(layerInterface:AllBinaryLayer, index:int):void {
        if (!this.contains(layerInterface)) {
            this.appendProcessors(layerInterface);
            super.appendAt(layerInterface, index);
        }
    }
    

    private function appendProcessors(layerInterface:AllBinaryLayer):void {
        this.createLayerManagerEvent.setLayerInterface(layerInterface);
        this.layerManagerEventHandler.fireEvent(this.createLayerManagerEvent);
        var layerProcessorInterface:LayerProcessor = null;
        for (var index:int = this.basicLayerProcessorArray.length; --index >= 0; ) {
            layerProcessorInterface = this.basicLayerProcessorArray[index];
            if (layerProcessorInterface.isProcessorLayer(layerInterface)) {
                layerProcessorInterface.getLayerManager().append(layerInterface);
            }
        }
    }
    

    override public function remove(layerInterface:AllBinaryLayer):void {
        this.deleteLayerManagerEvent.setLayerInterface(layerInterface);
        this.layerManagerEventHandler.fireDeleteEvent(this.deleteLayerManagerEvent);
        var layerProcessorInterface:LayerProcessor = null;
        for (var index:int = this.basicLayerProcessorArray.length; --index >= 0; ) {
            layerProcessorInterface = this.basicLayerProcessorArray[index];
            layerProcessorInterface.getLayerManager().remove(layerInterface);
        }
        super.remove(layerInterface);
    }
    

    public function process():void {
        var layerProcessorInterface:LayerProcessor = null;
        var size:int = this.basicLayerProcessorArray.length;
        for (var index:int = 0; index < size; index++) {
            layerProcessorInterface = this.basicLayerProcessorArray[index];
            layerProcessorInterface.process(this);
        }
    }
    

    override public function cleanup():void {
        var layerProcessorInterface:LayerProcessor = null;
        var size:int = this.basicLayerProcessorArray.length;
        for (var index:int = 0; index < size; index++) {
            layerProcessorInterface = this.basicLayerProcessorArray[index];
            layerProcessorInterface.getLayerManager().cleanup();
        }
        super.cleanup();
    }
    }
}

