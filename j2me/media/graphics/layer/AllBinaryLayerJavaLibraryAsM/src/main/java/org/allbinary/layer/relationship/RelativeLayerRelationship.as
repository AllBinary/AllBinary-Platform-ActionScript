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
package org.allbinary.layer.relationship {
    import org.allbinary.graphics.GPoint;
    import org.allbinary.graphics.RelativeRelationship;
    import org.allbinary.layer.AllBinaryLayer;
    import org.allbinary.util.BasicArrayList;

    public class RelativeLayerRelationship extends RelativeRelationship {
        private var layer:AllBinaryLayer = null;

        // Java field initializers run after the base constructor
        private function initFieldsRelativeLayerRelationship():void {
    this.layer = AllBinaryLayer.NULL_ALLBINARY_LAYER;
        }
    

    public function RelativeLayerRelationship(layer:AllBinaryLayer, point:GPoint, typesAllowedList:BasicArrayList) {
        super(point, typesAllowedList);
        this.initFieldsRelativeLayerRelationship();
        this.layer = layer;
    }
    

    override public function getX():int {
        return this.layer.getXP() + super.getX();
    }
    

    override public function getY():int {
        return this.layer.getYP() + super.getY();
    }
    

    override public function getZ():int {
        return this.layer.getZP() + super.getZ();
    }
    }
}

