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
package org.allbinary.game.combat.destroy {
    import org.allbinary.game.layer.CollidableCompositeLayer;

    public class DestroyableSimpleBehavior extends DestroyableBaseBehavior {
        public var ownerLayer:CollidableCompositeLayer = null;
        private var destroyed:Boolean = false;

        // Java field initializers run after the base constructor
        private function initFieldsDestroyableSimpleBehavior():void {
    
    this.destroyed = false;
        }
    

    public function DestroyableSimpleBehavior(ownerLayer:CollidableCompositeLayer) {
        super();
        this.initFieldsDestroyableSimpleBehavior();
        this.ownerLayer = ownerLayer;
    }
    

    override public function isDestroyed():Boolean {
        return this.destroyed;
    }
    

    override public function setDestroyed(destroyed:Boolean):void {
        this.destroyed = destroyed;
        if (this.isDestroyed()) {
            DestroyedLayerProcessor.getInstance().add(this.ownerLayer);
        }
    }
    }
}

