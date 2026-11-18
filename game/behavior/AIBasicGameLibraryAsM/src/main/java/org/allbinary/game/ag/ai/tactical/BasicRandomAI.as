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
package org.allbinary.game.ag.ai.tactical {
    import org.allbinary.game.ai.BasicAI;
    import org.allbinary.game.ag.ai.InputProbability;
    import org.allbinary.game.input.GameInput;
    import org.allbinary.game.rand.MyRandomFactory;
    import org.allbinary.layer.AllBinaryLayer;
    import org.allbinary.layer.AllBinaryLayerManager;
    import org.allbinary.logic.util.visitor.Visitor;
    import org.allbinary.time.GameTickTimeDelayHelperFactory;
    import java.lang.JInteger;

    public class BasicRandomAI extends BasicAI {
        private var i_random:int = 0;
        private var inputProbability:InputProbability = null;
        private var visitor:Visitor = null;
        private var keyArray:Vector.<int> = null;
        private var myRandomFactory:MyRandomFactory = null;

        // Java field initializers run after the base constructor
        private function initFieldsBasicRandomAI():void {
    this.i_random = 0;
    
    
    this.keyArray = new <int>[Canvas.UP, Canvas.DOWN, Canvas.LEFT, Canvas.RIGHT, Canvas.KEY_NUM1, Canvas.KEY_NUM7, Canvas.KEY_NUM9];
    this.myRandomFactory = MyRandomFactory.getInstance();
        }
    

    public function BasicRandomAI(ownerLayerInterface:AllBinaryLayer, gameInput:GameInput, inputProbability:InputProbability, visitor:Visitor) {
        super(ownerLayerInterface, gameInput);
        this.initFieldsBasicRandomAI();
        this.inputProbability = inputProbability;
        this.visitor = visitor;
    }
    

    override public function processAI(allBinaryLayerManager:AllBinaryLayerManager):void {
        if (this.inputProbability.getTimeDelayHelper().isTime(GameTickTimeDelayHelperFactory.getInstance().startTime)) {
            this.i_random = this.myRandomFactory.getAbsoluteNextInt(this.inputProbability.getMax());
            var repeat:Boolean = false;
            var repeatLikelyhoodIntegerArray:Vector.<*> = this.inputProbability.getRepeatLikelyhoodIntegerArray();
            if (this.getLastKey() != -1 && repeatLikelyhoodIntegerArray[this.getLastKey()].intValue() >= this.i_random) {
                repeat = true;
            }
            if (!repeat) {
                var likelyhoodIntegerArray:Vector.<Vector.<*>> = this.inputProbability.getLikelyhoodIntegerArray();
                this.i_random = this.myRandomFactory.getAbsoluteNextInt(this.inputProbability.getMax());
                var size:int = this.keyArray.length;
                var likelyhoodIntegerKeyArray:Vector.<*> = null;
                for (var index:int = 0; index < size; index++) {
                    var key:int = this.keyArray[index];
                    likelyhoodIntegerKeyArray = likelyhoodIntegerArray[key];
                    if (likelyhoodIntegerArray.length >= key && likelyhoodIntegerKeyArray[0] != null) {
                        if (this.i_random >= likelyhoodIntegerKeyArray[0].intValue() && this.i_random < likelyhoodIntegerKeyArray[1].intValue()) {
                            this.setLastKey(key);
                            break;
                        }
                    }
                }
            }
            this.visitor.visit(this);
        }
    }
    }
}

