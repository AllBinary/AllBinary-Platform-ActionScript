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
    import org.allbinary.ai.ArtificialIntelligenceInterface;
    import org.allbinary.game.input.GameInput;
    import org.allbinary.layer.AllBinaryLayer;
    import org.allbinary.logic.communication.log.LogUtil;
    import org.allbinary.logic.string.StringMaker;
    import org.allbinary.string.CommonStrings;
    import org.allbinary.util.ABHashtable;
    import org.allbinary.util.BasicArrayList;
    import org.allbinary.util.BasicArrayListD;
    import java.lang.JInteger;

    public class NumberOnOwnGroupSequenceAIFactory {
        public var logUtil:LogUtil = null;

        // Java field initializers run after the base constructor
        private function initFieldsNumberOnOwnGroupSequenceAIFactory():void {
    this.logUtil = LogUtil.getInstance();
        }

        public function NumberOnOwnGroupSequenceAIFactory() {
            super();
            this.initFieldsNumberOnOwnGroupSequenceAIFactory();
        }
    

    public function getInstance4(hashtable:ABHashtable, artificialIntelligenceInterface:Vector.<ArtificialIntelligenceInterface>, ownerLayerInterface:AllBinaryLayer, gameInput:GameInput):ArtificialIntelligenceInterface {
        var integerArray:Vector.<*> = NumberInSameGroupSequence.getInstance().NUMBER_ON_SAME_TEAM_SEQUENCE;
        var list:BasicArrayList = new BasicArrayListD();
        for (var index:int = 0; index < integerArray.length; index++) {
            var integerCanBeNull:Object = hashtable.get_((integerArray[index] as Object));
            if (integerCanBeNull == null) {
                break;
            }
            list.add(integerCanBeNull);
        }
        var stringBuffer:StringMaker = new StringMaker();
        stringBuffer.append("Total AI Properties: ");
        stringBuffer.appendint(list.size());
        stringBuffer.append(" == Total AI: ");
        stringBuffer.appendint(artificialIntelligenceInterface.length);
        stringBuffer.append(" + 1");
        var commonStrings:CommonStrings = CommonStrings.getInstance();
        this.logUtil.putF(stringBuffer.toString(), this, commonStrings.GET_INSTANCE);
        if (int(artificialIntelligenceInterface.length - 1) > list.size()) {
            throw new JException("Exception", "Not enough AI properties.");
        }
        if (int(artificialIntelligenceInterface.length - 1) < list.size()) {
            throw new JException("Exception", "Too Many AI properties.");
        }
        var numberOnSameTeam:Vector.<*> = new Vector.<*>(list.size());
        for (index = 0; index < numberOnSameTeam.length; index++) {
            numberOnSameTeam[index] = (list.objectArray[index] as *);
        }
        return new NumberOnOwnGroupSequenceAI(numberOnSameTeam, artificialIntelligenceInterface, ownerLayerInterface, gameInput);
    }
    }
}

