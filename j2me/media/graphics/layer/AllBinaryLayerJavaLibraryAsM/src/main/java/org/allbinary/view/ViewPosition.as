/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2025 AllBinary 
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
package org.allbinary.view {
    import org.allbinary.layer.AllBinaryLayer;

    public class ViewPosition extends ViewPositionBase {
        private var allbinaryLayer:AllBinaryLayer = null;

        // Java field initializers run after the base constructor
        private function initFieldsViewPosition():void {
    this.allbinaryLayer = AllBinaryLayer.NULL_ALLBINARY_LAYER;
        }
    

    public static function getInstanceD():ViewPosition {
        return new ViewPosition(0, 0, 0);
    }
    

    public function ViewPosition(x:int, y:int, z:int) {
        super(x, y, z);
        this.initFieldsViewPosition();
    }
    

    override public function getX():int {
        return this.allbinaryLayer.getXP();
    }
    

    override public function getY():int {
        return this.allbinaryLayer.getYP();
    }
    

    override public function getZ():int {
        return this.allbinaryLayer.getZP();
    }
    

    override public function getX2():int {
        return int(this.getX() + this.allbinaryLayer.getWidth());
    }
    

    override public function getY2():int {
        return int(this.getY() + this.allbinaryLayer.getHeight());
    }
    

    override public function getZ2():int {
        return int((Number(this.getZ()) + this.allbinaryLayer.getDepth()));
    }
    

    override public function setAllbinaryLayer(allbinaryLayer:Object):void {
        this.allbinaryLayer = (allbinaryLayer as AllBinaryLayer);
    }
    }
}

