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
package org.allbinary.layer.event {
    import org.allbinary.layer.AllBinaryLayer;
    import org.allbinary.layer.LayerManager;
    import org.allbinary.logic.string.StringMaker;
    import org.allbinary.logic.util.event.AllBinaryEventObject;

    public class LayerManagerEvent extends AllBinaryEventObject {
        private var layerInterface:AllBinaryLayer = null;
        private var crud:String = null;

        // Java field initializers run after the base constructor
        private function initFieldsLayerManagerEvent():void {
    this.layerInterface = AllBinaryLayer.NULL_ALLBINARY_LAYER;
    
        }
    

    public function LayerManagerEvent(layerManager:LayerManager, crud:String) {
        super(layerManager);
        this.initFieldsLayerManagerEvent();
        this.crud = crud;
    }
    

    public function getLayerInterface():AllBinaryLayer {
        return this.layerInterface;
    }
    

    public function setLayerInterface(layerInterface:AllBinaryLayer):void {
        this.layerInterface = layerInterface;
    }
    

    public function toString():String {
        var stringBuffer:StringMaker = new StringMaker();
        stringBuffer.append("LayerManagerEvent: \n");
        stringBuffer.append("LayerInterface: ");
        stringBuffer.append(this.getLayerInterface().toString());
        stringBuffer.append("\nCRUD: ");
        stringBuffer.append(this.crud);
        return stringBuffer.toString();
    }
    }
}

