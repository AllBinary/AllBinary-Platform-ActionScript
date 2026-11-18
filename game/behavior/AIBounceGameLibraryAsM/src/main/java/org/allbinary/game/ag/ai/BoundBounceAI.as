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
package org.allbinary.game.ag.ai {
    import org.allbinary.bounds.BoundsVisitorInterface;
    import org.allbinary.bounds.LayerBounds;
    import org.allbinary.game.ai.BasicAI;
    import org.allbinary.game.input.GameInput;
    import org.allbinary.graphics.Rectangle;
    import org.allbinary.layer.AllBinaryLayer;
    import org.allbinary.layer.AllBinaryLayerManager;

    public class BoundBounceAI extends BasicAI {
        public var currentRelativeAngle:int = 0;
        private var layerBounds:LayerBounds = null;
        private var boundsVisitorInterface:BoundsVisitorInterface = null;

        // Java field initializers run after the base constructor
        private function initFieldsBoundBounceAI():void {
    this.currentRelativeAngle = 0;
    
    
        }
    

    public function BoundBounceAI(ownerLayerInterface:AllBinaryLayer, gameInput:GameInput, layerBounds:LayerBounds, boundsVisitorInterface:BoundsVisitorInterface) {
        super(ownerLayerInterface, gameInput);
        this.initFieldsBoundBounceAI();
        this.layerBounds = layerBounds;
        this.boundsVisitorInterface = boundsVisitorInterface;
    }
    

    public function paint(graphics:Graphics):void {
        var rectange:Rectangle = this.layerBounds.getRectangleP();
        graphics.drawRect(rectange.getPoint().getX(), rectange.getPoint().getY(), rectange.getWidth(), rectange.getHeight());
    }
    

    override public function processAI(allBinaryLayerManager:AllBinaryLayerManager):void {
        this.layerBounds.visit(this.boundsVisitorInterface);
    }
    }
}

