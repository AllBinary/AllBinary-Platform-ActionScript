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
package org.allbinary.game.ag.ai.scroller {
    import org.allbinary.game.input.GameInput;
    import org.allbinary.game.rand.MyRandomFactory;
    import org.allbinary.layer.AllBinaryLayer;
    import org.allbinary.layer.AllBinaryLayerManager;
    import org.allbinary.util.ABHashtable;

    public class RandomPatrolAI extends BasePatrolAI {
        private var changedDirection:Boolean = false;

        // Java field initializers run after the base constructor
        private function initFieldsRandomPatrolAI():void {
    this.changedDirection = true;
        }
    

    public function RandomPatrolAI(hashtable:ABHashtable, ownerLayerInterface:AllBinaryLayer, gameInput:GameInput) {
        super(hashtable, ownerLayerInterface, gameInput);
        this.initFieldsRandomPatrolAI();
        this.updateRandomDistance();
    }
    

    private function updateRandomDistance():void {
        this.currentDistance = MyRandomFactory.getInstance().getAbsoluteNextInt(this.maxDistance.intValue());
    }
    

    override public function processAI(allBinaryLayerManager:AllBinaryLayerManager):void {
        super.update();
        super.processKeyAI(this.keyDirection);
        if (this.changedDirection) {
            super.processKeyAI(Canvas.KEY_NUM1);
            this.updateRandomDistance();
            this.changedDirection = false;
        }
    }
    

    override public function nextDirection():void {
        super.nextDirection();
        this.changedDirection = true;
    }
    }
}

