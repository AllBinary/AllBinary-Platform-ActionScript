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
    import javax.microedition.lcdui.Canvas;
    import org.allbinary.game.ai.BasicAI;
    import org.allbinary.game.input.GameInput;
    import org.allbinary.layer.AllBinaryLayer;
    import org.allbinary.layer.AllBinaryLayerManager;

    public class SpinnerAI extends BasicAI {
        private var isEven:Boolean = false;
        private var direction:Vector.<int> = null;

        // Java field initializers run after the base constructor
        private function initFieldsSpinnerAI():void {
    this.isEven = false;
    
        }
    

    public function SpinnerAI(direction:Vector.<int>, ownerLayerInterface:AllBinaryLayer, gameInput:GameInput) {
        super(ownerLayerInterface, gameInput);
        this.initFieldsSpinnerAI();
        this.direction = direction;
    }
    

    override public function processAI(allBinaryLayerManager:AllBinaryLayerManager):void {
        if (this.isEven) {
            super.processKeyAI(this.direction[0]);
            this.isEven = false;
        } else {
            super.processKeyAI(Canvas.KEY_NUM1);
            this.isEven = true;
        }
    }
    }
}

