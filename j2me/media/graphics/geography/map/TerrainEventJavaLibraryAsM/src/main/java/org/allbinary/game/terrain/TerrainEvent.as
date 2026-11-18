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
    import org.allbinary.logic.string.StringMaker;
    import org.allbinary.logic.util.event.AllBinaryEventObject;

    public class TerrainEvent extends AllBinaryEventObject {
        private var basicTerrainInfo:BasicTerrainInfo = null;

        // Java field initializers run after the base constructor
        private function initFieldsTerrainEvent():void {
    this.basicTerrainInfo = BasicTerrainInfo.NULL_BASIC_TERRAIN_INFO;
        }
    

    public function TerrainEvent(basicTerrainInfo:Object) {
        super(basicTerrainInfo);
        this.initFieldsTerrainEvent();
        this.setBasicTerrainInfo(this.basicTerrainInfo);
    }
    

    public function toString():String {
        var stringBuffer:StringMaker = new StringMaker();
        stringBuffer.append("TerrainEvent: \n");
        stringBuffer.append("LayerInterface: ");
        stringBuffer.append(this.basicTerrainInfo.toString());
        return stringBuffer.toString();
    }
    

    public function getBasicTerrainInfo():BasicTerrainInfo {
        return this.basicTerrainInfo;
    }
    

    public function setBasicTerrainInfo(basicTerrainInfo:BasicTerrainInfo):void {
        this.basicTerrainInfo = basicTerrainInfo;
    }
    

    public function setBasicTerrainInfoForCircularStaticPool(basicTerrainInfo:BasicTerrainInfo):void {
        this.basicTerrainInfo = basicTerrainInfo;
    }
    }
}

