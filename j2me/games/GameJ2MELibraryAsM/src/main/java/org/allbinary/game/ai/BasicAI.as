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
package org.allbinary.game.ai {
    import org.allbinary.ai.ArtificialIntelligence;
    import org.allbinary.game.displayable.canvas.CanvasUtil;
    import org.allbinary.game.input.GameInput;
    import org.allbinary.game.input.GameKeyEventSourceInterface;
    import org.allbinary.game.input.event.GameKeyEventFactory;
    import org.allbinary.layer.AllBinaryLayer;
    import org.allbinary.layer.AllBinaryLayerManager;
    import org.allbinary.logic.communication.log.LogUtil;
    import org.allbinary.logic.math.SmallIntegerSingletonFactory;
    import org.allbinary.logic.string.StringMaker;
    import org.allbinary.string.CommonSeps;
    import org.allbinary.string.CommonStrings;
    import java.lang.JInteger;

    public class BasicAI extends ArtificialIntelligence implements GameKeyEventSourceInterface {
    private static var AI_VISITOR_value:*;
    private static var AI_VISITOR_set:Boolean = false;
    public static function get AI_VISITOR():* {
        if (!BasicAI.AI_VISITOR_set) {
            BasicAI.AI_VISITOR_set = true;
            BasicAI.AI_VISITOR_value = SmallIntegerSingletonFactory.getInstance().getAt(2);
        }
        return BasicAI.AI_VISITOR_value;
    }
    private static var ID_value:*;
    private static var ID_set:Boolean = false;
    public static function get ID():* {
        if (!BasicAI.ID_set) {
            BasicAI.ID_set = true;
            BasicAI.ID_value = SmallIntegerSingletonFactory.getInstance().getAt(1);
        }
        return BasicAI.ID_value;
    }
        public var logUtil:LogUtil = null;
        public var commonStrings:CommonStrings = null;
        public var gameKeyEventFactory:GameKeyEventFactory = null;
        private var ownerLayerInterface:AllBinaryLayer = null;
        private var gameInput:GameInput = null;
        private var lastKey:int = 0;

        // Java field initializers run after the base constructor
        private function initFieldsBasicAI():void {
    this.logUtil = LogUtil.getInstance();
    this.commonStrings = CommonStrings.getInstance();
    this.gameKeyEventFactory = GameKeyEventFactory.getInstance();
    
    
    this.lastKey = -1;
        }
    

    public function BasicAI(ownerLayerInterface:AllBinaryLayer, gameInput:GameInput) {
        super();
        this.initFieldsBasicAI();
        this.ownerLayerInterface = ownerLayerInterface;
        this.gameInput = gameInput;
    }
    

    override public function processAI(allBinaryLayerManager:AllBinaryLayerManager):void {
        throw new JException("Exception", this.commonStrings.NOT_IMPLEMENTED);
    }
    

    public function processKeyAI(key:int):void {
        if (key != -1) {
            this.gameInput.add(this.gameKeyEventFactory.getInstanceForKey(this, key));
        }
    }
    

    public function setLastKey(lastKey:int):void {
        this.lastKey = lastKey;
    }
    

    public function getLastKey():int {
        return this.lastKey;
    }
    

    public function getOwnerLayerInterface():AllBinaryLayer {
        return this.ownerLayerInterface;
    }
    

    public function getGameInput():GameInput {
        return this.gameInput;
    }
    

    public function getName():String {
        return JSystem.className(this);
    }
    

    public function toString():String {
        var stringBuffer:StringMaker = new StringMaker();
        stringBuffer.append(CommonSeps.getInstance().NEW_LINE);
        stringBuffer.append(this.getName());
        stringBuffer.append(" LastKey: ");
        stringBuffer.append(CanvasUtil.getKeyName(this.getLastKey()));
        return stringBuffer.toString();
    }
    

    public function getSourceId():int {
        return 1;
    }
    }
}

