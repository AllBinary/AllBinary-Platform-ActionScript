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
package org.allbinary.game.health {
    import org.allbinary.animation.Animation;
    import org.allbinary.game.graphics.hud.BasicHudFactory;
    import org.allbinary.graphics.color.BasicColorFactory;
    import org.allbinary.layer.AllBinaryLayer;

    public class HealthBarAnimation extends Animation {
        private var basicColorFactory:BasicColorFactory = null;
        public var x2:int = 0;
        public var thickness:int = 0;
        private var location:int = 0;
        public var allbinaryLayer:AllBinaryLayer = null;

        // Java field initializers run after the base constructor
        private function initFieldsHealthBarAnimation():void {
    this.basicColorFactory = BasicColorFactory.getInstance();
    this.x2 = 0;
    this.thickness = 0;
    
    
        }
    

    public function HealthBarAnimation(layerInterface:AllBinaryLayer, location:int) {
        super();
        this.initFieldsHealthBarAnimation();
        this.allbinaryLayer = layerInterface;
        this.location = location;
        var basicHudFactory:BasicHudFactory = BasicHudFactory.getInstance();
        if (this.location != basicHudFactory.TOPLEFT && this.location != basicHudFactory.BOTTOMLEFT) {
            throw new JException("Exception", "Location Not Valid");
        }
        if (layerInterface.getWidth() > 40) {
            this.thickness = 3;
        } else if (layerInterface.getWidth() > 20) {
            this.thickness = 2;
        } else {
            this.thickness = 1;
        }
    }
    

    public function onHealthChange(newX2:int):void {
        this.x2 = newX2;
        var quarter:int = (this.allbinaryLayer.getWidth() >> 2);
        if (this.x2 > int(quarter * 3)) {
            this.basicColor = this.basicColorFactory.GREEN;
            this.colorP = this.basicColor.intValue();
        } else if (this.x2 > int(quarter * 2)) {
            this.basicColor = this.basicColorFactory.YELLOW;
            this.colorP = this.basicColor.intValue();
        } else if (this.x2 > quarter) {
            this.basicColor = this.basicColorFactory.ORANGE;
            this.colorP = this.basicColor.intValue();
        } else {
            this.basicColor = this.basicColorFactory.RED;
            this.colorP = this.basicColor.intValue();
        }
    }
    

    public function getY():int {
        var basicHudFactory:BasicHudFactory = BasicHudFactory.getInstance();
        if (this.location == basicHudFactory.TOPLEFT) {
            return this.allbinaryLayer.getViewPosition().getY() - 4;
        } else if (this.location == basicHudFactory.BOTTOMLEFT) {
            return int(this.allbinaryLayer.getViewPosition().getY2() + 4);
        }
        return -1;
    }
    }
}

